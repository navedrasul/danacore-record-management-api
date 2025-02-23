# Define the base path
basePath="RecordManagementApp"

# Define the folders to create
folders=(
    "AggregationService"
    "AuditService"
    "AuthenticationService"
    "CustomerService"
    "EmployeeService"
    "InventoryService"
    "RecordService"
    "SearchService"
    "EntityApiGateway"
)

# Create the base directory if it doesn't exist
if [ ! -d "$basePath" ]; then
    mkdir "$basePath"
fi

# Create each folder under the base path
for folder in "${folders[@]}"; do
    folderPath="$basePath/$folder"
    if [ ! -d "$folderPath" ]; then
        mkdir "$folderPath"
    fi
done

echo "Folders created successfully."