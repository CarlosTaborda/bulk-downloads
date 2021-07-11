#!/bin/bash
IFS=,

rm ./*.pdf
while read line; do

    field=(  $line )
    if [[ -e "${field[0]}.pdf" ]]; then
       rm -v "${field[0]}.pdf"
    else 
        echo "NO EXISTE"
    fi

    wget  -O ${field[0]}".pdf" -r -nH --cut-dirs=6 'ftp://USERNAME:PASSWORD@MY-IP/'${field[1]} 
    
done < ../files_to_download.csv
