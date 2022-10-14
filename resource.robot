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

Create Task1 and click the add bottom
    Input Text    //*[@id="new-task"]    Task1
    Set Selenium Speed    ${delay}
    Click Element    //*[@id="add-item"]/button
    Set Selenium Speed    ${delay}

Check To-Do Task Nav for Approve Task1
    Click Element    //html/body/div/div/div[1]/a[2]/span
    Set Selenium Speed    ${delay}
    Click Element    //*[@id="incomplete-tasks"]/li/label/span[4]
    Set Selenium Speed    ${delay}

Check Completed Nav
    Click Element    //html/body/div/div/div[1]/a[3]/span
    Set Selenium Speed    ${delay}
    Textarea Value Should Be    //*[@id="completed-tasks"]/li/span    Task1
    Set Selenium Speed    ${delay}

Delete Complete Task1
    Click Element    //*[@id="1"]/span