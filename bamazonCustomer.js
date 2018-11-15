//npm modules
var mysql = require("mysql");
var Table = require('cli-table');
var inquirer = require('inquirer');
//mySQL connection details
var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: "bamazon"
});
//connect to the database
connection.connect(function (err) {
    if (err) throw err;
    //console text confirming database connection
    console.log("You are connected to bamazon! \n");
    //call the function that gets our product list
    showProducts();
});

function showProducts() {
    //setting up the table to display products
    var availableProducts = new Table({
        head: ['ID', 'Product', 'Department', 'Price', 'Quantity'],
        style: {
            head: ['blue'],
            compact: false,
            colAligns: ['left'],
        }
    });
    //query mySQL and push information to the table/var we just defined above.
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            availableProducts.push(
                [res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
            );
        }
        //display the data we just collected
        console.log(availableProducts.toString());
        //call our ordering function
        order();
    });
};

function order() {
    inquirer.prompt([{
            name: 'productID',
            message: 'What is the ID of the product you are purchasing?'
        },
        {
            name: 'amount',
            message: 'How many would you like to purchase?'
        }
    ]).then(function (order) {
        connection.query("SELECT item_id, price, stock_quantity FROM products WHERE item_id = ?", [order.productID], function (err, res) {
            // if the requested order amount is more than the available stock, display a message and end connection
            if (res[0].stock_quantity < order.amount) {
                //using ansi escape code to make text red
                console.log('\x1b[31m', 'Insufficient quantity!', '\x1b[0m')
                connection.end();
                // if the requested order amount is less than the available stock, update the mySQL table to reflect new quantity
            } else {
                var newQuantity = res[0].stock_quantity - order.amount;
                connection.query("UPDATE products SET ? WHERE ?", [{
                        stock_quantity: newQuantity
                    },
                    {
                        item_id: order.productID
                    }
                ], function (err2, res2) {
                    var total = res[0].price * order.amount;
                    // console.log(newQuantity); //if uncommented will show the updated total.
                    console.log('\x1b[31m', "Your total is: $", total, '\x1b[0m','\n');
                    connection.end();
                });
            }
        });
    });
};