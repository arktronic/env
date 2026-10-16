# Environment setup stuff

## Git

In addition to importing `.gitconfig`, use the following environment variables:

- `GIT_PS1_SHOWUPSTREAM=verbose`
- `GIT_PS1_SHOWDIRTYSTATE=1`

## GitHub Copilot

Clone this repo to a stable location and symlink `dot-copilot` to `~/.copilot` _after_ ensuring that any existing contents you may have there are backed up.

*nix:

```bash
ln -s "$(git rev-parse --show-toplevel)/dot-copilot" "$HOME/.copilot"
```

Windows:

Execute `powershell .\link-copilot.ps1` in the root of this repo to create a junction (symlink-ish). Note, the script will refuse to run if `$HOME/.copilot` already exists.
