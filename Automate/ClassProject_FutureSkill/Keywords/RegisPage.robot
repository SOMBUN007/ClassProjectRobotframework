*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
#User register from future skill homepage
    #CommonKeywords.Wait unti element is ready then click element    Locator=//button[text()="สมัครสมาชิก"]
User register to futurn skill platfrom with ${Email} and ${Firsthname} and ${Lastname} and ${Phone} and ${FirstPass} and ${SecoundPass}
    CommonKeywords.Wait unti element is ready then click element    Locator=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@name="email"]    Text=${Email}
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@name="firstName"]    Text=${Firsthname}
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@name="lastName"]    Text=${Lastname}
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@name="phoneNumber"]    Text=${Phone}
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@name="newPassword"]     Text=${FirstPass}
    CommonKeywords.Wait until element is ready then input text      Locator=//input[@placeholder="ยืนยันรหัสผ่าน"]    Text=${SecoundPass}
User accepted conditions
    CommonKeywords.Wait unti element is ready then click element    Locator=//input[@name="consent"]