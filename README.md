# LIBRARY API DOCUMENTATION

Welcome to the Library API! This API provides a suite of endpoints that allow you to manage and interact with the library's data securely and efficiently. With the Library API, you can perform various operations on library resources, such as adding, updating, deleting, and retrieving information on authors, books, book titles, and more.


## Key Features
-Secure Access: To ensure the privacy and security of your data, each request to the API requires authentication. Our token-based authentication system issues a unique token upon login, which is used to validate each subsequent request. After the user logs in, they will receive a token which must be included in the header of every request to access the API. This token is validated on each request to ensure that the user is authorized. Additionally, a new token will be issued with every request, and the user should use the most recent token for all subsequent API calls to maintain secure access.
  
- CRUD Operations: The API supports full Create, Read, Update, and Delete (CRUD) functionality for managing library resources.
  
- Modular Endpoints: Endpoints are structured to support fine-grained control over different aspects of the library, including authors, titles, and books.


## Table of Contents
- [Endpoints](#endpoints)
  - [User Registration](#user-registration)
  - [User Authentication](#user-authentication)
  - [Author Management](#author-management)
    - [Create Author](#create-author)
    - [Get Authors](#get-authors)
    - [Update Author](#update-author)
    - [Delete Author](#delete-author)
  - [Book Management](#book-management)
    - [Add Book](#add-book)
    - [Get Books](#get-books)
    - [Update Book](#update-book)
    - [Delete Book](#delete-book)
  - [Book-Author Relations](#book-author-relations)
    - [Create Book-Author Relation](#create-book-author-relation)
    - [Get All Book-Author Relations](#get-all-book-author-relations)
    - [Delete Book-Author Relation](#delete-book-author-relation)
- [Authentication](#authentication)
- [Error Handling](#error-handling)

##### USER REGISTRATION
- Registers a new user by creating an account in the system.
#### URL: POST /user/register
####  Method: POST

### Payload
```bash
{
  "username": "your_username",
  "password": "your_password"
}
```
### Response
### SUCCESS
```bash
{
  "status": "success",
  "access_token": null,
  "data": null
}
```
### FAILURE
```bash
{
  "status": "fail",
  "access_token": null,
  "data": {
    "title": "Error message"
  }
}
```

##### USER Authentication
- Authenticates a user by verifying their credentials and provides an access token if successful.
#### URL: POST /user/auth
####  Method: POST

### Payload
```bash
{
  "username": "your_username",
  "password": "your_password"
}
```
### Response
### SUCCESS
```bash
{
  "status": "success",
  "access_token": "your_token",
  "data": null
}
```
### FAILURE
```bash
{
  "status": "fail",
  "access_token": null,
  "data": {
    "title": "Authentication Failed"
  }
}
```
## AUTHOR MANAGEMENT
- These endpoints allow managing authors within the library system.

#### Create Author
- Adds a new author to the library system.
#### URL: POST /authors
####  Method: POST

### Payload
```bash
{
  "name": "your_username,
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success",
  "access_token": "your_newtoken"
}
```
#### Get Authors
- Retrieves a list of all authors in the library system.
#### URL: Get /authors/get
####  Method: GET

### Payload
```bash
{
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success",
  "data": [
    {
      "authorid": "3",
      "name": "America"
      "access_token": "your_newtoken"
    }
  ]
}
```
#### Update Author
- Updates the information of an existing author.
#### URL: PUT /authors/update/{id}
####  Method: PUT

### Payload
```bash
{
  "name": "author_newname",
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
#### Delete Author
- Deletes an author from the library system based on their ID.
#### URL: DELETE /authors/delete/{id}
####  Method: DELETE

### Payload
```bash
{
  "token": "your_token"
}

```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
## BOOK MANAGEMENT
- These endpoints allow managing books within the library system.

#### Add Book
- Adds a new book to the library system.
#### URL: POST /books
####  Method: POST
### Payload
```bash
{
  "title": "book_title",
  "author_id": "4",
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
#### Get Books
- Retrieves a list of all books in the library system.
#### URL: GET /books
####  Method: GET
### Payload
```bash
{
  "title": "book_title",
  "author_id": "4",
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
#### Update Book
- Updates the information of an existing book.
#### URL: PUT /books/{id}
####  Method: PUT
### Payload
```bash
{
  "title": "new_booktitle",
  "author_id": "4",
  "token": "your_token"
}
}

```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
#### Delete Book
- Deletes a book from the library system based on its ID.
#### URL: DELETE /books/{id}
####  Method: DELETE
### Payload
```bash
{
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```

## BOOK AUTHOR RELATIONS
- These endpoints manage the relationships between books and authors in the library.
#### Create Book-Author Relation
- Adds a new relationship between a book and an author.
#### URL: POST /books_authors
####  Method: POST
### Payload
```bash
{
  "book_id": "7",
  "author_id": "4",
  "token": "your_token"
}

```
### Response
```bash
{
  "status": "success"
  "access_token": "your_newtoken"
}
```
#### Get All Book-Author Relations
- Retrieves a list of all book-author relationships
#### URL: GET /books_authors/get
####  Method: GET
### Payload
```bash
{
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success",
  "access_token": "your_newtoken",
  "data": [
    {
      "id": "11",
      "book_id": "7",
      "author_id": "4"
    }
  ]
}
```
#### Delete Book-Author Relation
- Removes a specified book-author relationship by its ID.
#### URL: DELETE /books_authors/delete/{id}
####  Method: DELETE
### Payload
```bash
{
  "token": "your_token"
}
```
### Response
```bash
{
  "status": "success",
  "access_token": "your_newtoken",
}
```

## AUTHENTICATION
- All secured endpoints require an access_token in the request header. Tokens are provided upon user authentication and must be included in the Authorization header as follows:
  Authorization: Bearer {access_token}

### ERROR HANDLING
If an error occurs, the response will have the following format:
```bash
{
  "status": "fail",
  "access_token": null,
  "data": {
    "title": "Error message"
  }
}
```

## CREATED BY:
JOSE ANGELO C. YARANON / BS INFOTECH 4C



