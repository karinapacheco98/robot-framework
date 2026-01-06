** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_GOOGLE}  https://www.google.com
${USUARIO_EMAIL}  karinapacheco@teste.com
${USUARIO_SENHA}  123456

** Keywords **

Abrir Site Google
    Open Browser  ${SITE_GOOGLE}  chrome

Abrir Site
    Open Browser  ${SITE_URL}  chrome

Aguardar carregamento  
    [Arguments]  ${segundos}
    Sleep  ${segundos}

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

** Test Cases **

Cenário 1: Acessando o site do Qazando
    [Tags]  Teste1
    Abrir Site
    Aguardar carregamento  3s
    Print
    Clicar em login
    Aguardar carregamento  1s
    Digitar email
    Digitar Senha
    Aguardar carregamento  1s
    Print
    Clicar em Logar
    Aguardar carregamento  15s
    Print
    Verificar Login Sucesso

Cenário 2: Acessando o site do Google
    [Tags]  Teste2
    Abrir Site Google
    Aguardar carregamento
    Clicar em login
    Aguardar carregamento
    Digitar email
    Digitar Senha
    Aguardar carregamento
    Clicar em Logar
    Aguardar carregamento
    Verificar Login Sucesso
