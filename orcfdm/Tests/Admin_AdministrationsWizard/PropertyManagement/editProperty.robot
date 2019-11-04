from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Documentation     Add new property to property list
...    
...    
...    
...
...   
...         
Resource    ../../../Resources/resources.robot
 
*** Keywords ***
   
Search property
    [Arguments]    ${sendsearchdata}
    Input Text   xpath=//*[@id='propertyListsData_filter']/label/input    ${sendsearchdata}
    
Click EditButton
    Click Element    xpath=//*[@id='editB']/i
    
edit State
    [Arguments]    ${editState}
    Select From List By Label    xpath=//*[@id='elistStates']    ${editState}
    
propertyInfo Update
    Click Element    id=buttonsTr

*** Test Cases ***

Edit Property    
    Login
    Click Admin
    Click ManageProperty and Loans
    sleep    40s
    Search property    800034109
    sleep    5s
    Click EditButton
    sleep    10s
    edit State    Georgia
    propertyInfo Update 
    sleep    40s
    
    
    
     