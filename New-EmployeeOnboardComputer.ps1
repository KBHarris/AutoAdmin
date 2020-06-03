### Credit to Adam Bertram

param($Computername, $Location = 'OU=Corporate Computers')

if (Get-ADComputer $Computername) {
    Write-Error "The computer name '$computername' already exists"
    return
}

$DomainDN = (Get-ADDomain).DistinguishedName
$DefaultOuPath = "$Location,$DomainDN"

New-ADComputer -Name $Computername -Path $DefaultOuPath
