#!/bin/bash

pLynx="lynx"
pExiftool="exiftool"

# Verifica se os parâmetros foram passados
if [ -z "$1" ] || [ -z "$2" ]; then
    echo -e "SUPPORT : pdf, doc, docx, xls, xlsx, ppt, pptx, xml, json, entre outros"
    echo -e "MODO DE USO : ./metafind.sh google.com docx"
    exit 1
fi

# Verifica e instala pacotes apenas se necessário
missing=""
if ! which "$pLynx" &> /dev/null; then
    missing="$missing $pLynx"
fi
if ! which "$pExiftool" &> /dev/null; then
    missing="$missing $pExiftool"
fi
if [ -n "$missing" ]; then
    echo "Instalando:$missing, pode ser necessária a senha de root..."
    sudo apt-get install $missing -y > /dev/null 2>&1
fi

# Busca links no Google
lynx --dump "https://www.google.com/search?q=site:$1+ext:$2" | \
grep -oP 'https?://[^ ]+\.'$2'' > log.txt

# Baixa os arquivos
> arq.txt  # Cria/limpa arq.txt antes de começar
xargs -n 1 wget -q < log.txt

# Registra os arquivos baixados
ls *.$2 *
.html 2>/dev/null > arq.txt

# Executa o exiftool nos arquivos
if [ -s arq.txt ]; then
    xargs exiftool < arq.txt
fi

# Remove os arquivos baixados e logs
xargs rm -f < arq.txt
rm -f log.txt arq.txt
