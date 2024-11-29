*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
Future skill should display homepage and display massage as "${expected_message}"
    CommonKeywords.Wait untill page contains element also then verify text    ${expected_message}


