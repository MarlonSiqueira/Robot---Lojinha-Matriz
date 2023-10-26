*** Settings ***
Resource    ../main.robot

*** Variables ***
&{add_produto}
...    Botao_Alterar_Camisa=//a[@href='/produto/camisa-p-dourada-2023'][contains(.,'Alterar')]

*** Keywords ***
E acessarei o produto escolhido
    Sleep    1
    Wait Until Element Is Visible    ${add_produto.Botao_Alterar_Camisa}    10
    Click Element                    ${add_produto.Botao_Alterar_Camisa}