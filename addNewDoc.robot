from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

*** Settings ***
Library    SeleniumLibrary    
Documentation     Add new Document type 
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot
 


    
*** Keywords ***
New Document Type
    [Arguments]    ${new document name} 
    Input Text    id=documentType    ${new document name}  
   
Enter New_DocType
    [Arguments]    ${enter newDocument Type} 
    Input Text    id=documentType    ${enter newDocument Type}  
Select Document Type
    [Arguments]    ${master DocType} 
    Select From List By Label    id=DocTypeMaster    ${master DocType} 
Select Folder Type
    [Arguments]    ${select folder} 
    Select From List By Label    id=folderSelect    ${select folder}     

    
Save&Add New
    Click Element    id=saveBtn
     
Cancel
    Click Element    id=btn btn-warning
    
Delete
    Click Element    id=.//*[@id='deleteDocumentType3']/a/i    
   
    
*** Test Cases ***

Add Document Type
    Login
    Click Admin
    Click Document Type
    sleep    10s
    Enter New_DocType    robotDoc45
    Select Document Type    Production
    #Select Document Type    Asset Management
    sleep     5s
    #Click Element    id=folderSelect
    #Select Folder Type    Closing
    Save&Add New
    sleep     15s
    # Choose Ok On Next Confirmation      
    # Click Element   //a[contains(.,'OK')]
    # Confirm Action 
    Handle Alert     
    Cancel
    
Delete Document Type
    Login
    Click Admin
    Click Document Type
    sleep    5s
    Delete
    Cancel
     
   
  