*** Settings ***
Library    SeleniumLibrary

### Data ###
Resource    data/geral.robot
Resource    data/usuario_novo.robot
Resource    data/usuario.robot

### Shared ###
Resource    shared/setup_teardown.robot

### Pages ###
Resource    pages/login_page.robot
Resource    pages/home_page.robot
Resource    pages/cadastrogeral_festa.robot
Resource    pages/cadastrar_vendedor.robot
Resource    pages/add_produto.robot
Resource    pages/alterar_produto.robot