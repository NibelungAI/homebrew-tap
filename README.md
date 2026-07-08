# Nibelung Homebrew Tap

Homebrew cask for **Nibelung** — the native macOS hub / RBAC-aware operations launcher.

```sh
# 1. one-time: Homebrew 6+ requires explicitly trusting third-party taps
brew trust nibelungai/tap

# 2. install (--no-quarantine because the app is ad-hoc signed, not notarized)
HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask nibelungai/tap/nibelung
```

The app ships its own signed auto-updater, so it keeps itself current after the
first install — this cask is `version :latest` and **never needs bumping per
release**. `--no-quarantine` lets Gatekeeper open the ad-hoc-signed build without a
prompt; skip it and macOS asks you to right-click → Open once.

### Already installed it via the curl script?

Let Homebrew adopt the existing app instead of reinstalling:

```sh
brew install --cask --adopt nibelungai/tap/nibelung
```

### No Homebrew? One-liner installer

```sh
curl -fsSL https://updates.nibelung.biz/install.sh | bash
```

### Uninstall

```sh
brew uninstall --cask nibelung          # remove the app
brew uninstall --zap --cask nibelung    # also wipe app data
```
