
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

cap = DesiredCapabilities().FIREFOX
cap["marionette"] = False
browser = webdriver.Firefox(capabilities=cap, executable_path="C:\\path\\to\\geckodriver.exe")
browser.get('http://google.com/')
browser.quit()
*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../Resources/resources.robot


*** Test Cases ***
Valid Login

    Open Browser To Login Page
    Input Username    FHA232/GARTHURPROD
    Input Password    Cescrew813!
    Submit Credentials
    Welcome Page Should Be Open
    Logout

    