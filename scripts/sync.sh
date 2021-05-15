#!/bin/bash

# -----------

# en
# sync two differents folders
# IMPORTANT - The destination folder will be exactly like the root folder

# pt-Br
# Sincroniza duas pastas diferentes.
# IMPORTANTE - A pasta destino será cópia exata da pasta raíz.

# -----------

source=$(zenity --file-selection --title="Source folder" --directory)"/"
destination=$(zenity --file-selection --title="Destination folder" --directory)

rsync -avh $source"/" $destination --delete --ignore-existing
