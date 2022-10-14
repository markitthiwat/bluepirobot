*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://abhigyank.github.io/To-Do-List/
${delay}    1

*** Keywords ***
Open Website
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${delay}

Check Website Should be Home Page
    Title Should Be    To-Do List

Check To-Do Task Nav

Check Completed Nav

Check Add Icon
