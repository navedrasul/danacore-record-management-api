# Database Schema Overview Document

## 1. Introduction
The purpose of this document is to provide a high-level overview of the database schema for the Record Management App, a core component of the DanaCore ERP system. This document outlines the objectives, scope, and structure of the database schema, providing a foundation for detailed technical documentation.

## 2. Objectives
- Establish a robust and scalable database schema to support CRUD operations for key business entities such as customers, employees, and inventory.
- Ensure data consistency, accuracy, and security across all modules.
- Facilitate efficient data retrieval and management through well-defined relationships and indexing.
- Support audit trails for compliance and traceability.

## 3. Scope
The database schema covers the following key entities and their relationships:
- Customers
- Employees
- Inventory
- AuditTrail

The schema is designed to support the core functionalities of the Record Management App, including CRUD operations, search and filter capabilities, and audit trail tracking.

## 4. High-Level Diagram
Below is a high-level diagram of the database schema, illustrating the entities and their relationships:

```plaintext
+-----------------+       +-----------------+       +-----------------+
|    Customers    |       |    Employees    |       |    Inventory    |
+-----------------+       +-----------------+       +-----------------+
| id (PK)         |       | id (PK)         |       | id (PK)         |
| name            |       | name            |       | product_name    |
| email           |       | designation     |       | stock_quantity  |
| created_at      |       | department      |       | created_at      |
| updated_at      |       | created_at      |       | updated_at      |
+-----------------+       | updated_at      |       +-----------------+
                          +-----------------+

+-----------------+
|   AuditTrail    |
+-----------------+
| id (PK)         |
| entity_id       |
| entity_type     |
| operation       |
| timestamp       |
| details         |
+-----------------+
```

## 5. Entity Descriptions
### Customers
- **id**: Primary key, unique identifier for each customer.
- **name**: Name of the customer.
- **email**: Unique email address of the customer.
- **created_at**: Timestamp when the customer record was created.
- **updated_at**: Timestamp when the customer record was last updated.

### Employees
- **id**: Primary key, unique identifier for each employee.
- **name**: Name of the employee.
- **designation**: Job role of the employee.
- **department**: Department to which the employee belongs.
- **created_at**: Timestamp when the employee record was created.
- **updated_at**: Timestamp when the employee record was last updated.

### Inventory
- **id**: Primary key, unique identifier for each inventory item.
- **product_name**: Name of the product.
- **stock_quantity**: Current stock quantity of the product.
- **created_at**: Timestamp when the inventory record was created.
- **updated_at**: Timestamp when the inventory record was last updated.

### AuditTrail
- **id**: Primary key, unique identifier for each audit trail entry.
- **entity_id**: Identifier of the entity being audited.
- **entity_type**: Type of the entity being audited (e.g., Customer, Employee, Inventory).
- **operation**: Type of operation performed (e.g., CREATE, UPDATE, DELETE).
- **timestamp**: Timestamp when the operation was performed.
- **details**: Additional details about the operation.
