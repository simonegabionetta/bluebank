Feature: Logout de usuário

Scenario: Logout com sucesso
    Given que o usuário está logado no sistema
    When ele clica no botão "Sair"
    Then ele deve ser deslogado com sucesso

