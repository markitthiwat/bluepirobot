*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
Open Azuki Website and check azuki should be home page
    Open Website
    Check Website Should be Home Page

