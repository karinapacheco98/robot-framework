** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_URL}  
${SITE_GOOGLE}  https://www.google.com
${USUARIO_EMAIL}  karinapacheco@teste.com
${USUARIO_SENHA}  123456

** Keywords **

Abrir Site
    Open Browser  ${SITE_URL}  chrome
    Wait  10

Clicar em login
    Click Element  xpath://a[@href='/login']

Digitar email
    Input Text  id:user  karinapacheco@teste.com

Digitar Senha
    Input Text  id:password  123456

Clicar em Logar
    Click Element  id:btnLogin

Verificar Login Sucesso
    ${textoAtual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${textoAtual}  Login realizado 

Print
    Capture Page Screenshot

Wait
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

** Test Cases **

Cenário 1: Acessando o site do Qazando
    [Tags]  Teste1
    Abrir Site
    Print
    Clicar em login
    Wait  10
    Digitar email
    Digitar Senha
    Wait  10
    Print
    Clicar em Logar
    Print
    Wait  10
