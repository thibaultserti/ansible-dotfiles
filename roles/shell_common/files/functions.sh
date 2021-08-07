# THIS FILE IS MANAGED BY ANSIBLE, DO NOT EDIT MANUALLY

# shellcheck shell=bash

function display-rsa() { openssl rsa -noout -text -inform PEM -in "$1" -pubin -modulusi; }

function mcd() { mkdir -p "$@" && cd "$@" || exit; }

function cls() {
    cd "$1" || exit
    ls

}
function backup() { cp "$1"{,.bak}; }

function extract() {
    if [ -f "$1" ]; then
        case $1 in
        *.tar.bz2) tar xjf "$1" ;;
        *.tar.gz) tar xzf "$1" ;;
        *.bz2) bunzip2 "$1" ;;
        *.rar) unrar e "$1" ;;
        *.gz) gunzip "$1" ;;
        *.tar) tar xf "$1" ;;
        *.tbz2) tar xjf "$1" ;;
        *.tgz) tar xzf "$1" ;;
        *.zip) unzip "$1" ;;
        *.Z) uncompress "$1" ;;
        *.7z) 7z x "$1" ;;
        *)
            echo "'$1' cannot be extracted via extract()"
            ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
