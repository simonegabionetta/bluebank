Feature: Autenticação de usuário
    Como usuário do sistema
    Quero fazer login com minhas credenciais
    Para acessar minhas funcionalidades pessoais

Scenario: Login com credenciais válidas
    Given que o usuário está na página de login
    When ele preenche credenciais válidas
    Then ele deve ser redirecionado para dashboard

Scenario: Login com email inválido
    Given que o usuário está na página de login
    When ele preenche email inválido
    Then uma mensagem de erro "Email ou senha inválidos" deve ser exibida

Scenario: Login com senha inválida
    Given que o usuário está na página de login
    When ele preenche senha inválida
    Then uma mensagem de erro "Email ou senha inválidos" deve ser exibida