#!/usr/bin/env bash
#
# list-users_1.0.sh - output users from /etc/passwd
#
# Site:         https://github.com/rulestux
# Autor:        Jean Felipe
# Maintenance:  Jean Felipe
#
#=======================================================#
# This script reads and outputs users on /etc/passwd, and
# there is also the possibility to put it in capital
# letters (uppercase) or lowercase.
#
# Exemple:
#       $ ./list-users_1.1.sh -s -u
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
"
VERSION="list-users v1.1"


#========================EXEC============================#

# implementação das opções:
#if [ "$1" = "-h" ]; then
#    echo "$USE_MESSAGE" && exit 0
#fi
#if [ "$1" = "-v" ]; then
#    echo "$VERSION" && exit 0
#fi
#if [ "$1" = "-s" ]; then
#    echo "$USERS" | sort && exit 0
#fi
#if [ "$1" = "-r" ]; then
#    echo "$USERS" | sort -r && exit 0
#fi

# substituindo 'if' por 'case':
case "$1" in
    -h) echo "$USE_MESSAGE" && exit 0       ;;
    -v) echo "$VERSION" && exit 0           ;;
    -s) echo "$USERS" | sort && exit 0      ;;
    -r) echo "$USERS" | sort -r && exit 0   ;;
    *) echo "$USERS"                        ;;
esac
