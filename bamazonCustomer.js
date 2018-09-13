//Requiring appropriate packages
var mysql = require("mysql");
var inquirer = require('inquirer');
var Table = require('cli-table');

//code to read and set any environment variables with the dotenv package
require('dotenv').config();

// Grabs password from .env file so it does not get posted to Github
var mypassword = process.env.MYSQL_PW;

// creating the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",

    // Port number
    port: 3306,

    // Username
    user: "root",

    // Password
    password: mypassword,
    database: "bamazon"
});

// Connecting to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    console.log("\nConnected to Bamazon\n")
    start();
});

function start() {
    connection.query("SELECT * FROM products",
        function (err, res) {
            if (err) throw err;

            // instantiate
            var table = new Table({
                head: ['Item ID', 'Product', 'Department', 'Price', 'Stock']
                , colWidths: [10, 30, 15, 7, 7]
            });

            for (var i = 0; i < res.length; i++) {

                var itemId = res[i].item_id,
                    product = res[i].product_name,
                    department = res[i].department_name,
                    price = res[i].price,
                    stock = res[i].stock_quantity;

                // table is an Array, so you can `push`, `unshift`, `splice` and friends
                table.push(
                    [itemId, product, department, "$" + price, stock]
                );

            }
            console.log(table.toString());

        })

}



