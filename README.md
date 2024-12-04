# PowerShellPractice Repository

This repository is created to practice basic PowerShell commands and challenges.

## Challenge 1: Working with Files and Directories

### Steps:

1. **Create a folder**: `New-Item -ItemType Directory` to create a new folder named `PowerShellPractice`.
2. **Create a text file**: `New-Item -ItemType File` to create a file named `Sample.txt`.
3. **Write to the file**: `Set-Content` to write "Hello, PowerShell!" into the file.
4. **Read the file**: `Get-Content` to view the content of the file.
5. **Rename the file**: `Rename-Item` to change the file name to `Practice.txt`.
6. **Delete the file**: `Remove-Item` to delete the file after renaming.
7. **Cleanup**: Optionally remove the folder after all operations.

### Commands Used:
- `New-Item`
- `Set-Content`
- `Get-Content`
- `Rename-Item`
- `Remove-Item`

---

## Challenge 2: Retrieving System Information

### Steps Performed:
1. **Current Date and Time**:
   - Command: `Get-Date`
   - Displays the system's current date and time.

2. **List Running Processes**:
   - Command: `Get-Process`
   - Lists all running processes on the system.

3. **Free Space on Drives**:
   - Command: `Get-PSDrive`
   - Displays drive space and calculates free space in GB.

4. **List Services and Status**:
   - Command: `Get-Service`
   - Lists all services and their status.

5. **Start and Stop Services**:
   - `Set-Service -Name winlogbeat -StartupType Automatic`
   - `Start-Service -Name winlogbeat`
   - `Stop-Service -Name Spooler`

6. **Active TCP Connections**:
   - Command: `Get-NetTCPConnection -State Listen`
   - Filters connections on port `3389`.

7. **Firewall Rules**:
   - Command: `Get-NetFirewallRule | Select-Object DisplayName`
   - Displays firewall rules.

---

### Commands Used:
- `Get-Date`
- `Get-Process`
- `Get-PSDrive`
- `Get-Service`
- `Start-Service`
- `Stop-Service`
- `Set-Service`
- `Get-NetTCPConnection`
- `Get-NetFirewallRule`

---
Use this repository to store and revisit your PowerShell challenges.
