# bamazon

This project is to build a node command line app that is an Amazon-like storefront utilizing the MySQL skills I learned in class. 

The app will take in orders from customers and deplete stock from the store's inventory.


### Customer View build instructions:

1. Create a MySQL Database called `bamazon`.

2. Then create a Table inside of that database called `products`.

![alt text](https://github.com/hughescoding/bamazon/blob/master/images/create-bamazon.jpeg?raw=true "Create bamazon")


3. The products table should have each of the following columns:

   * item_id (unique id for each product)

   * product_name (Name of product)

   * department_name

   * price (cost to customer)

   * stock_quantity (how much of the product is available in stores)

4. Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).

![alt text](https://github.com/hughescoding/bamazon/blob/master/images/insert-products.jpeg?raw=true "Insert Products")

5. Then create a Node application called `bamazonCustomer.js`. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

![alt text](https://github.com/hughescoding/bamazon/blob/master/images/product-table.jpeg?raw=true "Product Table")

6. The app should then prompt users with two messages.

   * The first should ask them the ID of the product they would like to buy.
   * The second message should ask how many units of the product they would like to buy.

![alt text](https://github.com/hughescoding/bamazon/blob/master/images/purchase.jpeg?raw=true "Purchase")

7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

   * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.

![alt text](https://github.com/hughescoding/bamazon/blob/master/images/insuffciant-qty.jpeg?raw=true "Insufficient Quantity")

8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.
![alt text](https://github.com/hughescoding/bamazon/blob/master/images/update-qty.jpeg?raw=true "Update Quantity")
