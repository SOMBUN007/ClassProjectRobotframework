*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/HomepageKeywords.robot
Resource    ../Keywords/RegisPage.robot
Variables    ../Resources/Config/Config.yaml
Variables    ../Resources/Testdata/Testdata.yaml
Suite Setup    Open Browser    ${BaseURL}    browser=gc
Suite Teardown    Close Browser

*** Test Cases ***
As a user, I want to Register and then have oth
    When RegisPage.User register to futurn skill platfrom with ${Email} and ${Firthname} and ${Lastname} and ${Phone} and ${Firstpassword} and ${Secoundpassword}
    Then HomepageKeywords.Future skill should display homepage and display massage as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"