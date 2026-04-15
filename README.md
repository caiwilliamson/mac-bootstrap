# Mac Bootstrap

Bootstraps a fresh system with dev tools and dotfiles.

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
