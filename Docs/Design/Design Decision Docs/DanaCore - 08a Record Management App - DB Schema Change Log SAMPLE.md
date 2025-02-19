# Database Schema Change Log

## Purpose
The purpose of this document is to track changes made to the database schema over time. It provides a detailed log of modifications, including descriptions, dates, authors, and version numbers. This ensures that all changes are documented and can be reviewed or reverted if necessary.

## Contents

### Change Log Format
Each entry in the change log should follow this format:
- **Change Description**: A brief description of the change made.
- **Date of Change**: The date when the change was implemented.
- **Author**: The name of the person who made the change.
- **Version Number**: The version number of the database schema after the change.

### Change Log Entries

#### Version 1.0.0
- **Change Description**: Initial creation of the database schema.
- **Date of Change**: 2023-10-01
- **Author**: John Doe
- **Version Number**: 1.0.0

#### Version 1.1.0
- **Change Description**: Added `department` column to `Employees` table.
- **Date of Change**: 2023-11-15
- **Author**: Jane Smith
- **Version Number**: 1.1.0

#### Version 1.2.0
- **Change Description**: Added `AuditTrail` table to track CRUD operations.
- **Date of Change**: 2023-12-05
- **Author**: John Doe
- **Version Number**: 1.2.0

#### Version 1.3.0
- **Change Description**: Modified `email` column in `Customers` table to be unique.
- **Date of Change**: 2024-01-10
- **Author**: Jane Smith
- **Version Number**: 1.3.0

#### Version 1.4.0
- **Change Description**: Added `created_at` and `updated_at` columns to all tables.
- **Date of Change**: 2024-02-20
- **Author**: John Doe
- **Version Number**: 1.4.0

#### Version 1.5.0
- **Change Description**: Increased `stock_quantity` column size in `Inventory` table to `BIGINT`.
- **Date of Change**: 2024-03-15
- **Author**: Jane Smith
- **Version Number**: 1.5.0

### Future Changes
All future changes to the database schema should be documented in this log following the same format. This ensures that the history of the database schema is maintained and can be referenced as needed.

### Change Log Template
To facilitate the documentation of future changes, use the following template for each entry:

#### Version X.X.X
- **Change Description**: [Description of the change]
- **Date of Change**: [YYYY-MM-DD]
- **Author**: [Author's Name]
- **Version Number**: [New Version Number]


### Example Entry

#### Version 1.6.0
- **Change Description**: Added `phone_number` column to `Customers` table.
- **Date of Change**: 2024-04-10
- **Author**: John Doe
- **Version Number**: 1.6.0


### Conclusion
Maintaining a detailed change log is crucial for the effective management of the database schema. It ensures transparency, accountability, and the ability to track and revert changes if necessary. All team members involved in database development and maintenance should adhere to this documentation process.

## Appendix

### Version History
- **Version 1.0.0**: Initial creation of the database schema.
- **Version 1.1.0**: Added `department` column to `Employees` table.
- **Version 1.2.0**: Added `AuditTrail` table to track CRUD operations.
- **Version 1.3.0**: Modified `email` column in `Customers` table to be unique.
- **Version 1.4.0**: Added `created_at` and `updated_at` columns to all tables.
- **Version 1.5.0**: Increased `stock_quantity` column size in `Inventory` table to `BIGINT`.

### Contact Information
For any questions or clarifications regarding the database schema change log, please contact:

- **Naved Rasul**: navedrasul@gmail.com

---

This document should be updated regularly to reflect any changes made to the database schema. Proper documentation ensures that all modifications are tracked and can be reviewed or reverted if necessary.

[END]