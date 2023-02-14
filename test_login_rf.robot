*** Test Cases ***
Library  SeleniumLibrary

Documentation    Suite description #automated tests for scout website
${NAME OF VARIABLE} variable
${LOGIN URL}      https://scouts-test.futbolkolektyw.pl/en
${BROWSER}        Chrome
${SIGNINBUTTON} xpath=//*[(text()='Sign in')]
${EMAILINPUT}   xpath=//*[@id='login']
${PASSWORDINPUT} xpath=//*[@id='password']
${PANELLOGO} xpath=//*[@id="__next"]/div[1]/main/div[3]/div[1]/div/div[1]
Login to the system
 Open login page
 Type in email
 Type in password
 Click on the submit button
 Assert Dashboard
[Teardown]    Close browser
****** Keywords ***
Open login page
     Open Browser ${LOGIN URL}  ${BROWSER}
     Title Should Be Scouts panel - sign in
Type in email
     Input Text  ${EMAILINPUT} user07@getnada.com
Type in password
     Input Text  ${PASSWORDINPUT} Test-1234
Click on the submit button
     Click Element xpath=//*[(text()='Sign in')]
Assert Dashboard
     wait until element is visible ${PANELLOGO}
     title should be Scouts panel
     Capture Page screenshot alert.png