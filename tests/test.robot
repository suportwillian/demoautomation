*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}            https://demo.automationtesting.in/Index.html
${browser}        edge
${email}          test@servidor.com
${input_email}    //input[contains(@id, 'email')]
${btn_enter}      //a[contains(@href, 'Register.html')]//img[@src="enter.png"]

*** Test Cases ***
Sing up
    Open Browser                         ${url}            ${browser}
    Wait Until Element Is Visible        ${input_email}
    Input Text                           ${input_email}    ${email}
    Wait Until Element Is Visible        ${btn_enter}
    Click Element                        ${btn_enter}