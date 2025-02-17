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