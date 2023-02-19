# dotfiles

It contains:

- [antidote, the cure to slow zsh plugin management](https://github.com/mattmc3/antidote)
- [zsh completions](https://github.com/zsh-users/zsh-completions)
- [docker-zsh-completion](https://github.com/greymd/docker-zsh-completion)
- [kubectl zsh auto-completion](https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-zsh/)
- [zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [keychain, for managing SSH Keys](https://linux.die.net/man/1/keychain)
- [bat, a cat clone with wings](https://github.com/sharkdp/bat)
- [fzf, a command-line fuzzy finder](https://github.com/junegunn/fzf)

## Requirements

- [Ubuntu Linux](https://ubuntu.com/)

## Usage

Install all tools and config files

```
./setup.sh --build
```

Update the config files

```
./setup.sh --update
```

Install or update config files when [WSL](https://cloudbytes.dev/snippets/how-to-install-multiple-instances-of-ubuntu-in-wsl2) is used.
```
./setup.sh --wsl
```

Install or update vscode extensions
```
./setup.sh --vscode
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

List all images of all kubernetes deployments and daemonsets of the given namespace

```
# list images of the default namespace
kimg
# list images of the kube-system namespace
kimg kube-system
```

## Aliases

| Key | Command |
| --- | ------- |
| k   | kubectl |
| d   | docker  |
