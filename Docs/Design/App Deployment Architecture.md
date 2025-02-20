# Record Management API - Architecture Documentation

## System Architecture

### Microservices
1. **Record Management API** (Port: 31000)
   - Main API gateway
   - Request routing and authentication
   - Response aggregation

2. **Customer Service** (Port: 31001)
   - Customer record management
   - Customer data validation
   - Customer search functionality

3. **Employee Service** (Port: 31002)
   - Employee record management
   - Role-based access control
   - Employee data validation

4. **Inventory Service** (Port: 31003)
   - Inventory tracking
   - Stock management
   - Inventory search

5. **Audit Service** (Port: 31004)
   - Activity logging
   - Audit trail management
   - Compliance reporting

6. **Search Service** (Port: 31005)
   - Unified search interface
   - Search optimization
   - Cache management

7. **Aggregation Service** (Port: 31006)
   - Data aggregation
   - Analytics support
   - Report generation

### Data Storage
- Customer DB (Port: 31007)
- Employee DB (Port: 31008)
- Inventory DB (Port: 31009)
- Audit DB (Port: 31010)
- Aggregated Data DB (Port: 31011)
- Redis Cache (Port: 31012)

## Technology Stack
- Java 21
- Spring Boot
- PostgreSQL
- Redis
- Docker/Kubernetes
- Jenkins CI/CD
