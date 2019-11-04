from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Edit Right
...    
...    
        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***

    
Enter editRightName
    [Arguments]    ${enterRight name} 
    Input Text    id=rightName    ${enterRight name} 
    
Enter editRight Description
    [Arguments]    ${enterRightDescription name} 
    Input Text    id=rightDesc    ${enterRightDescription name} 
    
Select editAccessType
    [Arguments]    ${AccessType}
    Select From List By Label   id=rightAccessType1    ${AccessType}
    
Enter editFolderPatter 
    [Arguments]    ${enterFolderPattern} 
    Input Text    id=folderPatterns    ${enterFolderPattern}  
    
editSubmit
    Click Element    id=submitbtnd  
       
Search
    [Arguments]    ${sendsearchdata}
    Input Text    xpath=(//*[@id='example1_filter']/label/input)    ${send search data} 
     
Click Edit
    Click Element    xpath=(//*[@id='rightsList']/tr/td[7]/a/i)    
   
    
*** Test Cases ***

Add Module
    Login
    Click Admin
    Click Rights
    sleep    10s
    Search    robotright004
    sleep    5s
    Click Edit
    sleep    10s
    Enter editRightName    robotright004
    Enter editRight Description    edit robot right 004
    editSubmit
    sleep    10s
    Search    robotright004    
    
    
    
    
    
    
    
    
    
    
    
       
    
    

    

    

    
    
    
    

    
    