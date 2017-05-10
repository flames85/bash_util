#!/bin/bash
usage() {
    echo -e "\033[32m USAGE: $0 <app-wildcard> [a{default}|e|E]\033[0m"
    echo -e "\033[32m e.g.:  $0 mds E\033[0m"
}

ps_aux() {
    ps aux | head -n 1 && ps aux | grep -v "grep\|ps.sh" | grep $1 --color
}

ps_ef() {
    ps -ef | head -n 1 && ps -ef | grep -v "grep\|ps.sh" | grep $1 --color
}

ps_eLf() {
    ps -eLf | head -n 1 && ps -eLf | grep -v "grep\|ps.sh" | grep $1 --color
}

if [ $# -eq 1 ]; then
    ps_aux $1
elif [ $# -eq 2 ]; then
    if [ $2 == "a" ]; then
        ps_aux $1
    elif [ $2 == "e" ]; then
        ps_ef $1
    elif [ $2 == "E" ]; then
        ps_eLf $1
    else
        usage
        exit 1;
    fi
else
    usage
    exit 1;
fi

# ps查看某进程

