echo -en "\nduration: "
echo -e "`expr $SECONDS / 3600` hours `expr $SECONDS / 60` mins `expr $SECONDS % 60` secs\n"
if [ "$SHLVL" = 1 ] && [ -x /usr/bin/clear_console ]; then
    /usr/bin/clear_console -q
else
    clear
fi


