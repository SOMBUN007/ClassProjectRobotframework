*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait unti element is ready then click element
    [Arguments]    ${Locator}
    Wait Until Keyword Succeeds    5x    2    Click Element    ${Locator}

Wait until element is ready then input text
    [Arguments]    ${Locator}    ${Text}
    Wait Until Keyword Succeeds    5x    2    Input Text    ${Locator}    ${Text}

Wait untill page contains element also then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    5x    2   Page should contain    ${expected_text}
