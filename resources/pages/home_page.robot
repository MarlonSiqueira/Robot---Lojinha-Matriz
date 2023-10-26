*** Settings ***
Resource    ../main.robot

*** Variables ***
&{home}
...    Botao_Festa_Atual=//a[@href='/cadastrogeral_festa/2023'][contains(.,'Festa Atual')]
...    Botao_Anos_Anteriores=//a[@href='/festas/anos_anteriores'][contains(.,'Anos Anteriores')]
...    Botao_Alterar_Usuarios=//a[@href='/alterar_usuarios/'][contains(.,'Alterar Usuários')]
...    Botao_Acessar_Logs=//a[@href='/listar_logs/'][contains(.,'Acessar Logs')]
...    Botao_Usuario_Logado=//a[@href='#']
...    Botao_Alterar_Senha=//a[@href='/change_password/']
...    Botao_Botao_Deslogar=//a[@href='/logout/']

*** Keywords ***
Dado que estou na tela home e acessarei festa atual
    Wait Until Element Is Visible    ${home.Botao_Festa_Atual}    10
    Click Element                    ${home.Botao_Festa_Atual}

Dado que estou na tela home e acessarei anos anteriores
    Wait Until Element Is Visible    ${home.Botao_Anos_Anteriores}    10
    Click Element                    ${home.Botao_Anos_Anteriores}

Dado que estou na tela home e acessarei alterar usuarios
    Wait Until Element Is Visible    ${home.Botao_Alterar_Usuarios}    10
    Click Element                    ${home.Botao_Alterar_Usuarios}

Dado que estou na tela home e acessarei acessar logs
    Wait Until Element Is Visible    ${home.Botao_Acessar_Logs}    10
    Click Element                    ${home.Botao_Acessar_Logs}
