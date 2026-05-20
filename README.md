# E-Commerce Sales Analysis (SQL Mini Project)

A beginner SQL project analysing sales data for a fictional e-commerce company called **ShopEasy** — built as a dry-run practice to understand how a real-world data analysis engagement flows from business question → SQL query → actionable insight.

---

## Purpose of the Project

The goal of this project is to practise translating real business questions into SQL queries using only fundamental concepts — SELECT, WHERE, GROUP BY, ORDER BY, JOIN, and aggregate functions like COUNT and SUM. No advanced SQL is used. The focus is on understanding how data spread across multiple tables can be connected and analysed to help a business make decisions.

---

## Tools Used

- **Microsoft SQL Server** — Database engine used to create tables, load data, and run queries
- **SQL Server Management Studio (SSMS)** — IDE used to write and execute all SQL queries
- **Microsoft Excel / Google Sheets** — Used to prepare the CSV data files before importing
- **Git & Git Bash** — Used to version-control the project and push files to GitHub
- **GitHub** — Used to publish and share the project

---

## Database Structure

A new database called `ShopEasy` was created in MS SQL Server. Inside it, three tables were created and linked together:

### customers
Stores information about registered customers.
| Column | Type | Description |
|--------|------|-------------|
| customer_id | INT (PK) | Unique identifier for each customer |
| customer_name | VARCHAR | Full name of the customer |
| city | VARCHAR | City where the customer is located |
| email | VARCHAR | Customer email address |
| signup_date | DATE | Date the customer registered |

### products
Stores the product catalogue with pricing.
| Column | Type | Description |
|--------|------|-------------|
| product_id | INT (PK) | Unique identifier for each product |
| product_name | VARCHAR | Name of the product |
| category | VARCHAR | Product category |
| price | DECIMAL | Selling price per unit (in ₹) |

### orders
The central fact table that links customers and products together.
| Column | Type | Description |
|--------|------|-------------|
| order_id | INT (PK) | Unique identifier for each order |
| customer_id | INT (FK) | Links to customers.customer_id |
| product_id | INT (FK) | Links to products.product_id |
| quantity | INT | Number of units ordered |
| order_date | DATE | Date the order was placed |
| status | VARCHAR | Delivered / Cancelled / Pending |

### Relationships
- `orders.customer_id` → references `customers.customer_id`
- `orders.product_id` → references `products.product_id`
- One customer can place many orders. Each order contains exactly one product.

---

## Dataset

- **customers.csv** — 15 customers across 7 Indian cities
- **products.csv** — 10 products across 3 categories
- **orders.csv** — 30 orders placed between January 2024 and October 2024

Data was loaded into SQL Server using the `BULK INSERT` command.

---

## SQL Concepts Practised

| Concept | Used In |
|---------|---------|
| SELECT, FROM | All tasks |
| COUNT(*) | Task 1, Task 7 |
| SELECT DISTINCT | Task 2 |
| INNER JOIN (two tables) | Task 3, Task 4 |
| WHERE filter | Task 3 |
| GROUP BY + ORDER BY | Task 4, Task 5, Task 6, Task 7 |
| INNER JOIN (three tables) | Task 5, Task 6 |
| SUM with calculated column | Task 5, Task 6 |
| TOP N | Task 6 |

---

## Tasks and Findings

**Task 1 — Total Customer Count:**
ShopEasy currently has **15 registered customers** on the platform. This serves as a baseline sanity check before deeper analysis.

**Task 2 — Unique Product Categories:**
The platform sells across **3 categories** — Clothing, Electronics, and Home & Kitchen.

**Task 3 — Mumbai Orders:**
9 orders were placed from Mumbai. Key buyers include Priya Sharma, Karan Mehta, Meera Pillai, and Sanjay Patel. Products ordered ranged from high-value Electronics like iPhone 14 and Samsung TV to everyday items like Cotton Kurta and Air Fryer — indicating a diverse buying pattern from this city.

**Task 4 — Orders Per City:**
Mumbai leads with 9 orders, followed by Delhi (7), Bangalore and Chennai (4 each), Pune (3), Hyderabad (2), and Kolkata (1). Mumbai and Delhi together account for more than half of all orders.

**Task 5 — Revenue by Product:**
iPhone 14 is the top revenue generator at ₹3,16,000 — nearly double the second best, Samsung TV at ₹1,65,000. The top 3 products are all Electronics, dominating overall platform revenue.

**Task 6 — Top 5 Customers by Spend:**
Priya Sharma leads with a total spend of ₹ 1,11,600, followed by Vikram Nair (₹86,500), Arjun Singh (₹84,000), Sneha Iyer (₹82,500), and Rahul Verma (₹68,800). These 5 customers are the platform's highest value segment.

**Task 7 — Order Status Breakdown:**
21 out of 30 orders were delivered (70%), 5 were cancelled (16.7%), and 4 are Pending (13.3%). The cancellation rate is moderate but worth monitoring.

---

## Key Business Insights

- **Mumbai and Delhi are the top two markets**, together contributing more than half of all orders. Marketing efforts should be concentrated here while strategies to grow Kolkata and Hyderabad should be explored.
- **Electronics is the highest revenue-generating category** — iPhone 14 and Samsung TV alone contribute over ₹4,80,000 in revenue. Stocking and promoting Electronics more aggressively would directly impact top-line revenue.
- **Priya Sharma is the platform's most valuable customer**, having spent ₹1,11,600 — significantly more than any other customer. Identifying and retaining such high-value customers is critical.
- **70% delivery rate is acceptable but improvable** — with 5 cancellations and 4 pending orders out of 30, there is room to improve fulfilment efficiency.

---

## How to Run This Project

1. Install **SQL Server** and **SSMS** on your machine
2. Create a new database: `CREATE DATABASE ShopEasy;`
3. Run the table creation scripts from the `queries/` folder
4. Place the CSV files in `C:\SQLData\` and run the BULK INSERT commands
5. Open any `.sql` file from the `queries/` folder and execute it in SSMS

---

## Folder Structure

```
ecommerce-sql-analysis/
├── data/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
├── queries/
│   ├── task_00_create_db.sql
│   ├── task_00_create_tables.sql
│   ├── task_00_insert_data.sql
│   ├── task_01_customer_count.sql
│   ├── task_02_distinct_categories.sql
│   ├── task_03_mumbai_orders.sql
│   ├── task_04_orders_by_city.sql
│   ├── task_05_revenue_by_product.sql
│   ├── task_06_top_5_customers.sql
│   └── task_07_order_status.sql
├── results/
│   └── (screenshots of all query results)
└── README.md
```
