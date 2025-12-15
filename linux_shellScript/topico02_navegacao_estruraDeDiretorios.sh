#!/bin/bash

# caminho absoluto
cd /home/jean/projetos/rnaseq/raw_data

# caminho relativo
cd raw_data

# criando e organizando diretorios
mkdir minha_pasta # criar uma pasta
mkdir raw results scripts qc logs # criar varias pastas
mkdir -p projeto/data/fastq # criar hierarquia

# criando estrutura do projeto
mkdir -p projeto_rnaseq/{raw_data/fastqc/multiqc/scripts/results/logs}
