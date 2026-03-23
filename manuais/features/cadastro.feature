Scenario: Cadastro com todos os campos válidos
    Given que o usuário está na página de Cadastro
    When ele preenche todos os campos obrigatórios corretamente
    Then o cadastro deve ser realizado com sucesso
    And usuário deve ser redirecionado para página de dashboard

Scenario: Cadastro com campos obrigatórios vazios
    Given que o usuário está na página de Cadastro
    When ele envia o formulário sem preencher os campos obrigatórios
    Then deve ser exibido uma mensagem de erro para cada campo obrigatorio

Scenario: Cadastro com email duplicado
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar um email duplicado
    Then deve ser exibido uma mensagem de erro informando o formato do email correto

Scenario: Cadastro com email com formato inválido
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar um email inválido
    Then deve ser exibido uma mensagem de erro "Email já cadastrado"


Scenario: Cadastro com CPF duplicado
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar um CPF duplicado
    Then deve ser exibido uma mensagem de erro "CPF já cadastrado"


Scenario: Cadastro com CPF com formato inválido
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar um CPF inválido
    Then deve ser exibido uma mensagem de erro "CPF deve estar no formato: XXX.XXX.XXX-XX"


Scenario: Cadastro com senha e confirmação de senha diferentes
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar com senha e confirmaçao de senha diferente
    Then deve ser exibido uma mensagem de erro "Senhas não coincidem

Scenario: Cadastro com telefone com formato inválido
    Given que o usuário está na página de Cadastro
    When ele tenta cadastrar um telefone inválido
    Then deve ser exibido uma mensagem de erro "Telefone deve estar no formato: (XX) XXXXX-XXXX"