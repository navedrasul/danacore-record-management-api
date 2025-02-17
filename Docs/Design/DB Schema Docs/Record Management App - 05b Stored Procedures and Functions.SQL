-- Stored Procedures and Functions for Record Management App

-- Stored Procedures

-- 1. sp_create_customer
CREATE OR REPLACE PROCEDURE sp_create_customer(
    p_name VARCHAR,
    p_email VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Customers (name, email, created_at, updated_at)
    VALUES (p_name, p_email, NOW(), NOW());
END;
$$;

-- 2. sp_update_customer
CREATE OR REPLACE PROCEDURE sp_update_customer(
    p_id BIGINT,
    p_name VARCHAR,
    p_email VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Customers
    SET name = p_name, email = p_email, updated_at = NOW()
    WHERE id = p_id;
END;
$$;

-- 3. sp_delete_customer
CREATE OR REPLACE PROCEDURE sp_delete_customer(
    p_id BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Customers
    WHERE id = p_id;
END;
$$;

-- 4. sp_create_employee
CREATE OR REPLACE PROCEDURE sp_create_employee(
    p_name VARCHAR,
    p_designation VARCHAR,
    p_department VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Employees (name, designation, department, created_at, updated_at)
    VALUES (p_name, p_designation, p_department, NOW(), NOW());
END;
$$;

-- 5. sp_update_employee
CREATE OR REPLACE PROCEDURE sp_update_employee(
    p_id BIGINT,
    p_name VARCHAR,
    p_designation VARCHAR,
    p_department VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Employees
    SET name = p_name, designation = p_designation, department = p_department, updated_at = NOW()
    WHERE id = p_id;
END;
$$;

-- 6. sp_delete_employee
CREATE OR REPLACE PROCEDURE sp_delete_employee(
    p_id BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Employees
    WHERE id = p_id;
END;
$$;

-- 7. sp_create_inventory
CREATE OR REPLACE PROCEDURE sp_create_inventory(
    p_product_name VARCHAR,
    p_stock_quantity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Inventory (product_name, stock_quantity, created_at, updated_at)
    VALUES (p_product_name, p_stock_quantity, NOW(), NOW());
END;
$$;

-- 8. sp_update_inventory
CREATE OR REPLACE PROCEDURE sp_update_inventory(
    p_id BIGINT,
    p_product_name VARCHAR,
    p_stock_quantity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Inventory
    SET product_name = p_product_name, stock_quantity = p_stock_quantity, updated_at = NOW()
    WHERE id = p_id;
END;
$$;

-- 9. sp_delete_inventory
CREATE OR REPLACE PROCEDURE sp_delete_inventory(
    p_id BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Inventory
    WHERE id = p_id;
END;
$$;

-- Functions

-- 1. fn_get_customer_by_id
CREATE OR REPLACE FUNCTION fn_get_customer_by_id(
    p_id BIGINT
)
RETURNS TABLE(id BIGINT, name VARCHAR, email VARCHAR, created_at TIMESTAMP, updated_at TIMESTAMP)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT id, name, email, created_at, updated_at
    FROM Customers
    WHERE id = p_id;
END;
$$;

-- 2. fn_get_employee_by_id
CREATE OR REPLACE FUNCTION fn_get_employee_by_id(
    p_id BIGINT
)
RETURNS TABLE(id BIGINT, name VARCHAR, designation VARCHAR, department VARCHAR, created_at TIMESTAMP, updated_at TIMESTAMP)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT id, name, designation, department, created_at, updated_at
    FROM Employees
    WHERE id = p_id;
END;
$$;

-- 3. fn_get_inventory_by_id
CREATE OR REPLACE FUNCTION fn_get_inventory_by_id(
    p_id BIGINT
)
RETURNS TABLE(id BIGINT, product_name VARCHAR, stock_quantity INT, created_at TIMESTAMP, updated_at TIMESTAMP)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT id, product_name, stock_quantity, created_at, updated_at
    FROM Inventory
    WHERE id = p_id;
END;
$$;

-- 4. fn_get_audit_trail_by_id
CREATE OR REPLACE FUNCTION fn_get_audit_trail_by_id(
    p_id BIGINT
)
RETURNS TABLE(id BIGINT, entity_id BIGINT, entity_type VARCHAR, operation VARCHAR, timestamp TIMESTAMP, details TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT id, entity_id, entity_type, operation, timestamp, details
    FROM AuditTrail
    WHERE id = p_id;
END;
$$;

-- 5. fn_get_all_audit_trails
CREATE OR REPLACE FUNCTION fn_get_all_audit_trails()
RETURNS TABLE(id BIGINT, entity_id BIGINT, entity_type VARCHAR, operation VARCHAR, timestamp TIMESTAMP, details TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT id, entity_id, entity_type, operation, timestamp, details
    FROM AuditTrail;
END;
$$;
