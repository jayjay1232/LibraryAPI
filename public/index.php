<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

require '../src/vendor/autoload.php';
$app = new \Slim\App;
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

// Function to generate a new access token
function generateAccessToken() {
    $key = 'server_hack';
    $iat = time();
    $accessExp = $iat + 3600; // 1 hour expiration
    $payload = [
        'iss' => 'http://library.org',
        'aud' => 'http://library.com',
        'iat' => $iat,
        'exp' => $accessExp,
    ];
    return JWT::encode($payload, $key, 'HS256');
}

// Register a new user
$app->post('/user/register', function (Request $request, Response $response) use ($servername, $username, $password, $dbname) {
    $data = json_decode($request->getBody());
    $uname = $data->username;
    $pass = $data->password;
    
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $hashedPassword = password_hash($pass, PASSWORD_BCRYPT);
        $sql = "INSERT INTO users (username, password) VALUES (:uname, :pass)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':uname' => $uname, ':pass' => $hashedPassword]);
        $response->getBody()->write(json_encode(["status" => "success", "access_token" => null, "data" => null]));
    } catch (PDOException $e) {
        $response->getBody()->write(json_encode(["status" => "fail", "access_token" => null, "data" => ["title" => $e->getMessage()]]));
    }

    $conn = null;
    return $response;
});

// Authenticate a user and generate access token
$app->post('/user/auth', function (Request $request, Response $response) use ($servername, $username, $password, $dbname) {
    $data = json_decode($request->getBody());
    $uname = $data->username;
    $pass = $data->password;

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT * FROM users WHERE username = :uname";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':uname' => $uname]);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $userData = $stmt->fetch();

        if ($userData && password_verify($pass, $userData['password'])) {
            $accessToken = generateAccessToken();
            storeToken($accessToken);

            $response->getBody()->write(json_encode([
                "status" => "success",
                "access_token" => $accessToken,
                "data" => null
            ]));
        } else {
            $response->getBody()->write(json_encode(["status" => "fail", "access_token" => null, "data" => ["title" => "Authentication Failed"]]));
        }
    } catch (PDOException $e) {
        $response->getBody()->write(json_encode(["status" => "fail", "access_token" => null, "data" => ["title" => $e->getMessage()]]));
    }

    $conn = null;
    return $response;
});

// Function to store tokens in the database
function storeToken($token) {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "INSERT INTO jwt_tokens (token, used, created_at) VALUES (:token, 0, NOW())";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':token' => $token]);
}

// Function to delete expired tokens
function deleteExpiredTokens() {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "DELETE FROM jwt_tokens WHERE created_at < NOW() - INTERVAL 1 DAY";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
}

// Validate token function
function validateToken($request, $response, $next) {
    deleteExpiredTokens();

    $data = json_decode($request->getBody(), true);
    if (!isset($data['token'])) {
        return $response->withStatus(401)->write(json_encode(["status" => "fail", "message" => "Token missing"]));
    }

    $token = $data['token'];
    $key = 'server_hack';

    try {
        $decoded = JWT::decode($token, new Key($key, 'HS256'));
        if ($decoded->exp < time()) {
            return $response->withStatus(401)->write(json_encode(["status" => "fail", "message" => "Token expired"]));
        }

        $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
        $sql = "SELECT used FROM jwt_tokens WHERE token = :token";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':token' => $token]);
        $tokenData = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$tokenData || $tokenData['used'] == 1) {
            return $response->withStatus(401)->write(json_encode(["status" => "fail", "message" => "Token already used or invalid"]));
        }
    } catch (Exception $e) {
        return $response->withStatus(401)->write(json_encode(["status" => "fail", "message" => "Unauthorized"]));
    }

    return $next($request, $response);
}

// Function to mark the token as used
function markTokenAsUsed($token) {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "UPDATE jwt_tokens SET used = 1 WHERE token = :token";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':token' => $token]);
}

// Function to respond with new access token
function respondWithNewAccessToken(Response $response) {
    $newAccessToken = generateAccessToken();
    storeToken($newAccessToken);
    return $response->withHeader('New-Access-Token', $newAccessToken);
}

// Author Endpoints
$app->post('/authors', function (Request $request, Response $response) {
    $data = json_decode($request->getBody(), true);
    $name = $data['name'];
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "INSERT INTO authors (name) VALUES (:name)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':name' => $name]);
    markTokenAsUsed($data['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success", "access_token" => $response->getHeader('New-Access-Token')[0]]));
    return $response;
})->add('validateToken');

$app->get('/authors/get', function (Request $request, Response $response) {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $stmt = $conn->query("SELECT * FROM authors");
    $authors = $stmt->fetchAll(PDO::FETCH_ASSOC);
    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success", "data" => $authors]));
    return $response;
})->add('validateToken');

$app->put('/authors/update/{id}', function (Request $request, Response $response, array $args) {
    $data = json_decode($request->getBody(), true);
    $id = $args['id'];
    $name = $data['name'];
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "UPDATE authors SET name = :name WHERE authorid = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':name' => $name, ':id' => $id]);
    markTokenAsUsed($data['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');

$app->delete('/authors/delete/{id}', function (Request $request, Response $response, array $args) {
    $id = $args['id'];
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "DELETE FROM authors WHERE authorid = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $id]);
    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');

// Add a new book
$app->post('/books', function (Request $request, Response $response) {
    $data = json_decode($request->getBody(), true);
    $title = $data['title'];
    $author_id = $data['author_id'];
    $isbn = $data['isbn'];
    $published_date = $data['published_date'];

    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "INSERT INTO books (title, author_id, isbn, published_date) VALUES (:title, :author_id, :isbn, :published_date)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':title' => $title, ':author_id' => $author_id, ':isbn' => $isbn, ':published_date' => $published_date]);

    markTokenAsUsed($data['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success", "access_token" => $response->getHeader('New-Access-Token')[0]]));
    return $response;
})->add('validateToken');

// Get all books
$app->get('/books', function (Request $request, Response $response) {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $stmt = $conn->query("SELECT * FROM books");
    $books = $stmt->fetchAll(PDO::FETCH_ASSOC);

    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success", "data" => $books]));
    return $response;
})->add('validateToken');

// Update a book
$app->put('/books/{id}', function (Request $request, Response $response, array $args) {
    $data = json_decode($request->getBody(), true);
    $id = $args['id'];
    $title = $data['title'];
    $author_id = $data['author_id'];
    $isbn = $data['isbn'];
    $published_date = $data['published_date'];

    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "UPDATE books SET title = :title, author_id = :author_id, isbn = :isbn, published_date = :published_date WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':title' => $title, ':author_id' => $author_id, ':isbn' => $isbn, ':published_date' => $published_date, ':id' => $id]);

    markTokenAsUsed($data['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');

// Delete a book
$app->delete('/books/{id}', function (Request $request, Response $response, array $args) {
    $id = $args['id'];

    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "DELETE FROM books WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $id]);

    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');

// Search for books by title or author
$app->get('/books/search', function (Request $request, Response $response) {
    $query = $request->getQueryParams()['q'];
    
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "SELECT books.*, authors.name AS author_name FROM books JOIN authors ON books.author_id = authors.authorid WHERE books.title LIKE :query OR authors.name LIKE :query";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':query' => "%$query%"]);
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success", "data" => $results]));
    return $response;
})->add('validateToken');

// User Management Endpoints

// Get user details
$app->get('/user/{id}', function (Request $request, Response $response, array $args) {
    $id = $args['id'];

    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "SELECT id, username FROM users WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $id]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        markTokenAsUsed($request->getParsedBody()['token']);
        $response = respondWithNewAccessToken($response);
        $response->getBody()->write(json_encode(["status" => "success", "data" => $user]));
    } else {
        $response->getBody()->write(json_encode(["status" => "fail", "data" => ["message" => "User not found"]]));
    }
    
    return $response;
})->add('validateToken');

// Update user information (only password in this example)
$app->put('/user/update/{id}', function (Request $request, Response $response, array $args) {
    $data = json_decode($request->getBody(), true);
    $id = $args['id'];
    $newPassword = $data['password'];

    $hashedPassword = password_hash($newPassword, PASSWORD_BCRYPT);
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "UPDATE users SET password = :password WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':password' => $hashedPassword, ':id' => $id]);

    markTokenAsUsed($data['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');

// Delete user account
$app->delete('/user/delete/{id}', function (Request $request, Response $response, array $args) {
    $id = $args['id'];

    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $sql = "DELETE FROM users WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $id]);

    markTokenAsUsed($request->getParsedBody()['token']);
    $response = respondWithNewAccessToken($response);
    $response->getBody()->write(json_encode(["status" => "success"]));
    return $response;
})->add('validateToken');


// Get All Book-Author Relations
$app->get('/books_authors/get', function (Request $request, Response $response) {
    $conn = new PDO("mysql:host=localhost;dbname=library", "root", "");
    $stmt = $conn->query("SELECT * FROM books_authors");
    $relations = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $response->getBody()->write(json_encode(["status" => "success", "data" => $relations]));
    return $response;
})->add('validateToken');


$app->run();
?>
