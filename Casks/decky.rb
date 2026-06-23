cask "decky" do
  version "0.1.1"
  sha256 "bd4c4ea6eb77e162588bf0d529443eaa423bce6f4009bd4dbd73e849a99607ba"

  url "https://github.com/danielsussa/decky/releases/download/v#{version}/decky-#{version}-arm64.dmg"
  name "decky"
  desc "Shell to drive the Claude agent + me CLI: terminal, Live View, files and todos in one panel"
  homepage "https://github.com/danielsussa/decky"

  depends_on arch: :arm64

  app "decky.app"

  zap trash: [
    "~/Library/Application Support/decky",
    "~/Library/Preferences/com.danielsussa.decky.plist",
    "~/Library/Saved Application State/com.danielsussa.decky.savedState",
    "~/.decky",
  ]
end
