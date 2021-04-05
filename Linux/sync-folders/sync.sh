#!/bin/bash

source=$(zenity --file-selection --title="Source folder" --directory)"/"
destination=$(zenity --file-selection --title="Destination folder" --directory)

rsync -avh $source"/" $destination --delete --ignore-existing
