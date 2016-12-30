#!/bin/bash 
cp -R ./templates/ ~/.appledoc/
if [ $? -ne 0 ]
then
  echo "Could not install Worldpay Appledoc templates." >&2
  echo "You can do this manually by copying the ./templates to ~/.appledoc/" >&2
  echo "and ./teamplateversion.sh to ~/.appledoc/templateversion.sh." >&2
  exit 1
fi
cp ./templateversion.sh ~/.appledoc/
if [ $? -ne 0 ]
then
  echo "Could not fully install Worldpay Appledoc templates." >&2
  echo "You can finish this manually by copying " >&2
  echo "./templateversion.sh to ~/.appledoc/templateversion.sh." >&2
  exit 1
fi

echo "Templates successfully installed."
exit 0

