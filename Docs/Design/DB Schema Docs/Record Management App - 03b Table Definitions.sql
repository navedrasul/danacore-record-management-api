-- Customers Table
CREATE TABLE Customers (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- Employees Table
CREATE TABLE Employees (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    designation VARCHAR(255) NOT NULL,
    department VARCHAR(255),
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- Inventory Table
CREATE TABLE Inventory (
    id BIGINT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    stock_quantity INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- AuditTrail Table
CREATE TABLE AuditTrail (
    id BIGINT PRIMARY KEY,
    entity_id BIGINT NOT NULL,
    entity_type VARCHAR(255) NOT NULL,
    operation VARCHAR(255) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    details TEXT
);
