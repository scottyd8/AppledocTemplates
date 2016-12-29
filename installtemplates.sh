#!/bin/bash 
cp -R -v ./templates/ ~/.appledoc/
if [ $? -eq 0 ]
then
  echo "Worldpay Appledoc templates successfully installed"
  exit 0
else
  echo "Could not install Worldpay Appledoc templates." >&2
  echo "You can do this manually by copying the ./templates to ~/.appledoc/" >&2
  exit 1
fi
