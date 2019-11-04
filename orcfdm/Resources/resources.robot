*** Settings ***
Documentation  Resouce file with reusable keywords and variables.

...    
...        The system specific keywords created here from our own     
...        domain specific language. They utilize keywords provided 
...        by the imported SeleniumLibrary.
...    

Library  SeleniumLibrary

*** Variables ***
${SERVER}           96.127.89.78:9911/TransacessImagingORCFDM
${SERVER2}        160.1.66.112:9911/TransacessImagingORCFDM_TA
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     FHA232/GARTHURPROD
${VALID PASSWORD}    Cescrew813!
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/Getlogin
${GETLOGIN URL}   http://${SERVER}/Getlogin
${ERROR URL}      http://${SERVER}/
${local_ie_driver}    C:\Selenium Drivers\IEDriverServer.exe


*** Keywords ***
Open Browser To Login Page
   
    Open Browser    ${LOGIN URL}    ${BROWSER}    
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Go To GetLogin Page
    Go To    ${GETLOGIN URL}

Login Page Should Be Open
    Title Should Be    TransAccess Imaging

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    id=username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Submit Credentials
    Click Button    id=Submit

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    TransAccess Imaging- Landing page
Login 
    Open Browser To Login Page
    Input Username    FHA232/GARTHURPROD
    Input Password    Cescrew813!
    Submit Credentials
    Welcome Page Should Be Open    


Logout
    Click Element    xpath=(//div[2]/ul/li[5]/a)
    [Teardown]    Close Browser


Click Admin
    Click Element     xpath=(//div[2]/ul/li[2]/a)
    
Click ManageProperty and Loans
    Click Element    xpath=(//div[1]/div[2]/div/div/div[1]/div[2]/div/a)
    
Click Modules    
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[1])
        
Click SubModule
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[2])

Click Roles
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[3])
    
Click Rights
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[4])
    
Click Index Type
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[5])
    
Click Document Type
    Click Element    xpath=(//*[@id='collapseAdminSecond']/div/a[6])
    
Click Home
    Click Element     xpath=(html/body/center/div[2]/ul/li[1]/a) 
    
Click HomeSearch
    Click Element    xpath=(//*[@id='searchArea']/div/div/div[1]/div/div/select) 
    
#Click Fha_Number_Search
    #Click Element     xpath=(html/body/center/div[2]/ul/li[1]/a)  
    
Select Search Type
    [Arguments]    ${search_type} 
    Select From List By Label    xpath=(.//*[@id='searchArea']/div/div/div[1]/div/div/select)    ${search_type} 
     
Search_FhaNumber
    [Arguments]    ${FhaNumber}
    Input Text    id=fhaNum    ${FhaNumber}
    
Search_PropID
    [Arguments]    ${PropertyID}
    Input Text    id=propertyId    ${PropertyID}
    
Search_PropName
    [Arguments]    ${PropName}
    Input Text    id=propertyNm    ${PropName}
    
Search_LoanAmt
    [Arguments]    ${LoanAmt}
    Input Text    id=loanAmt    ${LoanAmt}
    
Search typeOfDoc
    [Arguments]    ${typeOfDoc} 
    Select From List By Label    id=docType    ${typeOfDoc} 
    
Search LoanType
    [Arguments]    ${LoanType} 
    Select From List By Label    id=loanType    ${LoanType}
     
    
Search
    Click Element     xpath=(.//*[@id='searchArea']/div/div/div[4]/div/div[3]/button[1]) 
    
Refresh
    Click Element    xpath=(.//*[@id='searchArea']/div/div/div[4]/div/div[3]/button[2]) 
    
Click Details
    Click Element    xpath=(.//*[@id='details'])

Click EditDocument
    Click Element    xpath=(.//*[@id='collapseOne']/div/div[2]/div/table/tbody/tr/td/input[1])  
    
Transaction Type
     [Arguments]    ${transactionType} 
    Select From List By Label    id=propertyType    ${transactionType}
    
Transaction Status
    [Arguments]    ${transactionStatus} 
    Select From List By Label    id=transactionStatus    ${transactionStatus}
    
Click Document Management
    Click Element    id=DocumentManagement    
    
    
         

    

    



    
    
