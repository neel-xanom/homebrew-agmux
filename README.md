# Homebrew Tap for agmux

Desktop app for managing AI coding agents (Claude Code, Codex, Grok, and more).

## Install

```sh
brew install --cask neel-xanom/agmux/agmux
```

Or tap first, then install:

```sh
brew tap neel-xanom/agmux
brew install --cask agmux
```

> Homebrew may ask you to trust a third-party tap the first time:
> `brew trust neel-xanom/agmux`

## Update

```sh
brew upgrade --cask agmux
```

## Uninstall

```sh
brew uninstall --cask agmux
```

To also remove app data:

```sh
brew uninstall --cask --zap agmux
```

## Migrating from `xanom`

If you previously installed via `neel-xanom/xanom`:

```sh
brew uninstall --cask xanom
brew untap neel-xanom/xanom
brew install --cask neel-xanom/agmux/agmux
```

## Bare `brew install --cask agmux` (no tap)

That only works once the cask is accepted into the official
[Homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask) repo.
Until then, use the commands above (third-party tap).
