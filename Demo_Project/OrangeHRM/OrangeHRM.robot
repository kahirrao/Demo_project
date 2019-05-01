*** Settings *** 
 Library    SeleniumLibrary

Suite Setup    Log    I am inside Test suite setup
Test Setup    Log   I am inside Testcase setup
Test Teardown        Log   I am inside Testcase teardown
Suite Teardown  Log        I am inside Test suite teardown

Force Tags   Sanity    

*** Test Cases ***
# MyFirstLoginTest   
    
  # [Tags]    Smoke
  # OpeBrowser       
  # Set Browser Implicit Wait    7    
  # LoginKW
  # Click Element     id=welcome
  # Sleep  5
  # Click Link        link=Logout           
  # Close Browser   
  # Log    This test is performed by %{username} on %{os}
  # Log    Dislpay ${TEST NAME}    
  

    # Close Browser
    
3rdTestCase
    
    Log    All test pass
    
4thTestCase
    
    Log    All test pass
         
         
*** Keywords ***
OpeBrowser
     SeleniumLibrary.Open Browser    ${url}       gc   
LoginKW 
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      name=Submit   
  
*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/    
@{CREDENTIALS}     Admin     admin1223
&{LOGINDATA}    username=Admin    password=admin123