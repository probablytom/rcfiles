echo "CPU `sensors | grep \"Core 0\" | awk ' { print substr($3,2) } '`"
