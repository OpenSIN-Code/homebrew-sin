# AGENTS.md — homebrew-sin

> Part of the OpenSIN-Code ecosystem. See [OpenSIN-Code/SIN-Code/AGENTS.md](https://github.com/OpenSIN-Code/SIN-Code/blob/main/AGENTS.md) for org-wide mandates.

## What this IS
Homebrew tap for SIN-Code tools. Contains the sin-code formula and release automation for goreleaser-pushed builds. Distributes the sin-code binary to macOS/Linux via brew.

## What this is NOT
- NOT a standalone product — it is a component of the SIN-Code ecosystem
- NOT a fork of any other project

## Build & Test
```bash
brew audit --strict Formula/sin-code.rb
```

## Mandates
Follow the parent org mandates (M1-M7) defined in the [SIN-Code AGENTS.md](https://github.com/OpenSIN-Code/SIN-Code/blob/main/AGENTS.md).
