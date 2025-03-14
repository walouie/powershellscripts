# This script is used to get the mailbox permissions for a specific user in an on-premises Exchange environment.
# It connects to the Exchange server, retrieves the mailbox permissions for the specified user, and displays them in a formatted table.
Import-Module .\connectexchangeonline.ps1

$user = Read-Host "Enter the username"

Get-Mailbox -ResultSize Unlimited | Get-MailboxPermission -User $user | ft User,Identity,AccessRights

#Run Remove-PSSession to disconnect from the Exchange session
Remove-PSSession $Session
