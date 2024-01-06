# -------------------------------- #
# General
# -------------------------------- #

# Load ssh key
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh

# Set bat as manpager
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"

# -------------------------------- #
# ZSH settings
# -------------------------------- #

# Source antidote.
source ~/.antidote/antidote.zsh

# Initialize antidote's dynamic mode, which changes `antidote bundle`
# from static mode.
source <(antidote init)

# antidote bundle
antidote bundle ohmyzsh/ohmyzsh path:lib
antidote bundle ohmyzsh/ohmyzsh path:plugins/git
antidote bundle zsh-users/zsh-autosuggestions
antidote bundle zsh-users/zsh-completions
antidote bundle zsh-users/zsh-syntax-highlighting
antidote bundle greymd/docker-zsh-completion
antidote bundle ohmyzsh/ohmyzsh path:themes/tjkirch.zsh-theme

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# compinit call for loading completions
compinit

# -------------------------------- #
# Functions
# -------------------------------- #

# Git: Delete local branches
gdb() {
    git branch --merged | grep -v \* | xargs git branch -D
}

# Fzf: Enter Preview mode with bat
fzfp() {
    fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}

# Shows all images of all kubernetes deployments
kimg() {
    local namespace="${1:-default}"

    printf "deployments:\n------------"
    kubectl get deployment -n $namespace -o=jsonpath="{range .items[*]}{'\n'}{.metadata.name}{':\t'}{range .spec.template.spec.containers[*]}{.image}{', '}{end}{end}"
    printf "\n\ndaemonsets:\n------------"
    kubectl get daemonset -n $namespace -o=jsonpath="{range .items[*]}{'\n'}{.metadata.name}{':\t'}{range .spec.template.spec.containers[*]}{.image}{', '}{end}{end}"
}

# switch kubernetes context
kctx() {
     local ctx=$1
     kubectl config use-context $ctx
}

# -------------------------------- #
# Proxy
# -------------------------------- #
unsetproxy() {
    unset http_proxy
    unset https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset no_proxy
    unset NO_PROXY
}

setproxy() {
    local proxy="http://user:pw@host:port"
    local proxy_exceptions=""
    
    export HTTP_PROXY="${proxy}"
    export HTTPS_PROXY="${proxy}"
    export http_proxy="${proxy}"
    export https_proxy="${proxy}"
    export no_proxy="${proxy_exceptions}"
    export NO_PROXY="${proxy_exceptions}"
}

# defaults
unsetproxy

# -------------------------------- #
# Aliases
# -------------------------------- #

# Kubernetes
alias k="kubectl"
