.
├── Build
│   ├── docker
│   │   └── Dockerfile.prod
│   ├── Output
│   └── Scripts
├── CODE_OF_CONDUCT.md
├── Config
│   ├── Dev
│   ├── Prod
│   └── Test
├── CONTRIBUTING.md
├── data
│   ├── aggregated-db
│   ├── audit-db
│   ├── customer-db
│   ├── employee-db
│   └── inventory-db
├── Deployments
│   ├── Docker
│   ├── Kubernetes
│   └── Server
├── DISCLAIMER.md
├── Docs
│   ├── Design
│   │   ├── API Docs
│   │   │   ├── 01 Record CRUD APIs
│   │   │   │   ├── Create Record - Sequence Diagram.dot
│   │   │   │   ├── Delete Record - Sequence Diagram.dot
│   │   │   │   ├── Get Record by ID - Sequence Diagram.dot
│   │   │   │   ├── Get Record Details - Sequence Diagram.dot
│   │   │   │   ├── Sequence Diagrams Descriptions.md
│   │   │   │   └── Update Record - Sequence Diagram.dot
│   │   │   ├── 02 Search and Filter APIs
│   │   │   │   ├── Filter Records by Type - Sequence Diagram.dot
│   │   │   │   ├── Search Record - Sequence Diagram.dot
│   │   │   │   └── Sequence Diagrams Descriptions.md
│   │   │   ├── 03 Audit Trail APIs
│   │   │   │   ├── Get All Audit Trails - Sequence Diagram.dot
│   │   │   │   ├── Get Record Audit Trail - Sequence Diagram.dot
│   │   │   │   └── Sequence Diagrams Descriptions.md
│   │   │   ├── 04 Entity-Specific APIs
│   │   │   │   ├── 01 Customer APIs
│   │   │   │   │   ├── Create Customer Record - Sequence Diagram.dot
│   │   │   │   │   ├── Delete Customer Record - Sequence Diagram.dot
│   │   │   │   │   ├── Get Customer Details - Sequence Diagram.dot
│   │   │   │   │   ├── Get Customer List - Sequence Diagram.dot
│   │   │   │   │   └── Update Customer Record - Sequence Diagram.dot
│   │   │   │   ├── 02 Employee APIs
│   │   │   │   │   ├── Create Employee Record - Sequence Diagram.dot
│   │   │   │   │   ├── Delete Employee Record - Sequence Diagram.dot
│   │   │   │   │   ├── Get Employee Details - Sequence Diagram.dot
│   │   │   │   │   ├── Get Employee List - Sequence Diagram.dot
│   │   │   │   │   └── Update Employee Record - Sequence Diagram.dot
│   │   │   │   └── 03 Inventory APIs
│   │   │   │       ├── Create Inventory Record - Sequence Diagram.dot
│   │   │   │       ├── Delete Inventory Record - Sequence Diagram.dot
│   │   │   │       ├── Get Inventory Details - Sequence Diagram.dot
│   │   │   │       ├── Get Inventory List - Sequence Diagram.dot
│   │   │   │       └── Update Inventory Record - Sequence Diagram.dot
│   │   │   ├── App Api Spec.yaml
│   │   │   └── Record Management App - API Endpoints and Service Contracts Definition.md
│   │   ├── App Deployment Architecture.md
│   │   ├── App Deployment Guide.md
│   │   ├── App Design Docs
│   │   │   ├── 00 Record Management App Overview.md
│   │   │   ├── 01 Customer Management Overview.md
│   │   │   ├── 02 Employee Management Overview.md
│   │   │   ├── 03 Inventory Management Overview.md
│   │   │   ├── 04 User Authentication and Authorization Overview.md
│   │   │   └── 05 Reporting and Analytics Overview.md
│   │   ├── App Dev Setup Guide.md
│   │   ├── DanaCore - Record Management App - Architecture.md
│   │   ├── DB Schema Docs
│   │   │   ├── Record Management App - 00 DB Schema Docs List.md
│   │   │   ├── Record Management App - 01 Database Schema Overview.md
│   │   │   ├── Record Management App - 02a ER Diagram Details.md
│   │   │   ├── Record Management App - 02b ER Diagram.md
│   │   │   ├── Record Management App - 02c ER Diagram.dot
│   │   │   ├── Record Management App - 03a Table Definitions.md
│   │   │   ├── Record Management App - 03b Table Definitions.sql
│   │   │   ├── Record Management App - 04a Data Dictionary.md
│   │   │   ├── Record Management App - 05a Stored Procedures and Functions.md
│   │   │   ├── Record Management App - 05b Stored Procedures and Functions.SQL
│   │   │   ├── Record Management App - 06 DB Schema Change Log.md
│   │   │   ├── Record Management App - 07 Security and Compliance.md
│   │   │   └── Record Management App - 08 Backup and Recovery Plan.md
│   │   ├── Design Decision Docs
│   │   │   ├── DanaCore - 02b1 Simultaneous App Development Steps.md
│   │   │   ├── DanaCore - 02c Record Management App - Backend Development Setup Recommendations.md
│   │   │   ├── DanaCore - 04b Ways to Document Data Contracts.md
│   │   │   ├── DanaCore - 07 Record Management App - Search Service Decoupling Strategy.md
│   │   │   ├── DanaCore - 08a Record Management App - DB Schema Change Log SAMPLE.md
│   │   │   ├── DanaCore - 08b Record Management App - DB Schema Documentation Guide.md
│   │   │   ├── DanaCore - 09 DB Schema Folder Structure Suggestions.md
│   │   │   ├── DanaCore - 10a Record Management App - Backend Setup.md
│   │   │   ├── DanaCore - Record Management App API - 01 Dev Container Setup Plan.md
│   │   │   ├── DanaCore - Record Management App API - 02 Dev Container Env Files Creation Plan.md
│   │   │   ├── DanaCore - Record Management App API - 03c RMAAService Software Project Setup.md
│   │   │   ├── DanaCore - Record Management App API - 04 RMAAService Dev Depolyment Setup.md
│   │   │   ├── DanaCore - Record Management App API - 05 App Architectural Recommendations.md
│   │   │   └── DanaCore - Record Management App API - 06 Dev Container Env Files Creation Plan.md
│   │   ├── Record Management App - Class Diagram v0.1.dot
│   │   ├── Record Management App - Detailed Component Diagram.dot
│   │   └── Record Management App - Detailed Component Diagram.svg
│   ├── Manuals
│   ├── ProjectManagement
│   │   ├── create_folders.ps1
│   │   ├── Meetings
│   │   │   ├── Agendas
│   │   │   ├── Minutes
│   │   │   └── Notes
│   │   ├── Planning
│   │   │   ├── Milestones
│   │   │   ├── Roadmaps
│   │   │   ├── Sprints
│   │   │   └── Timelines
│   │   ├── Reports
│   │   │   ├── Metrics
│   │   │   ├── Progress Reports
│   │   │   └── Status Reports
│   │   └── Resources
│   │       ├── References
│   │       ├── Templates
│   │       └── Tools
│   └── Requirements
├── k8s
│   ├── config
│   │   └── record-mgmt-config.yaml
│   ├── deployments
│   │   ├── aggregation-service.yaml
│   │   ├── audit-service.yaml
│   │   ├── customer-service.yaml
│   │   ├── employee-service.yaml
│   │   ├── inventory-service.yaml
│   │   ├── record-mgmt-api.yaml
│   │   └── search-service.yaml
│   ├── secrets
│   │   └── db-secrets.yaml
│   ├── services
│   │   ├── aggregation-service-svc.yaml
│   │   ├── audit-service-svc.yaml
│   │   ├── customer-service-svc.yaml
│   │   ├── employee-service-svc.yaml
│   │   ├── inventory-service-svc.yaml
│   │   ├── record-mgmt-api-svc.yaml
│   │   └── search-service-svc.yaml
│   └── storage
│       ├── aggregated-db-pv.yaml
│       ├── audit-db-pv.yaml
│       ├── customer-db-pv.yaml
│       ├── employee-db-pv.yaml
│       └── inventory-db-pv.yaml
├── LICENSE
├── README.md
├── RecordManagementAppAPI.code-workspace
├── Record Management App API - Workspace Folder Structure.md
├── Resources
│   ├── Fonts
│   ├── Icons
│   ├── Images
│   └── Videos
├── scripts
│   ├── Automation
│   ├── build-services.sh
│   ├── clean-env.sh
│   ├── deploy-local.sh
│   ├── Maintenance
│   └── setup-dev.sh
├── Source
│   ├── add_gitkeep.sh
│   ├── CloudNative
│   ├── Common
│   │   └── model
│   ├── create-folders.sh
│   ├── DBScripts
│   ├── DevOps
│   │   └── Logs
│   │       └── 20250220_1357_Dev_Container_Creation_Log.txt
│   ├── ERPModules
│   │   ├── Accounting
│   │   ├── HR
│   │   ├── Inventory
│   │   └── Sales
│   ├── RecordManagementApp
│   │   ├── HELP.md
│   │   ├── mvnw
│   │   ├── mvnw.cmd
│   │   ├── pom.xml
│   │   ├── RecordManagementAppAPIService
│   │   │   └── target
│   │   │       ├── classes
│   │   │       │   └── com
│   │   │       │       └── danacore
│   │   │       │           └── recordmanagement
│   │   │       │               ├── controller
│   │   │       │               ├── model
│   │   │       │               ├── repository
│   │   │       │               └── service
│   │   │       ├── generated-sources
│   │   │       │   └── annotations
│   │   │       ├── generated-test-sources
│   │   │       │   └── test-annotations
│   │   │       └── test-classes
│   │   │           └── com
│   │   │               └── danacore
│   │   │                   └── recordmanagement
│   │   │                       ├── config
│   │   │                       └── controller
│   │   ├── Record Management App API Service - Folder Structure.md
│   │   ├── src
│   │   │   ├── main
│   │   │   │   ├── java
│   │   │   │   │   └── com
│   │   │   │   │       └── danacore
│   │   │   │   │           └── recordmanagement
│   │   │   │   │               ├── controller
│   │   │   │   │               │   ├── AuditTrailController.java
│   │   │   │   │               │   ├── CustomerController.java
│   │   │   │   │               │   ├── EmployeeController.java
│   │   │   │   │               │   └── InventoryController.java
│   │   │   │   │               ├── model
│   │   │   │   │               │   ├── AuditTrail.java
│   │   │   │   │               │   ├── Customer.java
│   │   │   │   │               │   ├── Employee.java
│   │   │   │   │               │   └── Inventory.java
│   │   │   │   │               ├── RecordManagementAppApiServiceApplication.java
│   │   │   │   │               ├── repository
│   │   │   │   │               │   ├── AuditTrailRepository.java
│   │   │   │   │               │   ├── CustomerRepository.java
│   │   │   │   │               │   ├── EmployeeRepository.java
│   │   │   │   │               │   └── InventoryRepository.java
│   │   │   │   │               └── service
│   │   │   │   │                   ├── AuditTrailService.java
│   │   │   │   │                   ├── CustomerService.java
│   │   │   │   │                   ├── EmployeeService.java
│   │   │   │   │                   └── InventoryService.java
│   │   │   │   └── resources
│   │   │   │       ├── application.properties
│   │   │   │       ├── static
│   │   │   │       └── templates
│   │   │   └── test
│   │   │       ├── java
│   │   │       │   └── com
│   │   │       │       └── danacore
│   │   │       │           └── recordmanagement
│   │   │       │               ├── config
│   │   │       │               │   └── TestSecurityConfig.java
│   │   │       │               ├── controller
│   │   │       │               │   ├── AuditTrailControllerTest.java
│   │   │       │               │   ├── CustomerControllerTest.java
│   │   │       │               │   ├── EmployeeControllerTest.java
│   │   │       │               │   └── InventoryControllerTest.java
│   │   │       │               └── RecordManagementAppApiServiceApplicationTests.java
│   │   │       └── resources
│   │   │           └── application.properties
│   │   └── target
│   │       ├── classes
│   │       │   ├── application.properties
│   │       │   ├── com
│   │       │   │   └── danacore
│   │       │   │       └── recordmanagement
│   │       │   │           ├── controller
│   │       │   │           │   ├── AuditTrailController.class
│   │       │   │           │   ├── CustomerController.class
│   │       │   │           │   ├── EmployeeController.class
│   │       │   │           │   └── InventoryController.class
│   │       │   │           ├── model
│   │       │   │           │   ├── AuditTrail.class
│   │       │   │           │   ├── Customer.class
│   │       │   │           │   ├── Employee.class
│   │       │   │           │   └── Inventory.class
│   │       │   │           ├── RecordManagementAppApiServiceApplication.class
│   │       │   │           ├── repository
│   │       │   │           │   ├── AuditTrailRepository.class
│   │       │   │           │   ├── CustomerRepository.class
│   │       │   │           │   ├── EmployeeRepository.class
│   │       │   │           │   └── InventoryRepository.class
│   │       │   │           └── service
│   │       │   │               ├── AuditTrailService.class
│   │       │   │               ├── CustomerService.class
│   │       │   │               ├── EmployeeService.class
│   │       │   │               └── InventoryService.class
│   │       │   ├── static
│   │       │   └── templates
│   │       ├── generated-sources
│   │       │   └── annotations
│   │       ├── generated-test-sources
│   │       │   └── test-annotations
│   │       ├── maven-status
│   │       │   └── maven-compiler-plugin
│   │       │       ├── compile
│   │       │       │   └── default-compile
│   │       │       │       ├── createdFiles.lst
│   │       │       │       └── inputFiles.lst
│   │       │       └── testCompile
│   │       │           └── default-testCompile
│   │       │               ├── createdFiles.lst
│   │       │               └── inputFiles.lst
│   │       ├── surefire-reports
│   │       │   ├── com.danacore.recordmanagement.controller.AuditTrailControllerTest.txt
│   │       │   ├── com.danacore.recordmanagement.controller.CustomerControllerTest.txt
│   │       │   ├── com.danacore.recordmanagement.controller.EmployeeControllerTest.txt
│   │       │   ├── com.danacore.recordmanagement.controller.InventoryControllerTest.txt
│   │       │   ├── com.danacore.recordmanagement.RecordManagementAppApiServiceApplicationTests.txt
│   │       │   ├── TEST-com.danacore.recordmanagement.controller.AuditTrailControllerTest.xml
│   │       │   ├── TEST-com.danacore.recordmanagement.controller.CustomerControllerTest.xml
│   │       │   ├── TEST-com.danacore.recordmanagement.controller.EmployeeControllerTest.xml
│   │       │   ├── TEST-com.danacore.recordmanagement.controller.InventoryControllerTest.xml
│   │       │   └── TEST-com.danacore.recordmanagement.RecordManagementAppApiServiceApplicationTests.xml
│   │       └── test-classes
│   │           ├── application.properties
│   │           └── com
│   │               └── danacore
│   │                   └── recordmanagement
│   │                       ├── config
│   │                       │   └── TestSecurityConfig.class
│   │                       ├── controller
│   │                       │   ├── AuditTrailControllerTest.class
│   │                       │   ├── CustomerControllerTest.class
│   │                       │   ├── EmployeeControllerTest.class
│   │                       │   └── InventoryControllerTest.class
│   │                       └── RecordManagementAppApiServiceApplicationTests.class
│   └── Record Management App API - Source Folder Structure.md
└── Tests
    ├── IntegrationTests
    ├── LoadTests
    ├── MockData
    └── UnitTests

153 directories, 176 files
