*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Open Website
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${delay}

Check Website Should be Home Page
    Title Should Be    To-Do List

Create Task1
    Input Text    //*[@id="new-task"]    Task1
    Set Selenium Speed    ${delay}

Create Task2
    Input Text    //*[@id="new-task"]    Task2
    Set Selenium Speed    ${delay}

Click Add Bottom
    Click Element    //*[@id="add-item"]/button
    Set Selenium Speed    ${delay}
