// npm install packages
const mysql = require('mysql');
const inquirer = require('inquirer');
const prompt = require('prompt');
const filesystem = require('fs');

let connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'fumanchu7',
    database: 'bamazon_db',
});

// start the connection to the database
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
});

// call the first function to start it
buyProduct();

// displays products in database table, and then ask user which product he wants to purchase - write hoisted functions so they can be defined later in the file
function buyProduct() {
    connection.query('SELECT * FROM Products', function(err, res){
        // console.log(res);

        // display products and priceuser
        // for (var i = 0; i < res.length; i++) {
        //     console.log('Item: ' + res[i].productname + ' | price: ' + res[i].price |' Stock: ' + res[i].stockquntity);
        // }
        console.table(res);
        

        // ask user questions for purchase 
        inquirer.prompt([{
            // ask user to choose a product to purchase
            name: "choice",
            type: "rawlist",
            message: "What would you like to buy?",
            choices: function(value) {
                var choiceArray = [];
                for (var i = 0; i < res.length; i++) {
                    choiceArray.push(res[i].productname);
                }
                return choiceArray;
            }
        }, {
            // ask user to enter a quantity to purchase
            name: "quantity",
            type: "input",
            message: "How many would you like to buy?",
            validate: function(value) {
                if (isNaN(value) == false) {
                    return true;
                } else {
                    return false;
                }
            }
        }]).then(function(answer) {
            // grabs the entire object for the product the user chose
            for (var i = 0; i < res.length; i++) {
                if (res[i].productname == answer.choice) {
                    var chosenItem = res[i];
                }
            }
            

        }); // .then of inquirer prompt
                         
    }); // first connection.query of the database
    
} // buyProduct function