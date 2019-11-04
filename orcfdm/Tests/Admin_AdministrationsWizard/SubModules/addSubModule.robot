from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Add new SubModule to list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot
*** Variables ***


*** Keywords ***
Click AddSubmodule
    Click Element    xpath=(.//*[@id='addRightBtn'])
    
Click Submit
    Click Element    id=submitbtndisa
    
Click Back
    Click Element    id=backBtn1
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=//*[@id='moduleListsData_filter']/label/input    ${send search data}
    
Enter Submodule Name
    [Arguments]    ${enterSubmoduleName} 
    Input Text    id=subModuleName    ${enterSubmoduleName}
Select Module name
    [Arguments]    ${Modulelist}
    Select From List By Label   id=lstFruits345    ${Modulelist}
    
  

*** Test Cases ***

Add SubModule
    Login
    Click Admin
    Click SubModule
    Click AddSubmodule
    Enter Submodule Name    submodrobot1
    Select Module name    Reports
    Click Submit
    Click Back
    sleep    10s
    Search    submodrobot
    
    
    
    