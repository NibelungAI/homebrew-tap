cask "nibelung" do
  version :latest
  sha256 :no_check

  url "https://updates.nibelung.biz/Nibelung-latest.dmg"
  name "Nibelung"
  desc "Nibelung team hub & RBAC-aware operations launcher"
  homepage "https://nibelung.biz"

  # Ships its own signed (minisign) auto-updater, so Homebrew only performs the
  # first install — the app keeps itself current after that. That's why this cask
  # is `version :latest` and never needs bumping per release.
  auto_updates true
  depends_on macos: :sonoma

  app "Nibelung.app"

  # NOTE: ad-hoc signed (not Apple-notarized). Install without the quarantine flag
  # so Gatekeeper opens it without a prompt (Homebrew 6 removed the --no-quarantine
  # CLI flag; use the env instead):
  #   HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask nibelungai/tap/nibelung
  # Skip it and macOS just asks you to right-click → Open once.

  zap trash: [
    "~/Library/Application Support/biz.nibelung.desktop",
    "~/Library/Caches/biz.nibelung.desktop",
    "~/Library/HTTPStorages/biz.nibelung.desktop",
    "~/Library/Preferences/biz.nibelung.desktop.plist",
    "~/Library/Saved Application State/biz.nibelung.desktop.savedState",
    "~/Library/WebKit/biz.nibelung.desktop",
  ]
end
