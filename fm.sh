#!/bin/bash
#
# Script com funções variadas utilizando o comando CASE
#
# Escrito por Fabrício da Silva Neves para a disciplina de Shell Script



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
    read opcao          		# faz a leitura da variável "opcao", 
                        		# que será utilizada no comando case
                        		# para indicar qual a opção a ser utilizada

                        		# caso o valor da variável "opcao"...
    case $opcao in
        1)              		# seja igual a "1", então faça as instruções abaixo
            clear
            fun_1 ;;    		# executa os comandos da função "fun_1"

                        		# os 2 ";;" (ponto e virgula)
                        		# significam que chegou ao final
                        		# esta opção do comando case
        2)
            clear
            fun_2 ;;	# usa a função fun_2 e finaliza a opção do case com ";;"

        3)  clear
            fun_3 ;;	# usa a função fun_3 e finaliza a opção do case com ";;"

        4)
            clear
            fun_4 ;;	# usa a função fun_4 e finaliza a opção do case com ";;"

        5)
            clear
            fun_5 ;;	# usa a função fun_5 e finaliza a opção do case com ";;"

        6)
            clear
            fun_6 ;;	# usa a função fun_6 e finaliza a opção do case com ";;"

        7)
            clear
            fun_7 ;;	# usa a função fun_7 e finaliza a opção do case com ";;"

        8)
            clear
            fun_8 ;;	# usa a função fun_8 e finaliza a opção do case com ";;"

        9)
            clear
            fun_9 ;;	# usa a função fun_9 e finaliza a opção do case com ";;"

       10)
            clear
            fun_10 ;;	# usa a função fun_10 e finaliza a opção do case com ";;"

       11)
            clear
            fun_11 ;;	# usa a função fun_1 e finaliza a opção do case com ";;"

       12)
            clear
            exit ;;

        *)              	# esta opçao existe para caso o usuário digite um 
                        	# valor diferente de 1, 2, 3, ... 12
            clear
            echo "Opcao desconhecida."
            read pause
            principal   	# volta para o menu inicial
            ;;
    esac
}

fun_1() {             # função da opção 1 
    clear
    pwd               # usado para mostrar a posição do usuario no sistema de arquivo
    read pause        # usado para pausar a execução do script
    principal         # volta para a função principal
}

fun_2() {             			# função da opção 2
    clear
    echo "informe o nome do arquivo" 	# imprime a mensagem entre "" na tela
    read nome_arq			# captura a palavra digitada e transfere para a variavel "nome_arq"
    file $nome_arq			# comando usado para mostrar o tipo de arquivo 
    read pause        			# usado para pausar a execução do script
    principal           		# volta para a função principal
}

fun_3() {             						# função da opção 3
    clear
    echo "informe o nome da pasta que você quer criar"		# imprime a mensagem entre "" na tela	
    read nome_pasta						# captura a palavra digitada e transfere para a variavel "nome_pasta"
    mkdir $nome_pasta 						# comando usado para criar pastas
    read pause        						# usado para pausar a execução do script
    principal           					# volta para a função principal
}

fun_4() {             					# função da opção 4
    clear
    echo "informe o nome da pasta que você quer apagar"	# imprime a mensagem entre "" na tela
    read nome_pas					# captura a palavra digitada e transfere para a variavel "nome_pas"
    rm -rf $nome_pas 					# comando para apagar pastas 	
    read pause        					# usado para pausar a execução do script
    principal           				# volta para a função principal
}

fun_5() {             					# função da opção 5
    clear
    echo "digite o primeiro numero"			# imprime a mensagem entre "" na tela			
            read num_1;					# captura a palavra digitada e transfere para a variavel "num_1"
            echo "digite o segundo numero"		# imprime a mensagem entre "" na tela
            read num_2;					# captura a palavra digitada e transfere para a variavel "num_2"
          if [ $num_1 -eq $num_2 ]			# condição para verificar se o numeros são iguais
          then
          echo "Esta operaração não pode ser feita com numeros iguais, favor digitar numeros difentes" # imprime a mensagem entre "" na tela
          else
            if [ $num_1 -gt $num_2 ]; 			# condição para verificar se o primeiro é maior que o segundo
            then
            echo "O primeiro numero que é $num_1 é maior que o segundo que é $num_2"		       # imprime a mensagem entre "" na tela
            else
            echo "O segundo numero que é $num_2 é maior que o primeiro que é $num_1"		       # imprime a mensagem entre "" na tela
            fi  					# final da condição if
          fi                             		# final da condição if
    read pause
    principal
}

fun_6() {             						# função da opção 6
    clear
    echo "informe o nome do arquivo"				# imprime a mensagem entre "" na tela
    read arq_1							# captura a palavra digitada e transfere para a variavel "arq_1"
    echo "informe quantas linhas quer ver do final do arquivo"	# imprime a mensagem entre "" na tela
    read lin 							# captura a palavra digitada e transfere para a variavel "lin"
    clear
    tail -$lin $arq_1						# comando para selecionar a quantidade de linhas quer ver em um texto começando 								  final        
    read pause
    principal
}

fun_7() {             						# função da opção 7
    clear
    echo "informe o nome do arquivo"				# imprime a mensagem entre "" na tela
    read arq_2							# captura a palavra digitada e transfere para a variavel "arq_2"
    echo "informe quantas linhas quer ver do final do arquivo"	# imprime a mensagem entre "" na tela
    read lin2 							# captura a palavra digitada e transfere para a variavel "lin2"	
    clear
    head -$lin2 $arq_2        					# comando para selecionar a quantidade de linhas quer ver em um texto apartir 									do inicio
    read pause
    principal
}

fun_8() {             		# função da opção 8
    clear
    echo "informe qual comando"	# imprime a mensagem entre "" na tela
    read com_1			# captura a palavra digitada e transfere para a variavel "com_1"
    whereis $com_1       	# usado para ver o caminho de um comando 
    read pause
    principal
}

fun_9() {             		# função da opção 9
    clear
    echo "informe o diretorio"	# imprime a mensagem entre "" na tela
    read dir_1			# captura a palavra digitada e transfere para a variavel "dir_1"
    tree -d $dir_1       	# usado para mostrar as pastas em hierarquia de tipo arvore	
    read pause
    principal
}

fun_10() {             				# função da opção 10
    clear
    echo "informe o arquivo que quer copiar"	# imprime a mensagem entre "" na tela
    read arq3					# captura a palavra digitada e transfere para a variavel "arq3"
    echo "informe o o destino"			# imprime a mensagem entre "" na tela
    read arq4					# captura a palavra digitada e transfere para a variavel "arq4"
    cp $arq3 $arq4				# comando usado para copiar um arquivo para outro diretorio      
    read pause
    principal
}

fun_11() {             				# função da opção 11
    clear
    echo "informe o arquivo que quer mover"	# imprime a mensagem entre "" na tela
    read arq5					# captura a palavra digitada e transfere para a variavel "arq5"
    echo "informe o o destino"			# imprime a mensagem entre "" na tela
    read arq6					# captura a palavra digitada e transfere para a variavel "arq6"
    mv $arq5 $arq6      			# comando usado para mover um arquivo para outro diretorio 
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
                        # executar, por isto a execução do script realmente começa
                        # quando aparece uma instrução fora de uma função, neste caso,
			# chamando a função principal
