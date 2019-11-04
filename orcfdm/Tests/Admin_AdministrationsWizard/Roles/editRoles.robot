from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Edit Roles
...    
...    
        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***

    
Enter editRoleName
    [Arguments]    ${enterRole name} 
    Input Text    id=editRoleName    ${enterRole name} 
    
Click editRightName
    Click Element    id=editRightName
    
Select editModule
    [Arguments]    ${Module}
    Select From List By Label   id=lstFruits34    ${Module}
    
Back from editModulepage 
    Click element    id=getDone
    
 
editRole Submit
    Click Element    id=submitbtndis123
Back Button
    Click Element    id=backBtn 
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=(//*[@id='rolesDataDetails_filter']/label/input)    ${send search data} 
     
Click Editbutton
    Click Element    xpath=//*[@id='editB']/i    
     
   
    
*** Test Cases ***

Edit Role
    Login
    Click Admin
    Click Roles
    sleep    10s
    Search    role001134
    Click Editbutton
    Enter editRoleName    editrole11123
    Select editModule    User Management
    editRole Submit
    sleep    10s
    Search     editrole11123       
    
    
    
    

    
       
    

    

    
    
    
    

    
    