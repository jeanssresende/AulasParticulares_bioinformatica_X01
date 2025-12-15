#!/bin/bash

# 0. Preparacao (Recapitulando Topico 02)

# Vamos para a pasta de dados brutos
cd ~/meu_projeto_bioinfo/data # ajuste conforme a pasta que voce criou

# 1. Criacao de FASTQ simulado (Redirecionamento)
# Estamos criando um arquivo pequeno para testar
echo -e "@SEQ_ID_1\nATGCTAGCTAGCTAGCTA\n+\n!''*((((***+))%%%+" > amostra_teste.fastq
echo -e "@SEQ_ID_2\nCCGCTAGCTAGCTAGCCG\n+\n!''*((((***+))%%%+" >> amostra_teste.fastq
echo -e "@SEQ_ID_3\nATGCTTTTTTTTTTTTTT\n+\n!''*((((***+))%%%+" >> amostra_teste.fastq

# 2. Inspecao Visual
echo "--- Verificando as primeiras 4 linhas ---"
head -n 4 amostra_teste.fastq

# 3. Contagem de Readds (wcx + pipe + awk)
# Se temos 12 linhas quantos reads temos?
echo "--- Contando número de reads ---"
wc -l amostra_teste.fastq | awk '{print $1/4 " reads"}'
zcat arquivo.fastq.gz | wc -l | awk '{print $1/4 " reads"}' # para arquivos compactados

# 4. Busca Biológica (grep)
# Cenário: Queremos encontrar reads que começam com "ATG" (metionina/início típico)
echo "--- Buscando reads que começam com ATG ---"
grep "^ATG" amostra_teste.fastq

# 4.1. Usando a âncora de início (^)
echo "--- Começam com ATG ---"
grep "^ATG" amostra_teste.fastq

# 4.2. Usando a âncora de fim ($)
echo "--- Terminam com CCG ---"
grep "CCG$" amostra_teste.fastq

# 4.3. Inversao
echo "--- Linhas que NÃO começam com @ ---"
grep -v "^@" amostra_teste.fastq


# 5. Pipeline de Análise (Pipe | + sort + uniq)
# Cenário: Verificar se há duplicatas nos IDs das sequências
echo "--- Verificando duplicatas de IDs ---"
grep "^@" amostra_teste.fastq | sort | uniq -c

