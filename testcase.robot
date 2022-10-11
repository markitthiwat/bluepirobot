*** Settings ***
Library    Selenium2Library
Resource    resource.robot

*** Test Cases ***
Open Azuki Website and check azuki should be home page
    Open Azuki Website
    Check Azuki Should be Home Page

Azuki World
    Click to World Navigator

Azuki Alley Story Start
    Click to Alley Story
    Going to Alley Story Page 2
    Going to Alley Story Page 3
    Going to Alley Story Final Page
    Close Browser
