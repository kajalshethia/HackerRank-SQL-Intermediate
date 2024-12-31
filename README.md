# HackerRank-SQL-Intermediate

Skills: SQL | MS SQL Server

### Question 1: Business Expansion
To support the company's business expansion efforts, identify all customer-user pairs who have interacted more than once. For each pair, provide the following details:

- User's ID, first name, and last name
- Customer's ID and name
- Total number of their interactions

Sort the results by the user's ID in ascending order.

#### Schema
The following tables are used for this analysis:
- `customer`
- `user_account`
- `contact`

---

### Question 2: Product Sales per City
For each product sold in different cities, calculate the total spending on the product (rounded to 2 decimal places). Return the following:

- City name and product name
- Total amount spent on the product

Order the output by:
1. Total amount spent (highest to lowest)
2. City name (alphabetically)
3. Product name (alphabetically)

#### Schema
The following tables are used for this analysis:
- `customer`
- `invoice`
- `city`
- `invoice_item`
- `product`
