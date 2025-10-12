#!/usr/bin/env bash

#
# list-users_1.0.sh - output users from /etc/passwd
#
# Site:         https://github.com/rulestux
# Author:        Jean Felipe
# Maintenance:  Jean Felipe
#
#=======================================================#
# This script reads and outputs users on /etc/passwd, and
# there is also the possibility to put it in capital
# letters (uppercase) or lowercase.
#
# Exemple:
#       $ ./list-users_1.2.sh -s -u
#
#       In this exemple, the script returns results in
#       alphabetical order and uppercase.
#
#=======================================================#
# History:
#   v1.0 2025-10-07, Jean Felipe:
#       - Options added: -h, -v, -s, -r.
#   v1.1 2025-10-07, Jean Felipe:
#       - 'case' structure and 'basename'added.
#   v1.2 2025-10-07, Jean Felipe:
#       - 'keyflags' and uppercase option implementation;
#
#=======================================================#
# Tested on:
#   zsh v5.9
#
#=======================VARS============================#

# variável para ler os usuários combinando 'cat' e 'cut',
# cuja utilidade é separar os dados de cada linha da lista
# de usuários em 'passwd', tendo como referência para o
# 'split', passado com a opção '-d' (delimiter) o caractere
# ':', extraindo a coluna '1', passada com a opção '-f':
USERS="$(cat /etc/passwd | cut -d : -f 1)"

# criação de opções, acrescentando o 'basename' para reduzir
# o comprimento do nome do script, sem o caminho:
USE_MESSAGE="
$(basename $0) - [OPTIONS]

    -h - Help menu
    -v - Version
    -s - Order output
    -r - Reverse order
    -u - Return all uppercase
"
VERSION="list-users v1.2"

# criação de keyflags, que retornam 'true' ou 'false',
# i. e., boolean values '1' ou '0', para otimizar o código:
KEY_SORT=0
KEY_SREVERSE=0
KEY_UPPERCASE=0

#========================EXEC============================#

# implementação das opções em estrutura 'case':
case "$1" in
    -h) echo "$USE_MESSAGE" && exit 0   ;;
    -v) echo "$VERSION" && exit 0       ;;
    -s) KEY_SORT=1                      ;;
    -r) KEY_SREVERSE=1                  ;;
    -u) KEY_UPPERCASE=1                 ;;
    *) echo "$USERS"                    ;;
esac

# implementação de estruturas de comparação simples para
# retornar a opção testada no 'case', com saída booleana '1':
[ $KEY_SORT -eq 1 ]      && echo "$USERS" | sort # ordena alfabeticamente
[ $KEY_SREVERSE -eq 1 ]  && echo "$USERS" | sort -r # alfabético reverso
[ $KEY_UPPERCASE -eq 1 ] && echo "$USERS" | tr [a-z] [A-Z] # tudo para maiúsculas
