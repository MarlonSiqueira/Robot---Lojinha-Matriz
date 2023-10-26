*** Settings ***
Resource    ../main.robot

*** Variables ***
&{login}
...    Input_Usuario_Login=//*[@id="nome_usuario"]
...    Input_Senha_Usuario=//*[@id="formContent"]/form/input[3]
...    Botao_Entrar=//*[@id="formContent"]/form/input[4]
...    Link_Esqueceu_Senha=//*[@id="formContent"]/form/a

*** Keywords ***
Dado que eu acesse a lojinha
    Open Browser    ${geral.URL}    ${geral.Browser}
    Maximize Browser Window

E faça o login
    Wait Until Element Is Visible    ${login.Botao_Entrar}           10
    Input Text                       ${login.Input_Usuario_Login}    ${usuario.Login}
    Input Text                       ${login.Input_Senha_Usuario}    ${usuario.Senha}
    Click Element                    ${login.Botao_Entrar}

