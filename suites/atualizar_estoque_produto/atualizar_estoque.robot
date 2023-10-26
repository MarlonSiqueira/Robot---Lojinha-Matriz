*** Settings ***
Resource    ../../resources/main.robot
Resource    ../../resources/shared/setup_teardown.robot
Test Setup    Acessar o site e logar
Test Teardown    Fechar Navegador

*** Test Cases ***
ID02 - Atualizar Estoque Produto
    [Tags]    AtualizarEstoque
    Dado que estou na tela home e acessarei festa atual
    E clico em Estoque
    E clico em Abaster_Visualizar
    E acessarei o produto escolhido
    Dado que estou na tela alterar_produto e atualizarei a quantidade 3 vezes

ID 03 - Atualizar Estoque e Preço Venda Produto
    [Tags]    AtualizarEstoqueEPrecoVenda
    Dado que estou na tela home e acessarei festa atual
    E clico em Estoque
    E clico em Abaster_Visualizar
    E acessarei o produto escolhido
    Dado que estou na tela alterar_produto e atualizarei a quantidade e o preco_venda de uma camisa

ID 04 - Não Atualizar Estoque e Preço Venda Produto
    [Tags]    NaoAtualizarEstoqueEPrecoVenda
    Dado que estou na tela home e acessarei festa atual
    E clico em Estoque
    E clico em Abaster_Visualizar
    E acessarei o produto escolhido
    Dado que estou na tela alterar_produto e não conseguirei atualizar a quantidade e o preco_venda de uma camisa

ID 05 - Não Atualizar Preço Venda Produto
    [Tags]    NaoAtualizarPrecoVenda
    Dado que estou na tela home e acessarei festa atual
    E clico em Estoque
    E clico em Abaster_Visualizar
    E acessarei o produto escolhido
    Dado que estou na tela alterar_produto e não conseguirei o preco_venda de uma camisa