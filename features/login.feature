#language:pt

Funcionalidade: Login

    @logout
    Cenário: Login com sucesso

        Quando eu faço login com "zumbi@dospalmares.com.br" e "pwd123"
        Então devo ver "Quilombo" no menu lateral da área logada


        Esquema do Cenário: Tentando logar

            Quando eu faço login com "<email>" e "<senha>"
            Então devo ver a mensagem de alerta "<texto>" "<tipo>"

            Exemplos:
            | email                    | senha  | texto                        | tipo   | 
            |                          | abc123 | Opps. Cadê o email?          | info   |
            | eu@papito.io             |        | Opps. Cadê a senha?          | info   |
            | zumbi@dospalmares.com.br | 123456 | Usuário e/ou senha inválidos | danger |
            | 404@yahoo.com            | abc123 | Usuário e/ou senha inválidos | danger |