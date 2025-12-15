#!/bin/bash

# EXERCICIOS

# 1 - Criar estrutura de projeto
# Crie uma pasta chamada meu_projeto_bioinfo com subpastas:
#   data
#   results
#   scripts
#   qc

mkdir -p meu_projeto_bioinfo/{data, results, scripts, qc}

# 2 - Navegar entre diretorios criados
# entre em data
cd meu_projeto_bioinfo/data

# Volte um nivel
dc ..

# Va ate scripts
cd meu_projeto_bioinfo/scripts

# Descubra onde esta
pwd

# 3 - Trabalhar com caminhos absolutos
# Saia para a home
cd

# Entre no projeto usando o caminho completo
cd /home/jean/meu_projeto_bioinfo
