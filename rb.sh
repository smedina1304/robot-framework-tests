#!/bin/bash

# Obter a data atual no formato YYYY-MM-DD
data_atual=$(date +"%Y-%m-%d")

# Criar diretório na pasta "reports"
diretorio_reports="./reports"
diretorio_data="$diretorio_reports/$data_atual"

# Verificar se o diretório já existe
if [ -d "$diretorio_data" ]; then
  echo "Diretório $diretorio_data já existe!"

  # Lista todos os arquivos no diretório
  arquivos=$(ls -1 "$diretorio_data")

  # Percorre cada arquivo para remover
  for arquivo in $arquivos; do
    echo "  Remover: $diretorio_data/$arquivo"
    rm -f "$diretorio_data/$arquivo"
  done

else
  # Criar o diretório
  mkdir -p "$diretorio_data"
  echo "Diretório $diretorio_data criado com sucesso!"
fi

# Obter parâmetros da linha de comando
parametros="$*"
echo "Parâmetros da linha de comando: $parametros"

# Executa o Robot Framework
echo "Executando o Robot Framework"
echo "robot -d $diretorio_data $parametros"
robot -d "$diretorio_data" "$parametros"

