# dotfiles
My dotfiles

# Setup new machine

```bash
# Setup with a single command:
$ chezmoi init --apply https://github.com/ndelvalle/dotfiles.git

# Setup step by step
# Initialize chezmoi with the dotfiles repo:
$ chezmoi init git@github.com:ndelvalle/dotfiles.git

# Check what changes chezmoi will make to the home directory:
$ chezmoi diff

# Apply chezmoi changes:
$ chezmoi apply -v

# On any machine, you can pull and apply the latest changes from this repo with:
$ chezmoi update -v

```
