# Data Dictionary

## Purpose
The purpose of this document is to provide detailed information about the data elements in the database schema for the Record Management App. This includes column names, data types, descriptions, constraints, and default values.

## Contents

### Customers Table
| Column Name | Data Type | Description | Constraints | Default Value |
|-------------|-----------|-------------|-------------|---------------|
| id          | BIGINT    | Primary key, unique identifier for each customer | PRIMARY KEY | N/A |
| name        | VARCHAR(255) | Name of the customer | NOT NULL | N/A |
| email       | VARCHAR(255) | Unique email address of the customer | UNIQUE, NOT NULL | N/A |
| created_at  | TIMESTAMP  | Timestamp when the customer record was created | NOT NULL | CURRENT_TIMESTAMP |
| updated_at  | TIMESTAMP  | Timestamp when the customer record was last updated | NOT NULL | CURRENT_TIMESTAMP |

### Employees Table
| Column Name | Data Type | Description | Constraints | Default Value |
|-------------|-----------|-------------|-------------|---------------|
| id          | BIGINT    | Primary key, unique identifier for each employee | PRIMARY KEY | N/A |
| name        | VARCHAR(255) | Name of the employee | NOT NULL | N/A |
| designation | VARCHAR(255) | Job role of the employee | NOT NULL | N/A |
| department  | VARCHAR(255) | Department of the employee | NULL | N/A |
| created_at  | TIMESTAMP  | Timestamp when the employee record was created | NOT NULL | CURRENT_TIMESTAMP |
| updated_at  | TIMESTAMP  | Timestamp when the employee record was last updated | NOT NULL | CURRENT_TIMESTAMP |

### Inventory Table
| Column Name | Data Type | Description | Constraints | Default Value |
|-------------|-----------|-------------|-------------|---------------|
| id          | BIGINT    | Primary key, unique identifier for each inventory item | PRIMARY KEY | N/A |
| product_name| VARCHAR(255) | Name of the product | NOT NULL | N/A |
| stock_quantity | INT     | Quantity of the product in stock | NOT NULL | 0 |
| created_at  | TIMESTAMP  | Timestamp when the inventory record was created | NOT NULL | CURRENT_TIMESTAMP |
| updated_at  | TIMESTAMP  | Timestamp when the inventory record was last updated | NOT NULL | CURRENT_TIMESTAMP |

### AuditTrail Table
| Column Name | Data Type | Description | Constraints | Default Value |
|-------------|-----------|-------------|-------------|---------------|
| id          | BIGINT    | Primary key, unique identifier for each audit trail entry | PRIMARY KEY | N/A |
| entity_id   | BIGINT    | ID of the entity being audited | NOT NULL | N/A |
| entity_type | VARCHAR(255) | Type of the entity being audited (e.g., Customer, Employee, Inventory) | NOT NULL | N/A |
| operation   | VARCHAR(255) | Type of operation performed (e.g., CREATE, UPDATE, DELETE) | NOT NULL | N/A |
| timestamp   | TIMESTAMP  | Timestamp when the operation was performed | NOT NULL | CURRENT_TIMESTAMP |
| details     | TEXT      | Additional details about the operation | NULL | N/A |

---

[PART#1]