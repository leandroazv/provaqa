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

Feature: CT03_dados_inválidos

    # Feature Description : 
    # EU COMO usuário do sistema.
    # DESEJO realizar o cadastro de novos usuários.
    # PARA QUE seja possível armazenar e gerenciar seus dados.

        Cenário: CT03_1 - Acessar plataforma

            Dado que abro o navegador "Google Chrome"
             Quando abro a url "http://prova.stefanini-jgr.com.br/teste/qa/"
             Então a plataforma de Cadastro é carregada no navegador

        Cenário: CT03_2 - Cadastrar usuário com campos com dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "@@@#!!!"
              E preencho o campo "E-mail" com "@@@@ @@@@@@ "
              E preencho o campo "Senha" com " @ @"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E verifico a mensagem de erro em vermelho "Por favor, insira um e-mail válido." localizada abaixo do campo "E-mail"
              E verifico a mensagem de erro em vermelho "A senha deve conter ao menos 8 caracteres." localizada abaixo do campo "Senha"
              E atualizo a página

           
        Cenário: CT03_3 - Cadastrar usuário com campo Nome preenchido de dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando  preencho o campo "Nome" com "mariaM."
              E preencho o campo "E-mail" com "le@gmail.com"
              E preencho o campo "Senha" com "123@30911"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E atualizo a página

                         
        Cenário: CT03_4 Cadastrar usuário com campo Nome preenchido de dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando  preencho o campo "Nome" com "M Maria"
              E preencho o campo "E-mail" com "le@gmail.com"
              E preencho o campo "Senha" com "123@30911"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E atualizo a página

        Cenário: CT03_5 Cadastrar usuário com campo Nome preenchido de dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "M .maria"
              E preencho o campo "E-mail" com "le@gmail.com"
              E preencho o campo "Senha" com "123@30911"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E atualizo a página
              
        Cenário: CT03_6 Cadastrar usuário com campo Nome preenchido com números

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando  preencho o campo "Nome" com "1 1 1"
              E preencho o campo "E-mail" com "le@gmail.com"
              E preencho o campo "Senha" com "123@30911"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um nome completo." localizada abaixo do campo "Nome"
              E atualizo a página

        Cenário: CT03_7 Cadastrar usuário com campo E-mail preenchido de dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Zé da Silva"
              E preencho o campo "E-mail" com "@@@@ zé"
              E preencho o campo "Senha" com "8s88888558"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um e-mail válido." localizada abaixo do campo "E-mail"
              E atualizo a página

        Cenário: CT03_8 Cadastrar usuário com campo E-mail preenchido de dados inválidos

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com " d @  d.com"
              E preencho o campo "Senha" com "888M0000s558"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "Por favor, insira um e-mail válido." localizada abaixo do campo "E-mail"
              E atualizo a página


        Cenário: CT03_9 Cadastrar usuário com usando um e-mail com mais de 64 caracteres

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com "leandroleandroleandroleandroleandroleandroleandroleandro@gmaildoemailgigante.com"
             Então verifico a mensagem de erro em vermelho "Por favor, seu e-mail deve ser menor que 64 caracteres." localizada abaixo do campo "E-mail"
              E atualizo a página


        Cenário: CT03_10 Cadastrar usuário com campo Senha com menos de 8

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com "leandro@gmail.com"
              E preencho o campo "Senha" com "8 1"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "A senha deve conter ao menos 8 caracteres." localizada abaixo do campo "E-mail"
              E atualizo a página
        
        Cenário: CT03_11 Cadastrar usuário com campo Senha com mais de 20 caracteres

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com "leandro@gmail.com"
              E preencho o campo "Senha" com "123456789999ssss20"
             Então verifico a mensagem de erro em vermelho "A senha deve conter no máximo 20 caracteres." localizada abaixo do campo "Senha"
              E atualizo a página

        Cenário: CT03_12 Cadastrar usuário com campo Senha com espaço

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Fulano de Tal"
              E preencho o campo "E-mail" com "leandro@gmail.com"
              E preencho o campo "Senha" com "        1"
              E clico no botão "Cadastrar"
             Então verifico a mensagem de erro em vermelho "A senha deve conter apenas números, letras ou caracteres" localizada abaixo do campo "E-mail"
              E atualizo a página
              E fecho o navegador
   

