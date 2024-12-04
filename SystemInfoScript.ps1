# Challenge 2: Retrieving System Information

# Step 1: Get the current date and time
Write-Host "Current Date and Time:"
Get-Date

# Step 2: Display a list of all running processes
Write-Host "`nRunning Processes:"
Get-Process

# Step 3: Check the amount of free space on all drives
Write-Host "`nDrive Information (Free Space):"
Get-PSDrive | Where-Object { $_.Free -ne $null } | Select-Object Name, Used, Free, @{Name="FreeSpaceGB";Expression={[math]::round($_.Free / 1GB, 2)}}

# Step 4: List all services and their status
Write-Host "`nAll Services and their Status:"
Get-Service | Select-Object DisplayName, Status, StartType

# Step 5: Start a stopped service (e.g., winlogbeat)
Write-Host "`nStarting the 'winlogbeat' service..."
Set-Service -Name winlogbeat -StartupType Automatic
Start-Service -Name winlogbeat
Get-Service -Name winlogbeat

# Step 6: Stop a running service (e.g., Spooler)
Write-Host "`nStopping the 'Spooler' service..."
Stop-Service -Name Spooler -Force
Get-Service -Name Spooler

# Step 7: Display all network TCP connections in 'Listen' state
Write-Host "`nActive TCP Connections (State: Listen):"
Get-NetTCPConnection -State Listen

# Step 8: Filter TCP connections listening on port 3389
Write-Host "`nTCP Connections Listening on Port 3389:"
Get-NetTCPConnection -State Listen | Where-Object { $_.LocalPort -eq "3389" }

# Step 9: Display all firewall rules
Write-Host "`nFirewall Rules:"
Get-NetFirewallRule | Select-Object DisplayName, Direction, Action
