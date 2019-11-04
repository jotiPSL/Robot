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
Edit Button
    Click Element    xpath=(.//*[@id='editB']/i)
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=//*[@id='moduleListsData_filter']/label/input    ${send search data}  

    
*** Test Cases ***
EditModule
    Login
    Click Admin
    Click Modules
    Sleep     10
    Search    modulerobot1344
    Edit Button
    Sleep     10
    Input Text    id=editModuleName    ${11111001}
    Click Element    id=submitbtndisa1
    Sleep     10
    Search    modulerobot1344
    
     
   





    