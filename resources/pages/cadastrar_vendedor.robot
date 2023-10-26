*** Settings ***
Resource    ../main.robot

*** Variables ***
&{cadastrar_vendedor}
...    Input_Nome=//input[@id='nome']
...    Input_Sobrenome=//input[contains(@id,'sobrenome')]
...    Input_Email=//input[contains(@placeholder,'Digite o e-mail do vendedor')]
...    Botao_Criar=//input[contains(@value,'Criar')]
...    Botao_Voltar=//a[@href='/cadastrogeral_festa/2023'][contains(.,'Voltar')]

*** Keywords ***
E preencho os dados de 1 novo vendedor
    Wait Until Element Is Visible    ${cadastrar_vendedor.Input_Nome}        10
    Input Text                       ${cadastrar_vendedor.Input_Nome}        ${usuario_novo.nome_novo_usuario}
    Input Text                       ${cadastrar_vendedor.Input_Sobrenome}   ${usuario_novo.sobrenome_novo_usuario}
    Input Text                       ${cadastrar_vendedor.Input_Email}   ${usuario_novo.email_novo_usuario}
    Click Element                    ${cadastrar_vendedor.Botao_Criar}

E preencho os dados de ${Quantidade} novos vendedores
    FOR    ${i}    IN    RANGE ${Quantidade}
        Wait Until Element Is Visible        ${cadastrar_vendedor.Input_Nome}        10

        IF    "${i}" == 0
            Input Text                       ${cadastrar_vendedor.Input_Nome}        ${usuario_novo.nome_novo_usuario}a
            Input Text                       ${cadastrar_vendedor.Input_Email}       a${usuario_novo.email_novo_usuario}
        ELSE IF    "${i}" == 1
            Input Text                       ${cadastrar_vendedor.Input_Nome}        ${usuario_novo.nome_novo_usuario}b
            Input Text                       ${cadastrar_vendedor.Input_Email}       b${usuario_novo.email_novo_usuario}
        ELSE IF    "${i}" == 2
            Input Text                       ${cadastrar_vendedor.Input_Nome}        ${usuario_novo.nome_novo_usuario}c
            Input Text                       ${cadastrar_vendedor.Input_Email}       c${usuario_novo.email_novo_usuario}
        END

        Input Text                           ${cadastrar_vendedor.Input_Sobrenome}   ${usuario_novo.sobrenome_novo_usuario}
        Click Element                        ${cadastrar_vendedor.Botao_Criar}
        Sleep    2.5
    END