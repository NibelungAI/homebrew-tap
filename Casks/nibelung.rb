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

  # Ad-hoc signed → clear the quarantine flag so Gatekeeper doesn't block launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Nibelung.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/biz.nibelung.desktop",
    "~/Library/Caches/biz.nibelung.desktop",
    "~/Library/HTTPStorages/biz.nibelung.desktop",
    "~/Library/Preferences/biz.nibelung.desktop.plist",
    "~/Library/Saved Application State/biz.nibelung.desktop.savedState",
    "~/Library/WebKit/biz.nibelung.desktop",
  ]
end
