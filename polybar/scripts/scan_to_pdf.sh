#!/bin/bash

echo "Enter filename, 'q' to exit or 'pdf' to convert all files in the folder."
while read input </dev/tty; do
  echo "Enter filename, 'q' to exit or 'pdf' to convert all files in the folder."
  if [ "$input" == "q" ]; then
    exit
  elif [ "$input" == "pdf" ]; then
    convert *.png -compress jpeg -quality 70 scan_to_pdf.pdf
  else
    scanimage --device "pixma:04A91725_27CAD3" --format=png --resolution 300  > $input.png
  fi
done
