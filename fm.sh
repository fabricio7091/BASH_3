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
    echo "[4] Apagar um diretório não vazio"                                             
    echo "[5] ler 2 números e indicar qual é o maior deles e qual é o menor"             
    echo "[6] Exibir as últimas linhas de um arquivo"                                    
    echo "[7] Exibir as primeiras linhas de um arquivo"                                  
    echo "[8] Mostrar a localização de um comando específico utilizar which ou whereis"  
    echo "[9] Mostra um diretório informado pelo usuário em formato de árvore"           
    echo "[10] Copiar um arquivo para um outro diretório"                                
    echo "[11] Mover um arquivo para outro diretório"                                    
    echo "[12] Sair"                                                                     
    echo
    echo -n "Qual a opcao desejada ? "
    read opcao          # faz a leitura da variável "opcao", 
                        # que será utilizada no comando case
                        # para indicar qual a opção a ser utilizada

                        # caso o valor da variável "opcao"...
    case $opcao in
        1)              # seja igual a "1", então faça as instruções abaixo
            clear
            fun_1 ;;    # executa os comandos da função "fun_1"

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
            fun_4 ;;     #usa a função martelo e finaliza a opção do case com ";;"

        5)
            clear
             fun_5 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        6)
            clear
            fun_6 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        7)
            clear
            fun_7 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        8)
            clear
            fun_8 ;;  # usa a função martelo e finaliza a opção do case com ";;"

        9)
            clear
            fun_9 ;;  # usa a função martelo e finaliza a opção do case com ";;"

       10)
            clear
            fun_10 ;;  # usa a função martelo e finaliza a opção do case com ";;"

       11)
            clear
            fun_11 ;;  # usa a função martelo e finaliza a opção do case com ";;"

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
    clear
    tail -$lin $arq_1        
    read pause
    principal
}

fun_7() {             # função da opção martelo
    clear
    echo "informe o nome do arquivo"
    read arq_2
    echo "informe quantas linhas quer ver do final do arquivo"
    read lin2 
    clear
    head -$lin2 $arq_2        
    read pause
    principal
}

fun_8() {             # função da opção martelo
    clear
    echo "informe qual comando"
    read com_1
    whereis $com_1       
    read pause
    principal
}

fun_9() {             # função da opção martelo
    clear
    echo "informe o diretorio"
    read dir_1
    tree -d $dir_1       
    read pause
    principal
}

fun_10() {             # função da opção martelo
    clear
    echo "informe o arquivo que quer copiar"
    read arq3
    echo "informe o o destino"
    read arq4
    cp $arq3 $arq4      
    read pause
    principal
}

fun_11() {             # função da opção martelo
    clear
    echo "informe o arquivo que quer mover"
    read arq5
    echo "informe o o destino"
    read arq6
    mv $arq5 $arq6      
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
