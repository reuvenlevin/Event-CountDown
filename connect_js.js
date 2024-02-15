const http = require('http');
const fs = require('fs');
const url = require('url');
const mysql = require('mysql');
const { exec } = require('child_process'); // Import the exec function

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

  if (req.method === 'GET' && q.pathname === '/signup') {
    res.writeHead(200, { 'Content-type': 'text/html' });

    // Execute header.php using PHP interpreter
    exec('php header.php', (error, headerOutput) => {
      if (error) {
        console.error(`Error executing PHP for header: ${error}`);
        return;
      }

      res.write(headerOutput); // Include header content

      fs.readFile("./signup.html", function (err, data) {
        if (err) {
          res.writeHead(404, { 'Content-Type': 'text/html' });
          return res.end("404 Not Found");
        }
        res.write(data);
        res.end();
      });
    });
  } else if (req.method === 'POST' && q.pathname === '/submit') {
    // ... Handling form submission ...

    // Execute footer.php using PHP interpreter
    exec('php footer.php', (error, footerOutput) => {
      if (error) {
        console.error(`Error executing PHP for footer: ${error}`);
        return;
      }

      // Handle form submission and save data to the database

      // Include footer content
      res.write(footerOutput);
      res.end();
    });
  } else {
    res.writeHead(404, { 'Content-Type': 'text/plain' });
    res.end();
  }
}).listen(8002);
