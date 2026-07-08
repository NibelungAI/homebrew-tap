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
  depends_on macos: ">= :sonoma"

  app "Nibelung.app"

  # NOTE: ad-hoc signed (not Apple-notarized), so install with --no-quarantine:
  #   brew install --cask --no-quarantine nibelungai/tap/nibelung
  # Otherwise Gatekeeper blocks first launch (right-click → Open, once).
  # Kept declarative (no preflight/postflight) so the tap loads without `brew trust`.

  zap trash: [
    "~/Library/Application Support/biz.nibelung.desktop",
    "~/Library/Caches/biz.nibelung.desktop",
    "~/Library/HTTPStorages/biz.nibelung.desktop",
    "~/Library/Preferences/biz.nibelung.desktop.plist",
    "~/Library/Saved Application State/biz.nibelung.desktop.savedState",
    "~/Library/WebKit/biz.nibelung.desktop",
  ]
end
