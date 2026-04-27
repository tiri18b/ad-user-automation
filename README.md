# Active Directory User Automation

## Overview
PowerShell automation for creating Active Directory users from a CSV file.

## Features
- Bulk AD user creation
- Assigns users to groups
- Forces password change at first logon
- Designed for onboarding automation

## Technologies
- PowerShell
- Windows Server
- Active Directory

## Requirements
- Windows Server with Active Directory module
- Domain Admin or delegated AD permissions

## How to Run
```powershell
Set-ExecutionPolicy RemoteSigned
.\create_users.ps1
```

## Author
Yehuda Benisti
