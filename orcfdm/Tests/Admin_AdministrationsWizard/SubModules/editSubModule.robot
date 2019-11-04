from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Edit SubModule
...    
...    
       
Resource    ../../../Resources/resources.robot
 

*** Keywords ***
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=//*[@id='moduleListsData_filter']/label/input    ${send search data}
    
Click Edit Button
    Click Element    xpath=//*[@id='editB']/i
    
Click Submit
    Click Element    id=submitbtndisa1
    
EditSubmodule Name
    [Arguments]    ${enter edit submodule name}
    Input Text    id=editSubModuleName    ${enter edit submodule name}
    
Select EditSubmod Module name
    [Arguments]    ${Modulelist}
    Select From List By Label   id=lstFruits34    ${Modulelist}
    
    
*** Test Cases ***
Edit SubModule
    Login
    Click Admin
    Click SubModule
    sleep    10s
    Search    submodrobot12
    Click Edit Button  
    EditSubmodule Name    submodrobot123
    sleep     10s
    Click Submit
    
    


    
