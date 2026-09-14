#PS1='%F{153}♡ %F{189}%n%f@%F{147}%m%f %F{117}%~%f %F{189}›%f '
#PS1='%F{green}%n@%m%f %F{blue}%~%f %F{blue}›%f '
#PS1=' %F{blue}%~%f %F{blue}›%f '
PS1='%F{158}%~%f %F{121}›%f '

# Aliases
alias ls="ls -G --color=auto"
alias reload-rc=". $HOME/.zshrc"
alias pubip='curl -s https://1.1.1.1/cdn-cgi/trace | awk -F= "/^ip/{print \$2}"'

# ENV
export LESSHISTFILE=-
export EDITOR="nvim"

# ==============
# MacOS settings
# ==============

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

# zoxide -> cd
alias cd='z'

alias asitop="sudo asitop"

