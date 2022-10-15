*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Going Completed Nav
    Click Element    //html/body/div/div/div[1]/a[3]/span
    Set Selenium Speed    ${delay}

Check Task1 at Completed
    Textarea Value Should Be    //html/body/div/div/div[4]/ul/li/span   Task1

Delete Complete Task1
    Click Button    //html/body/div/div/div[4]/ul/li/button
    Set Selenium Speed    ${delay}

Going to To-Do Task
    Click Element    //html/body/div/div/div[1]/a[2]/span
    Set Selenium Speed    ${delay}

Going to Add Item
    Click Element    //html/body/div/div/div[1]/a[1]/span
    Set Selenium Speed    ${delay}