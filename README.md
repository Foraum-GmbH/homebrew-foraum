# Homebrew Tap for Foraum GmbH

This repository provides Homebrew casks and formulae for applications developed by
Foraum GmbH, as well as third-party tools we use in our day-to-day development work.

Popular casks may eventually be submitted to the official Homebrew Cask repository.
Use this tap in the meantime to install and keep these tools up to date on macOS via Homebrew.

## Usage

```bash
brew tap foraum-gmbh/foraum https://github.com/Foraum-GmbH/homebrew-foraum
```

Install an app (cask):

```bash
brew install --cask <app-name>
```

Install a command-line tool (formula):

```bash
brew install <tool-name>
```

Tools tracking the latest development version are installed with `--HEAD` and
updated with `brew upgrade --fetch-HEAD <tool-name>`.

## Available Casks

Apps developed by Foraum GmbH.

- [kimai-clock](https://github.com/Foraum-GmbH/kimai-clock): Track and manage Kimai 2 time entries from the menu bar

## Available Formulae

Tools we actively use in development. These are maintained by their respective authors.

- [openbundle](https://github.com/jacobsapps/OpenBundle): Browser-local iOS bundle analyzer. Run `openbundle` to start the local server.
  Install with `brew install --HEAD foraum-gmbh/foraum/openbundle`.