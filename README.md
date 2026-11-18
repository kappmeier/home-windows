# Home

My home directory for Windows machines.

Before starting, `git` must be installed:

```powershell
winget install --id Git.Git -e --source winget
```

## Add to a computer

```powershell
alias home="git --work-tree=$HOME --git-dir=$HOME\.home.git"
home init
home remote add origin git@github.com:kappmeier/home-windows.git
home fetch --all
home reset --hard origin/main
```

## Initialization

On a new machine, new keys must be created (or the existing key retrieved elsewhere). The following
example shows how to set up authentication and signing with SSH keys. Observe, that GPG keys could
be used for signing as well.

### Create new SSH keys

```powershell
ssh-keygen -t ed25519 -C "jp.kappmeier@gmail.com"
ssh-keygen -t ed25519 -C "jp.kappmeier@gmail.com" -f $HOME/.ssh/id_ed25519_signing
```

# Upload to GitHub

The created keys must be uploaded to GitHub keys. The first as `Authentication Key`, the second as
`Signing Key`.

```powershell
Get-Content $HOME/.ssh/id_ed25519.pub
Get-Content $HOME/.ssh/id_ed25519_signing.pub
Start "https://github.com/settings/keys"
```
