*** Settings ***
Resource    ../../resources/main.robot
Resource    ../../resources/shared/setup_teardown.robot
Test Setup    Acessar o site e logar
Test Teardown    Fechar Navegador

*** Test Cases ***
ID01 - Cadastrando Usuario Vendedor
    Dado que estou na tela home e acessarei festa atual
    E clico em Cadastrar Usuario
    E clico em Cadastrar Vendedor
    E preencho os dados de 3 novos vendedores
    Capture Page Screenshot
    