### Credit to Adam Bertram

param ([string] $Computername, [hashtable]$Attributes)

### Attempt to find the Computername
try {
    $Computer = Get-ADComputer -Identity $Computername
    if (!$Computer) {
        ### If the ComputerName isn't found throw an error and exit
        Write-Error "The ComputerName '$ComputerName' does not exist"
        Return
    }
}
catch {
    
}

### The $Attribute parameter will contain only the parameters for the Set-AdComputer cmdlet.
$Computer | Set-ADComputer @Attributes