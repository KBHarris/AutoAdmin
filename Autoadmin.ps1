##########################
#       AutoAdmin        #
# Created by Kyle Harris #
##########################


## Menu functions ## 
function Show-MainMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Main Menu=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: Discovery"
    Write-Host "2: Desktop Support"
    Write-Host "3: Active Directory"
    Write-Host "4: DHCP"
    Write-Host "5: Bitlocker"
    Write-Host "6: Printers"
    Write-Host "7: Office 365"
    Write-Host "Q: Press 'Q' to quit."
    Write-Host ""

}

function Show-DiscoveryMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Discovery=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}

function Show-DesktopMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Desktop Support=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}

function Show-ADMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Active Directory=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}
function Show-DHCPMenu {

    Clear-Host
    Write-Host "========AutoAdmin - DHCP=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}
function Show-BLMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Bitlocker=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}
function Show-PrinterMenu {

    Clear-Host
    Write-Host "========AutoAdmin - Printers=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}
function Show-O365Menu {

    Clear-Host
    Write-Host "========AutoAdmin - Office 365=======" -ForegroundColor Green
    Write-Host ""
    Write-Host "1: List PC names"
    Write-Host "2: Find IP addresses"
    Write-Host "3: Find Service Tags"
    Write-Host "4: Find last login information"
    Write-Host "5: List Installed applications"
    Write-Host "6: List user email addresses"
    Write-Host ""
    Write-Host "Leave blank and press ENTER to go back"
    
}


## Main Loop ##
do {

    Show-MainMenu
    $UserInput = Read-Host "Please make a selection"
    switch ($UserInput){
        
        '1' {Show-DiscoveryMenu}
        '2' {Show-DesktopMenu}
        '3' {Show-ADMenu}
        '4' {Show-DHCPMenu}
        '5' {Show-BLMenu}
        '6' {Show-PrinterMenu}
        '7' {Show-O365Menu}
        'Q' {"Terminating AutoAdmin..."}
    }
    Pause
}
until ($UserInput -eq 'q')