cask "agmux" do
  version "4.2.0"

  on_arm do
    sha256 "010c5aa41d51bf5b92906f30bbe22e3d1036071004e29600b1e8a35ce2ce9539"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3fa63c7ea5f0be976515b200d9d442640c855d8fe4c6080a2bf26543922cf46d"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_x64.dmg"
  end

  name "agmux"
  desc "Desktop app for managing AI coding agents (Claude Code, Codex)"
  homepage "https://github.com/neelsatyavolu/agmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "agmux.app"

  zap trash: [
    "~/.agmux",
    "~/.xanom",
    "~/Library/Application Support/com.xanom.app",
    "~/Library/Caches/com.xanom.app",
    "~/Library/Logs/com.xanom.app",
    "~/Library/Preferences/com.xanom.app.plist",
    "~/Library/Saved Application State/com.xanom.app.savedState",
    "~/Library/WebKit/com.xanom.app",
  ]
end
