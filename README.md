# Mac Bootstrap

Bootstraps a fresh system with CLI tools and my [dotfiles](https://github.com/caiwilliamson/dotfiles).

## Prerequisites

Xcode Command Line Tools must be installed before running the script:

```bash
xcode-select --install
```

## GitHub SSH Keys

If `~/.ssh` is empty or doesn't exist, the script will generate a new SSH key pair and upload the public key to GitHub. You'll be prompted to enter a personal access token with write access to Git SSH keys.

To create one:

1. Go to https://github.com/settings/personal-access-tokens/new
2. Give it a name e.g. "Bootstrap SSH Key Upload"
3. Under **Permissions**, set **Git SSH keys** to **Read and write**

The token can be deleted once the script has run.

## Usage

```bash
git clone https://github.com/caiwilliamson/mac-bootstrap.git
cd mac-bootstrap
./bootstrap
```

## Dotfiles

Dotfiles are managed with [yadm](https://yadm.io/).

yadm wraps Git, allowing it to perform all the same operations. The difference is your `$HOME` directory becomes the working directory, and you can run the commands from anywhere.

> [!WARNING]
> yadm hides untracked files by default (since your home directory contains far more than just dotfiles), so avoid `yadm add .` — it will attempt to stage your entire home directory! Instead, use `yadm add -u` to stage only modified tracked files, or stage files individually.

### Useful Commands

| Command | Description |
|---|---|
| `yadm status` | Show working tree status (untracked files hidden by default) |
| `yadm list -a` | List all files managed by yadm |
| `yadm add -u` | Stage modified tracked files |
| `smerge ~/.local/share/yadm/repo.git --work-tree=~` | Open the yadm repo in Sublime Merge |

See also: [yadm common commands](https://yadm.io/docs/common_commands)
