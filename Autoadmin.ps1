##########################
#       AutoAdmin        #
# Created by Kyle Harris #
##########################


#Main menu loop generation and selection logic 
function Show-MainMenu { 

    Clear-Host
    Write-Host "========AutoAdmin - Main Menu=======" -ForegroundColor Green
    Write-Host "1: Discovery"
    Write-Host "2: Desktop Support"
    Write-Host "3: Active Directory"
    Write-Host "4: DHCP"
    Write-Host "5: Bitlocker"
    Write-Host "6: Printers"
    Write-Host "7: Office 365"
    Write-Host "Q: Press 'Q' to quit."



}

do {

    Show-MainMenu
    $UserInput = Read-Host "Please make a selection"
    switch ($UserInput){
        
        '1' {"You Chose Option 1"}
        '2' {"You Chose Option 1"}
        '3' {"You Chose Option 1"}
        '4' {"You Chose Option 1"}
        '5' {"You Chose Option 1"}
        '6' {"You Chose Option 1"}
        '7' {"You Chose Option 1"}
        'Q' {"Terminating AutoAdmin..."}
    }
    Pause
}
until ($UserInput -eq 'q') 