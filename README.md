
# Dotfiles

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

- [GNU Make](https://www.gnu.org/software/make/)

## Usage

Install all tools and config files

```bash
make build
```

Update the config files

```bash
make update
```

Install and update vscode extensions

```bash
make vscode
```

## Functions

Delete all local git branches of current repository

```bash
gdb
```

Enter fzf preview mode with bat

```bash
fzfp
```

Set and unset proxy variables

```bash
setproxy
unsetproxy
```

List all images of all Kubernetes deployments and daemonsets of the given namespace

```bash
# list images of the default namespace
kimg
# list images of the kube-system namespace
kimg kube-system
```

Switch Kubernetes config context

```bash
kctx <context-name>
```

## Aliases

| Key          | Command   |
|--------------|-----------|
| k            | kubectl   | 

# Additional Notes

- I use [JetBrains Mono Font](https://www.jetbrains.com/lp/mono/)