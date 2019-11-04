from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Add new property to property list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***
AddModule Button
    Click Element    id=addRightBtn 
    
Enter ModuleName
    [Arguments]    ${enterModule name} 
    Input Text    id=moduleName    ${enterModule name}  
Add Module Submit
    Click Element    id=submitbtndisa 
Back Button
    Click Element    id=backBtn1 
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=//*[@id='moduleListsData_filter']/label/input    ${send search data}  
    #Input Text    class=dataTables_filter    ${sendsearchdata}      
   
    
*** Test Cases ***

Add Module
    Login
    Click Admin
    Click Modules
    AddModule Button 
    Enter ModuleName    modulerobot1344
    Add Module Submit
    Back Button
    sleep    10s
    Search    modulerobot1344
    
    
    

    
    
    
    

    
    