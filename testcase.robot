*** Settings ***
Library    SeleniumLibrary
Resource    resource/additem.robot
Resource    resource/todotask.robot
Resource    resource/completed.robot

*** Test Cases ***
Open Website and check the Website should be home page
    Open Website
    Check Website Should be Home Page

Create Task1
    Create Task1
    Click Add Bottom

Create Task2
    Create Task2
    Click Add Bottom

Going To-Do Task
    Going to To-Do Task

Checkbox Task1 at To-Do Task
    Click Checkbox Task1 at To-Do Task

Delete Task2 at To-Do Task
    Delete Task2 at To-Do Task

Going to Completed 
    Going Completed Nav

Delete Completed Task1
    Delete Complete Task1