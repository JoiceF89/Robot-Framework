*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}   https://www.amazon.com.br/

*** Keywords ***   
Acessar a página do youtube
    Open Browser    url=${URL}   browser=${BROWSER}
Pesquisar por celulares
    Input Text    locator=id=twotabsearchtextbox   text=celulares
    Click Element    locator=id=nav-search-submit-text
Validar o resultado
    Wait Until Page Contains    text=Resultados
