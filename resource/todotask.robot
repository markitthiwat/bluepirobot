*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Going To-Do Task
    Click Element    //html/body/div/div/div[1]/a[2]/span
    Set Selenium Speed    ${delay}

Check Task1 on To-Do Task
    Textarea Value Should Be   //html/body/div/div/div[3]/ul/li[1]/label/span[1]    Task1

Check Task2 on To-Do Task
    Textarea Value Should Be    //html/body/div/div/div[3]/ul/li[2]/label/span[1]    Task2

Click Checkbox Task1 at To-Do Task
    Click Element    //*[@id="incomplete-tasks"]/li[1]/label/span[4]
    Set Selenium Speed    ${delay}

Delete Task2 at To-Do Task
    Click Button    //html/body/div/div/div[3]/ul/li/button
    Set Selenium Speed    ${delay}