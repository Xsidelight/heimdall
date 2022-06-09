# Heimdall

## Definition 

A simple application for testing endpoints. Currently it is possible to test 5 HTTP methods: GET, POST, PUT, PATCH and DELETE.

## Usage 

To use Heimdall: 

- Open repository in terminal and enter `dart run`

- To perform `GET` request: 

```Terminal

 heimdall GET {url}

```

 - For the `POST`, `PUT`, `PATCH` requests you need to add JSON data to it without spaces:

```Terminal

 heimdall POST https://jsonplaceholder.typicode.com/posts {"id":1,"title":"foo","body":"bar","userId":1}  

 heimdall PUT https://jsonplaceholder.typicode.com/posts/1 {"id":1,"title":"goo","body":"par","userId":1}  

 heimdall PATCH https://jsonplaceholder.typicode.com/posts/1 {"title":"goo",}  

 ```

 - For the `DELETE` data parameter is optional:


 ```Terminal

 heimdall DELETE {url}

```

Examples use: [{JSON} Placeholder](https://jsonplaceholder.typicode.com/)