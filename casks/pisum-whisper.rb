cask "pisum-whisper" do
  version "1.0.1"
  sha256 arm: "da8c2c4bfcd27b3a9f439f0a39a0e764b7f8db676ee085382bf78e20b9d79feb"

  url "https://github.com/mschnecke/pisum-whisper/releases/download/v#{version}/Pisum.Whisper_#{version}_osx-arm64.pkg"

  name "Pisum Whisper"
  desc "A cross-platform, Hotkey-driven, system-tray-style dictation tool."
  homepage "https://github.com/mschnecke/pisum-whisper"


  pkg "Pisum.Whisper_#{version}_osx-arm64.pkg"

  # uninstall pkgutil: "net.pisum.whisper.app",
  #           delete: "/Applications/Pisum Whisper.app"

  uninstall pkgutil: "net.pisum.whisper.app"

  zap trash: [
    "~/Library/Application Support/net.pisum.whisper",
    "~/Library/Caches/net.pisum.whisper",
    "~/Library/Preferences/net.pisum.whisper.plist",
    "~/Library/LaunchAgents/net.pisum.whisper.plist",
  ]

  caveats <<~EOS
    Pisum Whisper requires Accessibility permissions to register system-wide hotkeys.

    To grant permissions:
    1. Open System Settings > Privacy & Security > Accessibility
    2. Enable Pisum Whisper in the list

    Settings are stored in: ~/.pisum-whisper.json
  EOS
end
