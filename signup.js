

var http = require('http');
var fs = require('fs');
var url = require('url');
var mysql = require('mysql2');
const connect_js= require('./connect_js');
const { start } = require('repl');
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "sql_store"
});

con.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

http.createServer(function (req, res) {
  var q = url.parse(req.url, true);

  if (req.method === 'GET' && q.pathname =='/signup') {
   
    res.writeHead(200, { 'Content-type': 'text/html' });
    fs.readFile("./signup.txt", function (err, data) {
      if (err) {
        res.writeHead(404, { 'Content-Type': 'text/html' });
        return res.end("404 Not Found");
      }
      res.write(data);
      res.end();
    });
  } else if (req.method === 'POST' && q.pathname === '/submit') {
    // Handle form submission and save data to the database
    let data = '';
    req.on('data', (chunk) => {
      data += chunk;
    });

    req.on('end', () => {
      const formData = new URLSearchParams(data);
      
      const username = formData.get('username');
      const password = formData.get('password');
      const first_name = formData.get('first_name');
      const last_name = formData.get('last_name');
      const email = formData.get('email');
      

      const sql2 = "INSERT INTO users (username, password, first_name, last_name, email, administration) VALUES (?, ?, ?, ?, ?, 'User')";
      con.query(sql2, [ username, password, first_name, last_name, email], function (err, result) {
        if (err) {
          console.log("Error saving data to the database:", err);
          res.writeHead(500, { 'Content-Type': 'text/plain' });
          res.end('Internal Server Error');
        } else {
          console.log("Added to the Database ");
          // Redirect to the response page with the submitted data
          // Redirect to the response page with the submitted data
          res.writeHead(200, { 'Content-type': 'text/html' });
          fs.readFile("./LSresponse.html", function (err, data) {
          if (err) {
          res.writeHead(404, { 'Content-Type': 'text/html' });
          return res.end("404 Not Found");
      }
      res.write(data);
      con.query("SELECT * FROM users", function (err, result) {

        if (err) throw err;

        else{

             console.log(result);
             if (result){
              for (var i of result){
              res.write("Username: " + i.username +
                  "<br>Password: " + i.password + "<br>Email: " + i.email + 
                  "<br>First Name: " + i.first_name + "<br>Last Name: " + i.last_name + "<br>");
              };
          };

        }  



    });
      // res.end();
    });

        }
      });
    });
  } else {
    res.writeHead(404, { 'Content-Type': 'text/plain' });
    res.end();
  }
}).listen(8003);


