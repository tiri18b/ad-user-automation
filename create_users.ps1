Import-Module ActiveDirectory

$Users = Import-Csv ".\users.csv"

foreach ($User in $Users) {
    $SecurePassword = ConvertTo-SecureString $User.Password -AsPlainText -Force

    New-ADUser `
        -Name "$($User.FirstName) $($User.LastName)" `
        -GivenName $User.FirstName `
        -Surname $User.LastName `
        -SamAccountName $User.Username `
        -UserPrincipalName "$($User.Username)@corp.local" `
        -Path $User.OU `
        -AccountPassword $SecurePassword `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    Add-ADGroupMember -Identity $User.Group -Members $User.Username

    Write-Host "Created user: $($User.Username)" -ForegroundColor Green
}
