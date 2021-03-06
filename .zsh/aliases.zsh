alias cp='cp -r --reflink=auto'
alias curl='curlie'
alias df='pydf'
alias diff='git diff --no-index'
alias diff!='kitty +kitten diff'
alias dragon='dragon-drag-and-drop --and-exit --all'
alias c='bat -p'
alias e='kak'
alias fd='fd --hidden --follow'
alias grep='grep --color'
alias hexdump='od -A x -t x1z -v'
alias http-serve='python3 -m http.server'
alias htpasswd='openssl passwd -apr1'
alias locate='locate -i'
alias mkdir='mkdir -p'
alias o='xdg-open'
alias rg='rg --hidden --follow --smart-case 2>/dev/null'
alias rm='rmtrash -rf'
alias rm!='\rm -rf'
alias rsync='rsync --verbose --archive --info=progress2 --human-readable --partial'
alias sudo='sudo -E '

alias ls="exa --group --git --group-directories-first"
alias ll="ls -l"
alias la="ll -a"
alias lk="ll -s=size"              # Sorted by size
alias lm="ll -s=modified"          # Sorted by modified date
alias lc="ll --created -s=created" # Sorted by created date

alias battery-normal='sudo cctk --PrimaryBattChargeCfg=custom:50-86 --ValSetupPwd="$(pass personal/bios)"'
alias battery-full='sudo cctk --PrimaryBattChargeCfg=standard --ValSetupPwd="$(pass personal/bios)"'

ssh() {
    kitty +kitten ssh "$@"
}

mkdcd() {
    [ -n "$1" ] && mkdir -p -- "$1" && builtin cd -- "$1"
}

n() {
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm "$NNN_TMPFILE"
    fi
}

e64() {
    [ -n "$1" ] && base64 <<<"$1" || base64
}

d64() {
    [ -n "$1" ] && base64 --decode <<<"$1" || base64 --decode
}
