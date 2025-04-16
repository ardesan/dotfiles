
# Dotfiles

It contains:

- [antidote, the cure to slow zsh plugin management](https://github.com/mattmc3/antidote)
- [zsh completions](https://github.com/zsh-users/zsh-completions)
- [docker-zsh-completion](https://github.com/greymd/docker-zsh-completion)
- [kubectl zsh auto-completion](https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-zsh/)
- [zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](zsh-users/zsh-syntax-highlighting)
- [keychain, for managing SSH Keys](https://linux.die.net/man/1/keychain)
- [bat, a cat clone with wings](https://github.com/sharkdp/bat)
- [fzf, a command-line fuzzy finder](https://github.com/junegunn/fzf)

## Requirements

- [GNU Make](https://www.gnu.org/software/make/)

## Usage

Install all tools and config files

```
make build
```

Update the config files

```
make update
```

Install and update vscode extensions

```
make vscode
```

## Functions

Delete all local git branches of current repository

```
gdb
```

Enter fzf preview mode with bat

```
fzfp
```

set and unset proxy variables
```
setproxy
unsetproxy
```

List all images of all kubernetes deployments and daemonsets of the given namespace

```
# list images of the default namespace
kimg
# list images of the kube-system namespace
kimg kube-system
```
Switch kubernetes config context
```
kctx <context-name>
```

## Aliases

| Key          | Command   |
|--------------|-----------|
| k            | kubectl   | 
