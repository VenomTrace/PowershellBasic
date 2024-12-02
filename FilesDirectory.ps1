# Challenge 1: Working with Files and Directories

# Step 1: Create a new folder named PowerShellPractice
$folderPath = "$env:USERPROFILE\Desktop\PowerShellPractice"
New-Item -Path $folderPath -ItemType Directory -Force

# Step 2: Create a text file named Sample.txt inside the folder
$filePath = "$folderPath\Sample.txt"
New-Item -Path $filePath -ItemType File -Force

# Step 3: Write the text "Hello, PowerShell!" into the file
Set-Content -Path $filePath -Value "Hello, PowerShell!"

# Step 4: Read the content of the file to verify
$FileContent = Get-Content -Path $filePath
Write-Host "File Content: $FileContent"

# Step 5: Rename the file to Practice.txt
Rename-Item -Path $filePath -NewName "Practice.txt"

# Step 6: Delete the file after renaming
Remove-Item -Path "$folderPath\Practice.txt" -Force

# Step 7: Clean up by removing the folder
Remove-Item -Path $folderPath -Force
