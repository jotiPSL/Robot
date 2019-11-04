*** Settings ***
Documentation     Add new property to property list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot  
*** Keywords ***



*** Test Cases ***
 
PropName_Search by_propID
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Property Name Search
    sleep    10s  
    Search_PropID    100200100    
    Search
    sleep    10s
    #Close Browser
    
PropName_Search by_fha_number
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Property Name Search
    sleep    10s  
    Search_FhaNumber    fha-200    
    Search
    Close Browser  
PropName_Search by_propName_loanType
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Property Name Search
    sleep    10s  
    Search_PropName    psltest100
    Search LoanType     223a7          
    Search
    sleep    10s
    Click Element    xpath=(.//*[@id='editB'])
      
      
    
    
PropName_Search by_closing_date
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Property Name Search
    sleep    10s
    Press Keys    xpath=//*[@id='startDate']     10/05/2018
    Press Keys    xpath=//*[@id='endDate']      10/16/2019
    Search
    sleep    10s
    Click Element    xpath=(.//*[@id='editB'])
    sleep     10s
    Close Browser 
    

