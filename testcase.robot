*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
Open Website and check the Website should be home page
    Open Website
    Check Website Should be Home Page

Create New Task
    Create Task1 and click the add bottom

Check To-Do Task
    Check To-Do Task Nav for Approve Task1

Check Complete
    Check Completed Nav

Close Browser
    Close Browser