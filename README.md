# Nibelung Homebrew Tap

Homebrew cask for **Nibelung** — the native macOS hub / RBAC-aware operations launcher.

```sh
brew install --cask --no-quarantine nibelungai/tap/nibelung
```

`--no-quarantine` because the app is ad-hoc signed (not Apple-notarized); it lets
Gatekeeper open it without a prompt. The app ships its own signed auto-updater, so
it keeps itself current after the first install — this cask is `version :latest`
and never needs bumping per release.

### Alternative (no Homebrew)

```sh
curl -fsSL https://updates.nibelung.biz/install.sh | bash
```

### Uninstall

```sh
brew uninstall --cask nibelung          # remove the app
brew uninstall --zap --cask nibelung    # also wipe app data
```
