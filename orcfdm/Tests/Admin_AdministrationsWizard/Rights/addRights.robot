from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Add new Roles
...    
...    
        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***
AddRight Button
    Click Element    id=addRightBtn 
    
Enter RightName
    [Arguments]    ${enterRight name} 
    Input Text    id=rightNameVal    ${enterRight name} 
    
Enter Right Description
    [Arguments]    ${enterRightDescription name} 
    Input Text    id=rightDescriptionVal    ${enterRightDescription name} 
    
Select AccessType
    [Arguments]    ${AccessType}
    Select From List By Label   id=rightAccessType    ${AccessType}
    
Enter FolderPatter 
    [Arguments]    ${enterFolderPattern} 
    Input Text    id=folderIdVal    ${enterFolderPattern}  
    
Submit
    Click Element    id=submitbtndisa  
    
Back Button
    Click Element    id=backBtn1 
    
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=(//*[@id='example1_filter']/label/input)    ${send search data}  
    #Input Text    class=dataTables_filter    ${sendsearchdata}      
   
    
*** Test Cases ***

Add Module
    Login
    Click Admin
    Click Rights
    AddRight Button
    Enter RightName    robotright004
    Enter Right Description    robot test right 
    Select AccessType    Create
    Enter FolderPatter    /*
    Submit
    Back Button
    sleep    10s
    Search    robotright004
    
    
    
       
    
    

    

    

    
    
    
    

    
    