cask "decky" do
  version "0.1.0"
  sha256 "21c4fe2a99e47947f14a89155a1149bb4c3d55c6c91bc8173c69a82b59e19699"

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
