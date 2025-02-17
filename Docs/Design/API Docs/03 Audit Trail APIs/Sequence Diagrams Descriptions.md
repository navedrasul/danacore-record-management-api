Here’s a sequence diagram for the "Get Record Audit Trail" API (`GET /records/audit/{id}`) using Graphviz Dot Language:

```dot
digraph GetRecordAuditTrail {
    rankdir=LR;
    node [shape=box, style=rounded];

    client [label="Client"];
    api_gateway [label="API Gateway"];
    auth_service [label="Authentication Service"];
    record_service [label="Record Management Service"];
    audit_db [label="Audit Database"];

    client -> api_gateway [label="GET /records/audit/{id}"];
    api_gateway -> auth_service [label="Validate JWT"];
    auth_service -> api_gateway [label="JWT Valid"];
    api_gateway -> record_service [label="GET /audit/{id}"];
    record_service -> audit_db [label="Query Audit Data"];
    audit_db -> record_service [label="Audit Data"];
    record_service -> api_gateway [label="Response (Audit Trail)"];
    api_gateway -> client [label="Response (Audit Trail)"];
}
```

This sequence diagram shows the flow of data and authentication steps required to retrieve the audit trail of a specific record.
___

Here's the sequence diagram for the "Get All Audit Trails" API using Graphviz Dot Language:

```dot
digraph GetAllAuditTrails {
    rankdir=LR;
    node [shape=rect];

    User -> "API Gateway" [label="GET /records/audit"];
    "API Gateway" -> "Audit Controller" [label="Validate JWT and Forward Request"];
    "Audit Controller" -> "Audit Service" [label="Process Request"];
    "Audit Service" -> "Audit Repository" [label="Fetch Audit Trail Data"];
    "Audit Repository" -> "Database" [label="Execute Query"];
    "Database" -> "Audit Repository" [label="Return Audit Data"];
    "Audit Repository" -> "Audit Service" [label="Return Processed Data"];
    "Audit Service" -> "Audit Controller" [label="Return Response"];
    "Audit Controller" -> "API Gateway" [label="Send Response"];
    "API Gateway" -> User [label="Return Audit Trails"];
}
```

This diagram outlines the flow of the "Get All Audit Trails" request, illustrating how it passes through the system components, including authentication and data processing steps.
___

