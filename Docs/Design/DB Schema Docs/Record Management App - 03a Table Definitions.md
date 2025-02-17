[PART#1]

### Table Definitions Document

#### 1. Customers Table
- **Table Name**: `Customers`
- **Description**: Stores customer information.
- **Columns**:
  - `id` (BIGINT, Primary Key): Unique identifier for each customer.
  - `name` (VARCHAR(255), NOT NULL): Name of the customer.
  - `email` (VARCHAR(255), UNIQUE, NOT NULL): Email address of the customer.
  - `created_at` (TIMESTAMP, NOT NULL): Timestamp when the customer record was created.
  - `updated_at` (TIMESTAMP, NOT NULL): Timestamp when the customer record was last updated.
- **Primary Key**: `id`
- **Indexes**: 
  - `email` (UNIQUE)

#### 2. Employees Table
- **Table Name**: `Employees`
- **Description**: Stores employee information.
- **Columns**:
  - `id` (BIGINT, Primary Key): Unique identifier for each employee.
  - `name` (VARCHAR(255), NOT NULL): Name of the employee.
  - `designation` (VARCHAR(255), NOT NULL): Job role of the employee.
  - `department` (VARCHAR(255)): Department to which the employee belongs.
  - `created_at` (TIMESTAMP, NOT NULL): Timestamp when the employee record was created.
  - `updated_at` (TIMESTAMP, NOT NULL): Timestamp when the employee record was last updated.
- **Primary Key**: `id`

[PART#2]

- **Indexes**: None

#### 3. Inventory Table
- **Table Name**: `Inventory`
- **Description**: Stores inventory information.
- **Columns**:
  - `id` (BIGINT, Primary Key): Unique identifier for each inventory item.
  - `product_name` (VARCHAR(255), NOT NULL): Name of the product.
  - `stock_quantity` (INT, NOT NULL): Current stock quantity of the product.
  - `created_at` (TIMESTAMP, NOT NULL): Timestamp when the inventory record was created.
  - `updated_at` (TIMESTAMP, NOT NULL): Timestamp when the inventory record was last updated.
- **Primary Key**: `id`
- **Indexes**: None

#### 4. AuditTrail Table
- **Table Name**: `AuditTrail`
- **Description**: Stores audit trail information for CRUD operations.
- **Columns**:
  - `id` (BIGINT, Primary Key): Unique identifier for each audit trail record.
  - `entity_id` (BIGINT, NOT NULL): Identifier of the entity being audited.
  - `entity_type` (VARCHAR(255), NOT NULL): Type of the entity being audited (e.g., Customer, Employee, Inventory).
  - `operation` (VARCHAR(255), NOT NULL): Type of operation performed (e.g., CREATE, UPDATE, DELETE).
  - `timestamp` (TIMESTAMP, NOT NULL): Timestamp when the operation was performed.
  - `details` (TEXT): Additional details about the operation.
- **Primary Key**: `id`
- **Indexes**: None

[PART#3]

### Summary
This document provides detailed definitions for the tables in the Record Management App database schema. Each table includes a description, columns with data types and constraints, primary keys, and indexes. This information is essential for understanding the structure and relationships within the database, ensuring data integrity and efficient data management.