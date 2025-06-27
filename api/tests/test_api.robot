*** Settings ***
Library    RequestsLibrary

*** Variables ***
${URL}     http://localhost:3000

*** Test Cases ***
Verifica se servidor está rodando
    Create Session    api    ${URL}
    ${resp}=    Get Request    api    /
    Status Should Be    200
