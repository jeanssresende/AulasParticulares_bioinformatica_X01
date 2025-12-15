#!/bin/bash

ls
cd pasta/
mkdir resultados

# /home/usuario
# /usr/bin
# /etc
# /mnt ou /media
# /tmp

# guarde seus dados em /home/seu_nome/projeto/

# Mostra o nome do seus usuario
whoami

# Mostra onde voce esta agora 
pwd

# Lista arquivos e pastas
ls

ls -l # lista arquivos em formato detalhado
ls -lh # tamanho dos arquivos legivel (10K, 2M, 1G)
ls -a # mostra arquivos ocultos

# Navdegando entre diretorios
cd nome_da_pasta
cd .. # volta um nivel
cd ~ # vai para a pasta home

# Criando estrutura inicial de um projeto
mkdir projeto_bioinfo
cd projeto_bioinfo
mkdir raw_data scripts results qc logs