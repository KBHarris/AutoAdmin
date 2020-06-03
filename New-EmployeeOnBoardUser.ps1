### Credit to Adam Bertram

param($FirstName,$MiddleInitial,$LastName,$Location = 'OU=Corporate Users', $Title)

$DefaultPassword = 'password1234!'
$DomainDN = (Get-ADDomain).DistinguishedName
$DefaultGroup = 'Company Default Group'

### Determine User Name
try {
    
    $UserName = "$($FirstName.SubString(0,1))$Lastname"
    $EaPrefBefore = $ErrorActionPreference
    $ErrorActionPreference = "SilentlyContinue"
    if (Get-ADUser $UserName) {
        $UserName = "$($FirstName.SubString(0,1))$MiddleInitial$LastName"
        if (Get-ADUser $UserName) {
            Write-Warning "No acceptable username schema could be created"
            return
        }
}

}
catch {
    
}
### Create User Account

$ErrorActionPreference = $EaPrefBefore
$NewUserParams = @{
    'UserPrincipalName' = $UserName
    'Name' = $UserName
    'GivenName'= $FirstName
    'Surname' = $LastName
    'Title' = $Title
    'SamAccountName' = $UserName
    'AccountPassword' = (ConvertTo-SecureString $DefaultPassword -AsPlainText -Force)
    'Enabled' = $true
    'Initials' = $MiddleInitial
    'Path' = "$Location,$domainDN"
    'ChangePasswordAtLogon' = $true
}

New-ADUser @NewUserParams

### Add the User Account to the company standard group

Add-ADGroupMember -Identity $DefaultGroup -Members $UserName

