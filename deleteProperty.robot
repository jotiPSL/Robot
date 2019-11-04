from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Documentation     Add new property to property list
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
    
Click delete
    Click Element    xpath=//*[@id='deleteB']/i

*** Test Cases ***

Delete Property
    Login
    Click Admin
    Click ManageProperty and Loans
    sleep    30s
    Search property    800034109
    Click delete
    sleep     30s
    Search property    800034109
    