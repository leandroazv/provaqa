#########################################################
##
## Estória: Cadastro_de_usuários
## Nome: Tela para Cadastro de Usuários
## QA: Leandro Azevedo
## Data da criação: 17/04/2021
## Última alteração: -
## Épico: - 
##
##
##

Feature: CT02_cadastro_de_usuários_campo_vazio

    # Feature Description : 
    # EU COMO usuário do sistema.
    # DESEJO realizar o cadastro de novos usuários.
    # PARA QUE seja possível armazenar e gerenciar seus dados.

        Cenário: CT02_1 - Acessar plataforma

            Dado que abro o navegador "Google Chrome"
             Quando abro a url "http://prova.stefanini-jgr.com.br/teste/qa/"
             Então a plataforma de Cadastro é carregada no navegador

        Cenário: CT02_2 - Cadastrar usuário com campos vazios

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "O campo Nome é obrigatório." localizada abaixo do campo "Nome"
              E verifico a mensagem de erro em vermelho "O campo E-mail é obrigatório." localizada abaixo do campo "E-mail"
              E verifico a mensagem de erro em vermelho "O campo Senha é obrigatório." localizada abaixo do campo "Senha"
              E atualizo a página

        Cenário: CT02_3 - Cadastrar usuário com campos com espaço

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com " "
              E preencho o campo "E-mail" com " "
              E preencho o campo "Senha" com " "
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E verifico a mensagem de erro em vermelho "O campo E-mail é obrigatório." localizada abaixo do campo "E-mail"
              E verifico a mensagem de erro em vermelho "A senha deve conter ao menos 8 caracteres" localizada abaixo do campo "Senha"
              E atualizo a página

           
        Cenário: CT02_4 - Cadastrar usuário com campo Nome vazio

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "E-mail" com "le@gmail.com"
              E preencho o campo "Senha" com "123@30911"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "O campo Nome é obrigatório." localizada abaixo do campo "Nome"
              E atualizo a página

        Cenário: CT02_5 - Cadastrar usuário com campo E-mail vazio

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "Senha" com "888888558"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "O campo E-mail é obrigatório." localizada abaixo do campo "E-mail"
              E atualizo a página

        Cenário: CT02_6 - Cadastrar usuário com campo Senha vazio

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com "le@gmail.com"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "O campo Senha é obrigatório." localizada abaixo do campo "Senha"
              E atualizo a página
              E fecho o navegador
   

