# Homebrew Tap

Homebrew tap for agentic-utils.

## Installation

```bash
brew tap agentic-utils/tap
brew install ccs                # or claude-dashboard
```

`brew install agentic-utils/tap/<formula>` taps and installs in one step.

A tap is a public GitHub repo. Homebrew has no signing or approval step, so it
trusts whatever you tap. Inspect this one before you do:

```bash
brew tap-info agentic-utils/tap                # where the tap points
brew cat agentic-utils/tap/ccs                 # the formula itself
brew untap agentic-utils/tap                   # remove it again
```

## Packages

| Formula | Description |
|---------|-------------|
| [ccs](https://github.com/agentic-utils/ccs) | Search and resume Claude Code conversations using fzf |
| [claude-dashboard](https://github.com/agentic-utils/claude-dashboard) | Live terminal dashboard for Claude Code cache-token usage |

## Usage

```bash
brew install agentic-utils/tap/ccs
brew install agentic-utils/tap/claude-dashboard
brew upgrade agentic-utils/tap/claude-dashboard
```
