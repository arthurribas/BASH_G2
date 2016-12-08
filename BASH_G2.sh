{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf460
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
#Prova G2\
#Disciplina:Desenvolvimento em Redes de Computadores\
#Aluno: Arthur do Amaral Ribas\
#Orientador: Diego Tumelero\
#Data de cria\'e7\'e3o do script: 30/11 at\'e9 7/12 \
\
#Fun\'e7\'e3o principal do programa\
principal() \
\
\{                      \
clear              \
echo \'93[a] Definir Arquivo/diretorio" \
echo \'93[b] Copia local"  \
echo \'93[c] Sair"\
   \
\
echo\
echo -n "Qual a opcao voce deseja escolher?"\
read opcao          \
                        \
                        \
\
                        \
case $opcao in\
1)             \
clear\
defini_arquivos      \
;;                                \
2)\
clear\
copia_local         \
;; \
\
3)\
clear\
exit ;;\
\
*)              \
clear\
echo \'93Opcao nao reconhecida.\'94\
read pause\
principal   \
;;\
esac\
\}\
\
\
#Funcao define o arquivo/diretorio para rodar o backup \
defini_arquivos() \{             \
echo "Qual o parametro rsync?\'94\
read PARAMETRO				\
echo "Qual a maquina de origem? "\
read PC_ORIGEM	\
		\
echo "Qual a maquina de destino? "\
read PC_DESTINO 	\
		\
echo "Qual o caminho de origem "\
read CAM_ORIGEM\
					\
echo "Qual o arquivo?"\
read ARQUIVO\
					\
echo "Qual o caminho de destino? "\
read CAM_DESTINO\
				\
echo  "PORTA"\
read  PORTA	\
\
rsync -Cravzup \'97-progress $PARAMETRO "ssh -p $PORTA" $PC_ORIGEM $CAM_ORIGEM/$ARQUIVO $PC_DESTINO:$CAM_DESTINO \
  \
		\
read pause          \
principal           \
\}\
\
copia_local()\{\
echo "Qual parametro rsync?\'94\
read PARAMETRO\
echo "Qual maquina de origem? "\
read PC_ORIGEM\
echo "Qual o arquivo?"\
read ARQUIVO\
echo "Qual o caminho de origem "\
read CAM_ORIGEM\
echo \'93Locar para salvar? "\
read CAM_DESTINO\
	 \
\
rsync -Cravzup \'97progress $PARAMETRO $CAM_ORIGEM/$ARQUIVO localhost:$CAM_DESTINO\
	\
	\
\}\
\
\
#fun\'e7\'e3o da op\'e7\'e3o inv\'e1lida\
opcao_invalida() \{      \
clear\
echo "Opcao desconhecida."\
read pause\
principal\
\}\
\
principal }