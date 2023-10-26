*** Settings ***
Resource    ../main.robot

*** Variables ***
&{cadastrogeral_festa}
...    Botao_Estoque=//a[@class='btn dropdown-toggle'][contains(.,'Estoque')]
...    Botao_Vendas=//a[@class='btn dropdown-toggle'][contains(.,'Vendas')]
...    Botao_Cadastrar_Usuarios=//a[@class='btn dropdown-toggle'][contains(.,'Cadastrar Usuários')]
...    Botao_Editar_Festa=//a[@href='/editar_festa/2023']
...    Botao_Voltar=//a[@class='btn btn-info'][contains(.,'Voltar')]
...    Opcao_Cadastrar_Vendedor=//a[@href='/cadastrar_vendedor/2023']
...    Opcao_Abastecer_Visualizar=//a[@href='/add_produto/2023']

*** Keywords ***
E clico em Cadastrar Usuario
    Wait Until Element Is Visible    ${cadastrogeral_festa.Botao_Cadastrar_Usuarios}    10
    Click Element                    ${cadastrogeral_festa.Botao_Cadastrar_Usuarios}

E clico em Cadastrar Vendedor
    Wait Until Element Is Visible    ${cadastrogeral_festa.Botao_Cadastrar_Usuarios}    10
    Click Element                    ${cadastrogeral_festa.Opcao_Cadastrar_Vendedor}

E clico em Estoque
    Wait Until Element Is Visible    ${cadastrogeral_festa.Botao_Estoque}    10
    Click Element                    ${cadastrogeral_festa.Botao_Estoque}

E clico em Abaster_Visualizar
    Wait Until Element Is Visible    ${cadastrogeral_festa.Opcao_Abastecer_Visualizar}    10
    Click Element                    ${cadastrogeral_festa.Opcao_Abastecer_Visualizar}