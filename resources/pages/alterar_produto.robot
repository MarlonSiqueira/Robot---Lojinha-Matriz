*** Settings ***
Resource    ../main.robot
Library    Screenshot

*** Variables ***
&{alterar_produto}
...    Input_Abastecer_Quantidade=//input[contains(@id,'abastecer_quantidade')]
...    Botao_Salvar=//button[@type='submit'][contains(.,'Salvar')]
...    Input_Preco_Venda=//input[contains(@id,'id_preco_venda')] 

*** Keywords ***
Dado que estou na tela alterar_produto e atualizarei a quantidade ${Quantidade} vezes
    ##Loop está começando em 1 e está indo até a quantidade escolhida pelo usuário em suites/atualizar_estoque.robot por conta do ${Quantidade} + 1
    FOR    ${i}    IN RANGE    1    ${Quantidade} + 1 
        Wait Until Element Is Visible    ${alterar_produto.Input_Abastecer_Quantidade}    10
        Input Text                       ${alterar_produto.Input_Abastecer_Quantidade}    ${i}
        Capture Page Screenshot
        Click Element                    ${alterar_produto.Botao_Salvar}
        Sleep    1
        Capture Page Screenshot
        Exit For Loop If    ${i} == ${Quantidade}   # Sai do loop se a quantidade for igual a escolhida na suite
        E acessarei o produto escolhido
        END


Dado que estou na tela alterar_produto e atualizarei a quantidade e o preco_venda de uma camisa
    ##Loop está começando em 1 e está indo até a quantidade escolhida pelo usuário em suites/atualizar_estoque.robot por conta do ${Quantidade} + 1
    Wait Until Element Is Visible    ${alterar_produto.Input_Abastecer_Quantidade}    10
    Input Text                       ${alterar_produto.Input_Abastecer_Quantidade}    1
    Input Text                        ${alterar_produto.Input_Preco_Venda}    50
    Capture Page Screenshot
    Click Element                    ${alterar_produto.Botao_Salvar}
    ${mensagem_xpath} =    Get Text    //h2[contains(@id,'swal2-title')]

    Run Keyword If    '${mensagem_xpath}' == 'Produto camisa atualizado com sucesso'
    ...    Log    A mensagem é a mensagem de sucesso esperada.
    ...    ELSE
    ...    Fail    A mensagem não corresponde ao retorno de sucesso esperada.
    Sleep    1
    Capture Page Screenshot
        
Dado que estou na tela alterar_produto e não conseguirei atualizar a quantidade e o preco_venda de uma camisa
    ##Loop está começando em 1 e está indo até a quantidade escolhida pelo usuário em suites/atualizar_estoque.robot por conta do ${Quantidade} + 1
    Wait Until Element Is Visible    ${alterar_produto.Input_Abastecer_Quantidade}    10
    Input Text                       ${alterar_produto.Input_Abastecer_Quantidade}    0
    Input Text                        ${alterar_produto.Input_Preco_Venda}    50
    Capture Page Screenshot
    Click Element                    ${alterar_produto.Botao_Salvar}
    ${mensagem_xpath} =    Get Text    //h2[contains(@id,'swal2-title')]

    Run Keyword If    '${mensagem_xpath}' == 'Produto camisa não teve nada alterado'
    ...    Log    A mensagem é a mensagem de sucesso esperada.
    ...    ELSE
    ...    Fail    A mensagem não corresponde ao retorno de sucesso esperada.
    Sleep    1
    Capture Page Screenshot

Dado que estou na tela alterar_produto e não conseguirei o preco_venda de uma camisa
    ##Loop está começando em 1 e está indo até a quantidade escolhida pelo usuário em suites/atualizar_estoque.robot por conta do ${Quantidade} + 1
    Wait Until Element Is Visible    ${alterar_produto.Input_Preco_Venda}    10
    Input Text                        ${alterar_produto.Input_Preco_Venda}    33
    Capture Page Screenshot
    Click Element                    ${alterar_produto.Botao_Salvar}
    ${mensagem_xpath} =    Get Text    //h2[contains(@id,'swal2-title')]

    Run Keyword If    '${mensagem_xpath}' == 'Preço de Compra deve ser menor do que Preço de Venda'
    ...    Log    A mensagem é a mensagem de sucesso esperada.
    ...    ELSE
    ...    Fail    A mensagem não corresponde ao retorno de sucesso esperada.
    Sleep    1
    Capture Page Screenshot