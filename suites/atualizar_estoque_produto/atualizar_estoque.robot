*** Settings ***
Resource    ../../resources/main.robot
Resource    ../../resources/shared/setup_teardown.robot
Test Setup    Acessar o site e logar
Test Teardown    Fechar Navegador

*** Test Cases ***
ID02 - Atualizar Estoque Produto
    Dado que estou na tela home e acessarei festa atual
    E clico em Estoque
    E clico em Abaster_Visualizar
    E acessarei o produto escolhido
    Dado que estou na tela alterar_produto e atualizarei a quantidade 3 vezes
    Capture Page Screenshot
    