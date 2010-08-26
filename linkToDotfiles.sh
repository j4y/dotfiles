#!/bin/sh

SCRIPT_DIR=$(echo $0 | sed -e 's/\(.*\)\/.*/\1/')
SCRIPT_FILE=$(echo $0 | sed -e 's/.*\///')
[ "$SCRIPT_DIR" = "." ] && SCRIPT_DIR=$(pwd)

for F in $(/bin/ls $SCRIPT_DIR | grep -v $SCRIPT_FILE)
do
   echo -n "$SCRIPT_DIR/$F: "
   if [ -e "$HOME/.$F" ]; then
       echo "~/.$F already exists, skipping."
       chmod 600 ~/.$F
   else
       if ln -s "$SCRIPT_DIR/$F" "$HOME/.$F"; then
           echo "linked to ~/.$F."
       fi
   fi
   if [ -d ~/.$F ]; then
       echo "700"
        chmod 700 ~/.$F
   else
        chmod 600 ~/.$F
       echo "600"
   fi
done

if [ -d ~/public_html ]; then
        echo "711 ~ web host"
        chmod 711 ~
else

        echo "700 ~ NOT web host"
        chmod 700 ~
fi
