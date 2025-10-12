#!/bin/sh

cd /var/www/apps

for file in php-*; do
    if [[ -f $file ]]; then
        sh "$file" 
    fi
done
