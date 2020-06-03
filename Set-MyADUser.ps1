### Credit to Adam Bertram

param ([string]$Username, [hashtable]$Attributes)

try {
    ###Attempt to find the user name
    $UserAccount = Get-ADUser -Identity $Username
    if (!$UserAccount) {
        ###If the user name isn't found, throw an error and exit
        Write-Error "The username '$Username' does not exist"
        return
    }
}
catch {
    
}

### The $Attributes paramete will contain only the parameters for the Set-ADUser cmdlet other than
### Password. If this is in the $Attributes it needs to be treated differently.
if ($Attributes.ContainsKey('Password')) {
    $UserAccount | Set-ADAccountPassword -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $Attributes.Password -Force)
    ### Remove the password key because we'll be passing this hashtable directly to Set-ASUser later.
}

$UserAccount | Set-ADUser @Attributes

