function colors --wraps='for i in (seq 0 7); printf "\\e[4"$i"m   \\e[0m"; end; echo; for i in (seq 0 7); printf "\\e[10"$i"m   \\e[0m"; end; echo' --description 'alias colors for i in (seq 0 7); printf "\\e[4"$i"m   \\e[0m"; end; echo; for i in (seq 0 7); printf "\\e[10"$i"m   \\e[0m"; end; echo'
    for i in (seq 0 7); printf "\e[4"$i"m   \e[0m"; end; echo; for i in (seq 0 7); printf "\e[10"$i"m   \e[0m"; end; echo $argv
end
