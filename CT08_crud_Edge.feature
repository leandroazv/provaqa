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

Feature: CT08_crud_Edge

    # Feature Description : 
    # EU COMO usuário do sistema.
    # DESEJO realizar o cadastro de novos usuários.
    # PARA QUE seja possível armazenar e gerenciar seus dados.

        Cenário: CT08_1 - Acessar plataforma

            Dado que abro o navegador "Internet Explorer"
             Quando abro a url "http://prova.stefanini-jgr.com.br/teste/qa/"
             Então a plataforma de Cadastro é carregada no navegador

        Cenário: CT05_2 - Cadastrar usuário com Sucesso

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "M. Leandro"
              E preencho o campo "E-mail" com "leandro.azcompany@gmail.com"
              E preencho o campo "Senha" com "12345678"
              E verifico que o dados do campo senha são do tipo "password"
              E clico no botão "cadastrar"
             Então verifico que o usuário está cadastrado e sendo apresentado na tabela "Usuários cadastrados"
              E verifico que os coluna "id" está preenchida
              E verifico que os coluna Nome está preenchido com "Leandro Azevedo da Silva"
              E verifico que os coluna e-mail está preenchido com "leandro.azcompany@gmail.com"
 
        Cenário: CT05_3 - Excluir usuário cadastrado e fechar

            Dado que há dados na tabela "Usuários cadastrados"
             Quando clico no botão "Excluir"
             Então verifico que a linha do usuário é eliminada da tabela
              E fecho o navegador
   
   

