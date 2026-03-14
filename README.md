# Dotfiles

Personal development environment configuration. Useful for setting up a new machine quickly.

## Setup

```bash
# Clone
git clone https://github.com/sagarbaver/dotfiles.git ~/Projects/dotfiles

# Symlink zshrc
ln -sf ~/Projects/dotfiles/.zshrc ~/.zshrc
```

## What's included

- **`.zshrc`** — Z-shell config (oh-my-zsh, history, NVM, pyenv, Claude Code wrapper)
- **`.vimrc`** / **`.vim/`** — Vim editor and plugins
- **`git/`** — Commit message template and conventions
- **`iterm2/`** — iTerm2 settings and color themes
- **`terminator/`** — Terminator terminal config
- **`vimium/`** — Vimium browser plugin config

## Local overrides with `.zshrc.local`

Machine-specific or enterprise config (SSH keys, tokens, custom JAVA_HOME, etc.) goes in `~/.zshrc.local`, which is sourced at the end of `.zshrc` but **not committed** to this repo.

Example `~/.zshrc.local`:
```zsh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
export JAVA_HOME=/path/to/java
export SOME_TOKEN=...
```

## Claude Code `@session-name` wrapper

The `.zshrc` includes a wrapper function that lets you name Claude Code sessions:

```bash
claude @planning          # status line shows [planning]
claude @debug --verbose   # named session with flags passed through
claude                    # falls back to /rename name or session ID
```

Requires the `CLAUDE_SESSION_NAME` env var support in `~/.claude/settings.json` (see [ai-tools](https://github.com/sagarbaver/ai-tools)).
