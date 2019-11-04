*** Settings ***
Documentation     Add new property to property list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot  
*** Keywords ***
Property ID
    [Arguments]    ${PropertyID}
    Input Text    id=propertyId    ${PropertyID}
    
SearchTrans    
    Click Element    xpath=(.//*[@id='searchArea']/div/div/div[4]/div[2]/button[1])
    



*** Test Cases ***
 
Trans_Search by_propID
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Transaction Search
    sleep    10s  
    Search_PropID    100200100    
    SearchTrans
    sleep    10s
    #Close Browser
    
Trans_Search by_transaction_type_status
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Transaction Search
    sleep    10s  
    Transaction Type    Change in Master Tenant 
    Transaction Status     Approved  
    SearchTrans
    sleep    10s
    Click Element    xpath=(.//*[@id='editB'])
    
    #Close Browser  
      
Trans_Search by_transDateRange
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    Transaction Search
    sleep    10s
    # Set Focus To Element    xpath=//*[@id='startDate']  
    # Press Keys    xpath=.//*[@id='ui-datepicker-div']/table/tbody/tr[1]/td[3]/a    10/01/2019
    # Set Focus To Element    xpath=.//*[@id='endDate'] 
    # Press Keys    xpath=.//*[@id='ui-datepicker-div']/table/tbody/tr[4]/td[1]/a    10/20/2019
    Press Keys    xpath=//*[@id='startDate']     10/05/1985
    Press Keys    xpath=//*[@id='endDate']      10/23/2019
    SearchTrans
    Close Browser 
    #Click Element  xpath=//*[@id='startDate']
    #Press Keys  xpath=.//*[@id='ui-datepicker-div']/div/div|{10/01/2018}
    
    