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
    

LoginToGmail
    Set Tags    Regression
    Remove Tags    Regression
    SeleniumLibrary.Open Browser   https://accounts.google.com/      gc   
    Input Text         name=identifier    ahirraok3@gmail.com  
    Click Element      id=identifierNext    
    # Press Keys         name=identifier    ENTER
    sleep   5
    Input Password     name=password     Kalpesh@90
    Sleep  5
    Click Element      id=passwordNext 
    # Press Keys         name=password    ENTER  
    sleep   6   
    # Close Browser
      
    # Close Browser
    
# 3rdTestCase
    
    # Log    All test pass
    
# 4thTestCase
    
    # Log    All test pass
         
         
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