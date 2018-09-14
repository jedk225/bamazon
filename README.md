# Bamazon

Bamazon is an Amazon-like storefront utilizing Node.js & MySQL

The app will take in orders from customers and deplete stock from the store's inventory. The inventory is being stored on a database named 'bamazon' on a local server using MySQL. The purpose of this project is to experience how to program a command-line interface (CLI) to READ and UPDATE values that exist on a database that was created using MySQL Workbench.


# Technologies
```
1. MySQL
2. Node.js
3. NPM
```

# Dependencies
```
1. mysql
2. cli-table
3. inquirer

Please install each of the packages listed above by typing 'npm install [Package Name]' in the command line.
```
# Demo (images)
## 1. Welcome Prompt
Prompt when the CLI is run
![Intro Image](images/1-Intro.png?raw=true)
---

## 2. Products Table
Table displaying all products within a table when the user responds 'yes'
![Intro Image](images/2-Welcome-Table.png?raw=true)
---

## 3. Purchase prompt
User is prompted to choose item they wish to purchase via the item id number. They are also prompted to choose how many items they would like to purchase.
![Intro Image](images/3-ID_Quantity.png?raw=true)
---

## 4. Updated Database
The MySQL database is updated and displayed. The quantity that the customer is purchasing is subtracted from the previous stock quantity. User is also given and confirmation of the item quantity and total price.
![Intro Image](images/4-UpdatedStock.png?raw=true)
---

## NOTE: Validation for stock quantity
If a user requests to purchase more units than is currently in stock, they will be informed that there is insufficient quantity. They will then be prompted to make another selection.
![Intro Image](images/5-InsufficientQuantity.png?raw=true)
---

## Demo Video Link(YouTube)
https://youtu.be/RG5vKhDJw_o

## Contributers
* Jed Kim