
# Prompt the user for the source and destination paths
$path1 = Read-Host "Enter the source path"
$path2 = Read-Host "Enter the destination path"

# Remove surrounding quotes if present
$path1 = $path1.Trim('"')
$path2 = $path2.Trim('"')

# This script checks user files from one directory to another using Robocopy.
robocopy "$path1" "$path2" /E /COPY:DAT /XO /Z /MT /R:3 /W:5 /L

#Continue with file copy if the user confirms
Read-Host -Prompt "Press any key to continue or CTRL+C to quit" | Out-Null

# This script moves user files from one directory to another using Robocopy.
robocopy "$path1" "$path2" /E /COPY:DAT /XO /Z /MT /R:3 /W:5 