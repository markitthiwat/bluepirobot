*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.azuki.com
${delay}    1

*** Keywords ***
Open Azuki Website
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${delay}

Check Azuki Should be Home Page
    Title Should Be    Azuki

Click to World Navigator
    Click Element    //*[@id="__next"]/div[1]/div/div[2]/ul/li[3]/a
    Set Selenium Speed    ${delay}

Verify Azuki should be world page
    Title Should Be    Azuki

Click to Alley Story
    Click Element    //*[@id="__next"]/main/div[1]/div/div/div[1]/div[2]/div[2]/div/h3[2]/span
    Set Selenium Speed    2

Going to Alley Story Page 2
    Click Element    //*[@id="__next"]/main/div[1]/div[5]/div/div/div

Going to Alley Story Page 3
    Click Element    //*[@id="__next"]/main/div[1]/div[5]/div/div/div

Going to Alley Story Final Page
    Click Element    //*[@id="__next"]/main/div[1]/div[5]/div/div/div