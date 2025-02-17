### [PART#1]

```markdown
# Stored Procedures and Functions Document

## Purpose
Document any stored procedures and functions used in the database schema for the Record Management App.

## Contents
- Procedure/function name
- Parameters
- Return type
- Description
- Example usage

---

## Stored Procedures

### 1. `sp_create_customer`
- **Parameters**:
  - `p_name VARCHAR(255)`
  - `p_email VARCHAR(255)`
- **Return Type**: VOID
- **Description**: Creates a new customer record in the `Customers` table.
- **Example Usage**:
  ```sql
  CALL sp_create_customer('John Doe', 'john.doe@example.com');
  ```

### 2. `sp_update_customer`
- **Parameters**:
  - `p_id BIGINT`
  - `p_name VARCHAR(255)`
  - `p_email VARCHAR(255)`
- **Return Type**: VOID
- **Description**: Updates an existing customer record in the `Customers` table.
- **Example Usage**:
  ```sql
  CALL sp_update_customer(1, 'John Doe', 'john.doe@example.com');
  ```

### 3. `sp_delete_customer`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: VOID
- **Description**: Soft deletes a customer record in the `Customers` table.
- **Example Usage**:
  ```sql
  CALL sp_delete_customer(1);
  ```

### 4. `sp_create_employee`
- **Parameters**:
  - `p_name VARCHAR(255)`
  - `p_designation VARCHAR(255)`
  - `p_department VARCHAR(255)`
- **Return Type**: VOID
- **Description**: Creates a new employee record in the `Employees` table.
- **Example Usage**:
  ```sql
  CALL sp_create_employee('Jane Smith', 'Manager', 'Sales');
  ```

### 5. `sp_update_employee`
- **Parameters**:
  - `p_id BIGINT`
  - `p_name VARCHAR(255)`
  - `p_designation VARCHAR(255)`
  - `p_department VARCHAR(255)`
- **Return Type**: VOID
- **Description**: Updates an existing employee record in the `Employees` table.
- **Example Usage**:
  ```sql
  CALL sp_update_employee(1, 'Jane Smith', 'Senior Manager', 'Sales');
  ```

### 6. `sp_delete_employee`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: VOID
- **Description**: Soft deletes an employee record in the `Employees` table.
- **Example Usage**:
  ```sql
  CALL sp_delete_employee(1);
  ```

### 7. `sp_create_inventory`
- **Parameters**:
  - `p_product_name VARCHAR(255)`
  - `p_stock_quantity INT`
- **Return Type**: VOID
- **Description**: Creates a new inventory record in the `Inventory` table.
- **Example Usage**:
  ```sql
  CALL sp_create_inventory('Product A', 100);
  ```

### 8. `sp_update_inventory`
- **Parameters**:
  - `p_id BIGINT`
  - `p_product_name VARCHAR(255)`
  - `p_stock_quantity INT`
- **Return Type**: VOID
- **Description**: Updates an existing inventory record in the `Inventory` table.
- **Example Usage**:
  ```sql
  CALL sp_update_inventory(1, 'Product A', 150);
  ```

### 9. `sp_delete_inventory`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: VOID
- **Description**: Soft deletes an inventory record in the `Inventory` table.
- **Example Usage**:
  ```sql
  CALL sp_delete_inventory(1);
  ```

---

## Functions

### 1. `fn_get_customer_by_id`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: TABLE
- **Description**: Retrieves a customer record by ID from the `Customers` table.
- **Example Usage**:
  ```sql
  SELECT * FROM fn_get_customer_by_id(1);
  ```

### 2. `fn_get_employee_by_id`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: TABLE
- **Description**: Retrieves an employee record by ID from the `Employees` table.
- **Example Usage**:
  ```sql
  SELECT * FROM fn_get_employee_by_id(1);
  ```

### 3. `fn_get_inventory_by_id`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: TABLE
- **Description**: Retrieves an inventory record by ID from the `Inventory` table.
- **Example Usage**:
  ```sql
  SELECT * FROM fn_get_inventory_by_id(1);
  ```

### 4. `fn_get_audit_trail_by_id`
- **Parameters**:
  - `p_id BIGINT`
- **Return Type**: TABLE
- **Description**: Retrieves an audit trail record by ID from the `AuditTrail` table.
- **Example Usage**:
  ```sql
  SELECT * FROM fn_get_audit_trail_by_id(1);
  ```

### 5. `fn_get_all_audit_trails`
- **Parameters**: None
- **Return Type**: TABLE
- **Description**: Retrieves all audit trail records from the `AuditTrail` table.
- **Example Usage**:
  ```sql
  SELECT * FROM fn_get_all_audit_trails();
  ```

---

## Conclusion
This document provides a comprehensive list of stored procedures and functions used in the Record Management App's database schema. Each entry includes the procedure/function name, parameters, return type, description, and example usage to facilitate understanding and implementation.
