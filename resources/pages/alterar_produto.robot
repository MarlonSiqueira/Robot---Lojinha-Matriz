*** Settings ***
Resource    ../main.robot

*** Variables ***
&{alterar_produto}
...    Input_Abastecer_Quantidade=//input[contains(@id,'abastecer_quantidade')]
...    Botao_Salvar=//button[@type='submit'][contains(.,'Salvar')]

*** Keywords ***
Dado que estou na tela alterar_produto e atualizarei a quantidade ${Quantidade} vezes
    ##Loop está começando em 1 e está indo até a quantidade escolhida pelo usuário em suites/atualizar_estoque.robot por conta do ${Quantidade} + 1
    FOR    ${i}    IN RANGE    1    ${Quantidade} + 1 
        Log    Valor de i: ${i}
        Wait Until Element Is Visible    ${alterar_produto.Input_Abastecer_Quantidade}    10
        Input Text                       ${alterar_produto.Input_Abastecer_Quantidade}    ${i}
        Click Element                    ${alterar_produto.Botao_Salvar}
        Sleep    0.5
        E acessarei o produto escolhido
        Run Keyword If    '${i}' == ${Quantidade}+1    Exit For Loop
        END
