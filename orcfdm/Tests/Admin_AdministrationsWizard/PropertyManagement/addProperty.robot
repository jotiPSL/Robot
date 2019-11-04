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

*** Variables ***
${random_string}=    Generate Random String    12    [LOWER]
${low}    Generate Random String    12    [LOWER] 
    
*** Keywords ***
Property ID
    [Arguments]    ${PropertyID}
    Input Text    id=propertyId    ${PropertyID}
    
Proerty Name
    [Arguments]    ${ProertyName}
    Input Text    id=propertyName    ${ProertyName}
    
Property City
    [Arguments]    ${PropertyCity}
    Input Text    id=city    ${PropertyCity}
    
Property State
    [Arguments]    ${State}
    Select From List By Label   id=listStates    ${State}
    #Select From List By Label   id=listStates    Georgia
    
Property Type
    [Arguments]    ${proptype}
    Select From List By Label    id=lstFruits345   ${proptype}
    #Select From List By Label   id=listStates    Georgia
    
    
Property Zip
    [Arguments]    ${PropertyZip}
    Input Text    id=zip    ${PropertyZip}
    
    
Property Status
    [Arguments]    ${status}
    Select From List By Label    id=propertyStatus    ${status}
    
Fha Number
    [Arguments]    ${fhaNumber}
    Input Text    xpath=//*[@id='fhaNumber0']    ${fhaNumber}
       
Loan Type
    [Arguments]    ${loanType} 
    Select From List By Label    xpath=(.//*[@id='listOfLoanTypes0'])    ${loanType}
    
Loan Amount
    [Arguments]    ${loanAmount}
    Input Text    id=loanAmount0    ${loanAmount}
    
Lender Name
    [Arguments]    ${lenderName}
    Input Text    xpath=//*[@id='lenderName0']   ${lenderName}
    
#Closing Date
    #[Arguments]    ${closingDate}
    #Input Text    id=endDate0    ${closingDate}
    
Closing Date
    
    #Click Element    xpath=.//*[@id='endDate0']
    #${CurrentDate}    Get Current Date    result_format=%d/%m/%Y increment=-1 day
    Set Focus To Element    xpath=//*[@id='endDate0']  
    Press Keys    xpath=.//*[@id='ui-datepicker-div']/table/tbody/tr[2]/td[1]/a    09/11/2019
    #${closingDate} =  Get Current Date    result_format=%m/%d/%y
    #Input text    xpath=//*[@id='endDate0']    ${closingDate}
    #Execute Javascript    document.querySelector("[xpath=//*[@id='endDate0']]").removeAttribute("readOnly")
    #Execute Javascript    document.querySelector("xpath=//*[@id='endDate0']").removeAttribute("onchange")
    #Execute Javascript    document.querySelector("xpath=//*[@id='endDate0']").setAttribute("value","${closingDate}")
    #Input text    xpath=.//*[@id='endDate0']    ${closingDate}
    
    

    
Save
    
    Click Button    xpath=(.//*[@id='button2'])   
    
Save & Add New Loan
    
    Click Button    xpath=(.//*[@id='btnAdd'])    
    

        

*** Test Cases ***

AddProperty
    Login
    Click Admin
    Click ManageProperty and Loans
    sleep    10s
    Click Button    id=addRightBtn
    ${pid} =    Generate Random String    12    [LOWER]
    Property ID    ${pid}
    Proerty Name    robot20055prop
    Property City    duluth
    Property State    Georgia
    Property Zip    30024    
    Property Type    Assisted Living
    Property Status    Active
    #Save
   

    Save & Add New Loan
    sleep    3s  
    Fha Number    robfha2005
    Loan Type    241a
    Loan Amount    100
    Lender Name    lender01
    Closing Date
    Click Button    xpath=(.//*[@id='btnAdd'])
    
    





 
    
    
    
    
    
       
    
         
    
    
    