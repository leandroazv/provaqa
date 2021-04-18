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

Feature: CT04_ordenação_id

    # Feature Description : 
    # EU COMO usuário do sistema.
    # DESEJO realizar o cadastro de novos usuários.
    # PARA QUE seja possível armazenar e gerenciar seus dados.

        Cenário: CT04_1 - Acessar plataforma

            Dado que abro o navegador "Google Chrome"
             Quando abro a url "http://prova.stefanini-jgr.com.br/teste/qa/"
             Então a plataforma de Cadastro é carregada no navegador

        Cenário Outline: CT04_2 - Cadastrar usuário com sucesso
            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com <Nome>
              E preencho o campo "E-mail" com <E-mail>
              E preencho o campo "Senha" com <Senha>
             Então clico no botão "Cadastrar"

        Examples:
                  | Nome               | E-mail            | Senha      |
                  | Fulano Maria       | maria@gmail.com   | 11111111   |
                  | Fulano Vera        | mca@gmail.com     | 15555511   |
                  | Fulano Jose        | ca@gmail.com      | 123131412  |
                  | Fulano Vinicius    | md@gmail.com      | 99991211   |
                  | Fulano Douglas     | douglas@gmail.com | 99991211   |
                  | Zé da Silva        | mcsa@gmail.com    | 99991211   |
                  | Joana Marques      | mjoao@gmail.com   | 99swwwaa11 |
                  | Anotnia da Azevedo | antonia@gmail.com | 99@@@@qq11 |
                  | Terezinha Silva    | tereza@gmail.com  | 99@@@@qq11 |
                  | Fulano Ícaro       | mjoao@gmail.com   | 666612981  |

                  
        Cenário Outline:  CT04_3 - Consultar usuários cadastrados
            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando seleciono a tabela "Usuários Cadastrados"
              E seleciono a coluna "Id"
              E verifico se os dados apresentados estão iguais a <Id>
              E seleciono a coluna "Nome"
              E verifico se os dados apresentados estão iguais a <Nome>
              E seleciono o coluna "E-mail"
              E verifico se os dados apresentados estão iguais a <E-mail>


        Examples:
                  | Id | Nome             | E-mail            |
                  | 1  | Fulano Maria     | maria@gmail.com   |
                  | 2  | Fulano Vera      | mca@gmail.com     |
                  | 3  | Fulano Jose      | ca@gmail.com      |
                  | 4  | Fulano Vinicius  | md@gmail.com      |
                  | 5  | Fulano Douglas   | douglas@gmail.com |
                  | 6  | FJoão da Silva   | mcsa@gmail.com    |
                  | 7  | FJoão da MArques | mjoao@gmail.com   |
                  | 8  | FJoão da Azevedo | mjoao@gmail.com   |
                  | 9  | Terezinha Silva  | tereza@gmail.com  |
                  | 10 | Fulano Icaro     | mjoao@gmail.com   |


        Cenário : CT04_4 - Excluir usuário cadastrado

            Dado que há dados na tabela "Usuários cadastrados"
             Quando seleciono o coluna "Id" e a linha com o valor igual "3"
              E clico no botão "Excluir"
              E seleciono o coluna "Id" e a linha com o valor igual "5"
              E clico no botão "Excluir"
              E seleciono o coluna "Id" e a linha com o valor igual "8"
              E clico no botão "Excluir"
             Então verifico que as linhas de usuário são eliminada da tabela


        Cenário Outline:  CT04_5 - Consultar após exclusão e verificar ordenação
            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando seleciono a tabela "Usuários Cadastrados"
              E seleciono a coluna "Id"
              E verifico se os dados apresentados estão iguais a <Id>
              E seleciono a coluna "Nome"
              E verifico se os dados apresentados estão iguais a <Nome>
              E seleciono o coluna "E-mail"
             Então verifico se os dados apresentados estão iguais a <E-mail>


        Examples:
                  | Id | Nome             | E-mail           |
                  | 1  | Fulano Maria     | maria@gmail.com  |
                  | 2  | Fulano Vera      | mca@gmail.com    |
                  | 4  | Fulano Vinicius  | md@gmail.com     |
                  | 6  | FJoão da Silva   | mcsa@gmail.com   |
                  | 7  | FJoão da MArques | mjoao@gmail.com  |
                  | 9  | Terezinha Silva  | tereza@gmail.com |
                  | 10 | Fulano Icaro     | mjoao@gmail.com  |


        Cenário: CT04_6 - Cadastrar usuário com Sucesso

            Dado que eu estou na funcionalidade de cadastro de usuário
             Quando preencho o campo "Nome" com "Jurema Silva"
              E preencho o campo "E-mail" com "jurema@gmail.com"
              E preencho o campo "Senha" com "soujurema123"
              E verifico que o dados do campo senha são do tipo "password"
              E clico no botão "cadastrar"
             Então verifico que o usuário está cadastrado e sendo apresentado na tabela "Usuários cadastrados"
              E verifico que os coluna "id" está preenchida com "11" como o último ítem da listagem da tabela
              E verifico que os coluna Nome está preenchido com "Jurema Silva"
              E verifico que os coluna e-mail está preenchido com "jurema@gmail.com"
 
             



