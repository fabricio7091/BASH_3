#!/bin/bash
#
# Exemplo de uso do comando "case"
# Exemplo de como um script deve ser documentado
#
# Escrito por Diego Tumelero para a disciplina de Shell Script



principal() {           # Função principal do programa
    clear               # limpa a tela
    echo "[1] Mostrar a localização atual do usuário no sistema de arquivos"             # imprime na tela as opções que serão
    echo "[2] Mostrar o tipo de um arquivo"                                              # abordadas no comando case
    echo "[3] Criar um diretório"
    echo "[4] Apagar um diretório não vazio"                                             # abordadas no comando case
    echo "[5] ler 2 números e indicar qual é o maior deles e qual é o menor"             # abordadas no comando case
    echo "[6] Exibir as últimas linhas de um arquivo"                                    # abordadas no comando case
    echo "[7] Exibir as primeiras linhas de um arquivo"                                  # abordadas no comando case
    echo "[8] Mostrar a localização de um comando específico utilizar which ou whereis"  # abordadas no comando case
    echo "[9] Mostra um diretório informado pelo usuário em formato de árvore"           # abordadas no comando case
    echo "[10] Copiar um arquivo para um outro diretório"                                # abordadas no comando case
    echo "[11] Mover um arquivo para outro diretório"                                    # abordadas no comando case
    echo "[12] Sair"                                                                     # abordadas no comando case
    echo
    echo -n "Qual a opcao desejada ? "
    read opcao          # faz a leitura da variável "opcao", 
                        # que será utilizada no comando case
                        # para indicar qual a opção a ser utilizada

                        # caso o valor da variável "opcao"...
    case $opcao in
        1)              # seja igual a "1", então faça as instruções abaixo
            clear
            fun_1 ;;      # executa os comandos da função "laranja"

                        # os 2 ";;" (ponto e virgula)
                        # significam que chegou ao final
                        # esta opção do comando case
        2)
            clear
            fun_2 
            read pause ;;  # usa a função martelo e finaliza a opção do case com ";;"

        3)
            fun_3 ;;

        4)
            clear
            fun_4 ;;                                                 #usa a função martelo e finaliza a opção do case com ";;"

        5)
            clear
             fun_5 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        6)
            clear
            fun_6 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        7)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"

        8)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"

        9)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"

       10)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"

       11)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"

       12)
            clear
            exit ;;

        *)              # esta opçao existe para caso o usuário digite um 
                        # valor diferente de 1, 2 ou 3
            clear
            echo "Opcao desconhecida."
            read pause
            principal   # volta para o menu inicial
            ;;
    esac
}

fun_1() {             # função da opção laranja
    clear
    pwd 
    read pause        # usado para pausar a execução do script
    principal           # volta para a função principal
}

fun_2() {             # função da opção laranja
    clear
    echo "informe o nome do arquivo"
    read nome_arq
    file $nome_arq 
    read pause        # usado para pausar a execução do script
    principal           # volta para a função principal
}

fun_3() {             # função da opção laranja
    clear
    echo "informe o nome da pasta que você quer criar"
    read nome_pasta
    mkdir $nome_pasta 
    read pause        # usado para pausar a execução do script
    principal           # volta para a função principal
}

fun_4() {             # função da opção laranja
    clear
    echo "informe o nome da pasta que você quer apagar"
    read nome_pas
    rm -rf $nome_pas 
    read pause        # usado para pausar a execução do script
    principal           # volta para a função principal
}

fun_5() {             # função da opção martelo
    clear
    echo "digite o primeiro numero"
            read num_1;
            echo "digite o segundo numero"
            read num_2;
            
            if [ $num_1 -gt $num_2 ];
            then
            echo "este numero $num_1 é maior que o este $num_2"
            else
            echo "este numero $num_2 é maior que o este $num_1"
            fi                          
    read pause
    principal
}

fun_6() {             # função da opção martelo
    clear
    echo "informe o nome do arquivo"
    read arq_1
    echo "informe quantas linhas quer ver do final do arquivo"
    read lin 
    tail -$lin $arq_1        
    read pause
    principal
}
opcao_invalida() {      # função da opção inválida
    clear
    echo "Opcao desconhecida."
    read pause
    principal
}

principal               # o script começa aqui, as funções das linhas anteriores
                        # são lidas pelo interpretador bash e armazenadas em memória.

                        # o bash não tem como adivinhar qual das funções ele deve 
                        # executar, por isto o a execução do script realmente começa
                        # quando aparece uma instrução fora de uma função, neste caso,
# chamando a função principal
