from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Add new Roles
...    
...    
        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***
AddRoles Button
    Click Element    id=addRoleBtn 
    
Enter RoleName
    [Arguments]    ${enterRole name} 
    Input Text    id=roleNameVal    ${enterRole name} 
    
Click RightName
    Click Element    id=rightNameVal
    
Select Module
    [Arguments]    ${Module}
    Select From List By Label   id=lstFruits3    ${Module}
    
Back from Modulepage 
    Click element    id=backBtnForm
    
 
AddRole Submit
    Click Element    id=submitbtndis
Back Button
    Click Element    id=backBtn 
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=(//*[@id='rolesDataDetails_filter']/label/input)    ${send search data}  
    #Input Text    class=dataTables_filter    ${sendsearchdata}      
   
    
*** Test Cases ***

Add Role
    Login
    Click Admin
    Click Roles
    AddRoles Button
    Enter RoleName    role001134
    Click RightName
    sleep    10s
    Click element    xpath=//*[@id='checkValue']    
    Back from Modulepage
    Select Module    Reports
    AddRole Submit
    Back Button
       
    

    

    
    
    
    

    
    