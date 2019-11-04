from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime  
Documentation     Add new property to property list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot
*** Keywords ***
Add_New_ProdDoc
    Click Link    xpath=.//*[@id='multipleupload']/a
select_PropID
    [Arguments]    ${selectProp} 
    Select From List By Label    id=propertytype    ${selectProp}
    
select_FHAnumber
    [Arguments]    ${FHAnumber} 
    Select From List By Label    id=indexvalues    ${FHAnumber}
    
select_DocType
    [Arguments]    ${DocType} 
    Select From List By Label    id=doctype    ${DocType}
    
select Folder
    [Arguments]    ${folderPath}
    Input Text    xpath=.//*[@id='foltxt']    ${folderPath}
    
Continue First
    Click Element    id=btnContFirst
    
Continue Second
    Click Element    id=btnContSecond
 
*** Test Cases ***
add_prod_pdf
    Login
    Click Admin
    Click Document Management
    Add_New_ProdDoc  
    sleep    10s  
    select_PropID    2019001
    select_FHAnumber    fha-1026
    select_DocType    13-1-C Bylaws
    Continue First
    sleep       5s
    select Folder    "/1026/1026/Production/Underwriting"
    sleep    5s
    Continue Second
    
   
    
 
    
    