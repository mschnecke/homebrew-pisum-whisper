# Homebrew Tap for Pisum Whisper

Official Homebrew cask for [Pisum Whisper](https://github.com/mschnecke/pisum-whisper), a cross-platform, Hotkey-driven, system-tray-style dictation tool.

## Installation

```bash
brew tap mschnecke/pisum-whisper
brew install --cask pisum-whisper
```

## Update

```bash
brew upgrade --cask pisum-whisper
```

## Uninstall

```bash
# Keep user data
brew uninstall --cask pisum-whisper

# Remove everything including user data
brew uninstall --cask --zap pisum-whisper

# Remove tap
brew untap mschnecke/pisum-whisper
```

## Post-Installation

Pisum Whisper requires Accessibility permissions to capture audio and register system-wide hotkeys.

1. Open **System Settings** > **Privacy & Security** > **Accessibility**
2. Enable **Pisum Whisper** in the list

## Data Locations

| Location                                          | Purpose          |
| ------------------------------------------------- | ---------------- |
| `~/Library/Application Support/net.pisum.whisper` | Application data |
| `~/Library/Caches/net.pisum.whisper`              | Cache files      |
| `~/Library/Preferences/net.pisum.whisper.plist`   | Preferences      |
| `~/Library/LaunchAgents/net.pisum.whisper.plist`  | Launch agent     |

## Architecture Support

The cask installs the ARM64 version for Apple Silicon Macs (M1/M2/M3/M4/M5).

## Automatic Updates

This tap automatically stays in sync with Pisum Whisper releases. When a new version is published to the [main repository](https://github.com/mschnecke/pisum-whisper), a GitHub Actions workflow updates this cask with new version numbers and checksums.

## Links

- [Pisum Whisper Repository](https://github.com/mschnecke/pisum-whisper)
- [Releases](https://github.com/mschnecke/pisum-whisper/releases)
- [Issues](https://github.com/mschnecke/pisum-whisper/issues)
