*** Settings ***
Library    SeleniumLibrary
Documentation     Add new property to property list
...    
...    
...    
...
...        
Resource    ../../../Resources/resources.robot  
*** Keywords ***
Property ID
    [Arguments]    ${PropertyID}
    Input Text    id=propertyId    ${PropertyID}
    
Click Replace Document
    Click Element    xpath=(.//*[@id='collapseOne']/div/div[2]/div/table/tbody/tr/td/input[2])  

*** Test Cases ***

FHA_Search by_propID
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s  
    Search_PropID    100200100    
    Search
    sleep    10s
    Close Browser    
   
FHA_Search by_fha_number
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s  
    Search_FhaNumber    fha-200    
    Search
    Close Browser  
FHA_Search by_propName_EditDoc
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s  
    Search_PropName    psltest100
    Search typeOfDoc     13-3-A Certification          
    Search
    sleep    10s
    Click Details
    Wait Until Page Contains  Edit Document
    Comment    This is a new Window
    Sleep    20s
    Select Window    locator=new
    #Select Window    Title=TransAccess Imaging- TransAccess Imaging - Google Chrome
    #Wait Until Element Is Visible    //button[@value='Edit Document']
    #Click Element    //button[@value='Edit Document']
    Click EditDocument
    Sleep     20s
    Select From List By Label    id=doctype    13-1-C Bylaws 
    sleep    60s 
    Click Element    xpath=(.//*[@id='folderId']/option[51986])
    sleep    5s  
    Click Element    name=button
    #Click Element    class="btn btn-success waves-effect waves-button waves-float"
    Wait Until Page Contains    Edit Document Profile successful
    Close Browser    
      
    
    
FHA_Search by_closing_date
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s
    # Set Focus To Element    xpath=//*[@id='startDate']  
    # Press Keys    xpath=.//*[@id='ui-datepicker-div']/table/tbody/tr[1]/td[7]/a    10/05/2018
    # Set Focus To Element    xpath=.//*[@id='endDate'] 
    # Press Keys    xpath=.//*[@id='ui-datepicker-div']/table/tbody/tr[3]/td[4]/a    10/16/2019
    # Search
    # Close Browser 
    Press Keys    xpath=//*[@id='startDate']     10/05/2018
    Press Keys    xpath=//*[@id='endDate']      10/16/2019 
    Search 
    

FHA_Search by_propName_docType
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s  
    Search_PropID    100200100
    Search typeOfDoc     13-3-A Certification          
    Search
    
FHA_Search by_propName_ReplaceDoc
    Login
    sleep    5s
    Click HomeSearch
    sleep    5s
    Select Search Type    FHA Number Search
    sleep    10s  
    Search_PropID    100200100
    Search typeOfDoc     13-3-A Certification          
    Search
    sleep    10s
    Click Details
    Wait Until Page Contains  Edit Document
    Comment    This is a new Window
    Sleep    60s
    Select Window    locator=new
    Click Replace Document
    #sleep     10s
    #Click Element    xpath=(.//*[@id='browseFile']) 
    sleep    10s 
    Choose File    xpath=(.//*[@id='browseFile'])    C:/Users/jkotla/Desktop/Jyothi/TestDocuments/pdf docs/samplePDF.pdf  
    Click Element    id=attachFile  
    sleep     5s
    Click Element    xpath=(.//*[@id='confirmReplace']/input[1])
    Wait Until Page Contains    File has been successfully replaced  
    
         

    
    
    
    
    

    
    
