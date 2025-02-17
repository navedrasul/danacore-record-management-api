# Entity-Relationship Diagram (ERD) for Record Management App

## Purpose
The purpose of this document is to provide a visual representation of the database schema for the Record Management App. The ERD illustrates the entities, their attributes, and the relationships between them.

## Contents
- ERD Diagram
- Explanation of Entities and Relationships

## ERD Diagram
![ERD Diagram](path/to/erd-diagram.png)

## Explanation of Entities and Relationships

### Entities

#### 1. Customer
- **Attributes**:
  - `id`: BIGINT, Primary Key
  - `name`: VARCHAR(255), NOT NULL
  - `email`: VARCHAR(255), UNIQUE, NOT NULL
  - `created_at`: TIMESTAMP, NOT NULL
  - `updated_at`: TIMESTAMP, NOT NULL

#### 2. Employee
- **Attributes**:
  - `id`: BIGINT, Primary Key
  - `name`: VARCHAR(255), NOT NULL
  - `designation`: VARCHAR(255), NOT NULL
  - `department`: VARCHAR(255)
  - `created_at`: TIMESTAMP, NOT NULL
  - `updated_at`: TIMESTAMP, NOT NULL

#### 3. Inventory
- **Attributes**:
  - `id`: BIGINT, Primary Key
  - `product_name`: VARCHAR(255), NOT NULL
  - `stock_quantity`: INT, NOT NULL
  - `created_at`: TIMESTAMP, NOT NULL
  - `updated_at`: TIMESTAMP, NOT NULL

#### 4. AuditTrail
- **Attributes**:
  - `id`: BIGINT, Primary Key
  - `entity_id`: BIGINT, NOT NULL
  - `entity_type`: VARCHAR(255), NOT NULL
  - `operation`: VARCHAR(255), NOT NULL
  - `timestamp`: TIMESTAMP, NOT NULL
  - `details`: TEXT

### Relationships

#### CustomerService -> CustomerRepository
- **Description**: The `CustomerService` class uses the `CustomerRepository` to perform CRUD operations on the `Customer` entity.

#### EmployeeService -> EmployeeRepository
- **Description**: The `EmployeeService` class uses the `EmployeeRepository` to perform CRUD operations on the `Employee` entity.

#### InventoryService -> InventoryRepository
- **Description**: The `InventoryService` class uses the `InventoryRepository` to perform CRUD operations on the `Inventory` entity.

#### AuditTrailService -> AuditTrailRepository
- **Description**: The `AuditTrailService` class uses the `AuditTrailRepository` to perform CRUD operations on the `AuditTrail` entity.

### [PART#2]

```markdown
### Entity Relationships

#### 1. Customer
- **Relationships**:
  - One-to-Many relationship with `AuditTrail` (a customer can have multiple audit trail records).

#### 2. Employee
- **Relationships**:
  - One-to-Many relationship with `AuditTrail` (an employee can have multiple audit trail records).

#### 3. Inventory
- **Relationships**:
  - One-to-Many relationship with `AuditTrail` (an inventory item can have multiple audit trail records).

#### 4. AuditTrail
- **Relationships**:
  - Many-to-One relationship with `Customer` (an audit trail record is associated with one customer).
  - Many-to-One relationship with `Employee` (an audit trail record is associated with one employee).
  - Many-to-One relationship with `Inventory` (an audit trail record is associated with one inventory item).

### ERD Diagram Explanation

The ERD diagram visually represents the entities and their relationships within the Record Management App. Each entity is depicted as a box containing its attributes. The relationships between entities are shown using lines connecting the boxes, with symbols indicating the type of relationship (e.g., one-to-many, many-to-one).

- **Customer**: Represents the customers in the system. Each customer has a unique ID, name, email, and timestamps for creation and updates.
- **Employee**: Represents the employees in the system. Each employee has a unique ID, name, designation, department, and timestamps for creation and updates.
- **Inventory**: Represents the inventory items in the system. Each inventory item has a unique ID, product name, stock quantity, and timestamps for creation and updates.
- **AuditTrail**: Represents the audit trail records in the system. Each audit trail record has a unique ID, entity ID, entity type, operation, timestamp, and details.

The relationships between entities are as follows:
- A customer can have multiple audit trail records, indicating the changes made to the customer's data over time.
- An employee can have multiple audit trail records, indicating the changes made to the employee's data over time.
- An inventory item can have multiple audit trail records, indicating the changes made to the inventory item's data over time.
- Each audit trail record is associated with one customer, employee, or inventory item, indicating the entity to which the audit trail record belongs.

This ERD provides a clear and concise representation of the database schema, making it easier to understand the structure and relationships of the entities within the Record Management App.