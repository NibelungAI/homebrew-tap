<div align="center">

# 🏔️ Nibelung

**The native macOS app for the Nibelung team.**

<sub>Homebrew tap · universal build · self-updating</sub>

</div>

---

## Install

```sh
# one-time — Homebrew 6+ asks you to trust third-party taps
brew trust nibelungai/tap

# install
HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask nibelungai/tap/nibelung
```

Prefer not to use Homebrew? One line:

```sh
curl -fsSL https://updates.nibelung.biz/install.sh | bash
```

> The app keeps itself up to date after the first install, so this cask is
> `version :latest` and never needs a per-release bump. `--no-quarantine` lets
> macOS open the build without a Gatekeeper prompt.

## Update

Nothing to do — Nibelung updates itself in the background. To pull the newest
build immediately:

```sh
brew reinstall --cask nibelungai/tap/nibelung
```

## Uninstall

```sh
brew uninstall --cask nibelung          # remove the app
brew uninstall --zap --cask nibelung    # …and wipe local app data
```

## Notes

- **macOS 14 (Sonoma) or newer** · Apple silicon **and** Intel (universal).
- Installed it another way already? Let Homebrew adopt it:
  ```sh
  brew install --cask --adopt nibelungai/tap/nibelung
  ```

<div align="center"><sub>© Nibelung</sub></div>
