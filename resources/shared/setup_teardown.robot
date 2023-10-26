*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar o site e logar
    Dado que eu acesse a lojinha
    E faça o login

Fechar Navegador
    Close Browser