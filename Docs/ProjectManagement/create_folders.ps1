$basePath = "C:\Users\naved\source\repos\My Projects\DanaCoreApps\CoreApps\RecordManagementAppAPI\Docs\ProjectManagement"

# Create main directories
$directories = @(
    "Planning",
    "Meetings",
    "Reports",
    "Resources"
)

foreach ($dir in $directories) {
    New-Item -Path "$basePath\$dir" -ItemType Directory -Force
}

# Create Planning subdirectories
$planningDirs = @(
    "Roadmaps",
    "Sprints",
    "Milestones",
    "Timelines"
)

foreach ($dir in $planningDirs) {
    New-Item -Path "$basePath\Planning\$dir" -ItemType Directory -Force
}

# Create Meetings subdirectories
$meetingsDirs = @(
    "Agendas",
    "Minutes",
    "Notes"
)

foreach ($dir in $meetingsDirs) {
    New-Item -Path "$basePath\Meetings\$dir" -ItemType Directory -Force
}

# Create Reports subdirectories
$reportsDirs = @(
    "Progress Reports",
    "Status Reports",
    "Metrics"
)

foreach ($dir in $reportsDirs) {
    New-Item -Path "$basePath\Reports\$dir" -ItemType Directory -Force
}

# Create Resources subdirectories
$resourcesDirs = @(
    "References",
    "Templates",
    "Tools"
)

foreach ($dir in $resourcesDirs) {
    New-Item -Path "$basePath\Resources\$dir" -ItemType Directory -Force
}

Write-Host "Folder structure created successfully!"