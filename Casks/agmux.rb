cask "agmux" do
  version "4.1.2"

  on_arm do
    sha256 "e1e608ca93891523b11b03aef90a617749cbbe2140999ecfd8ea056e5dcaaaed"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3847526b482fcaba8f1dcbc00d5afef070aebfd3883e12e975b471cca2636ad3"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_x64.dmg"
  end

  name "agmux"
  desc "Desktop app for managing AI coding agents (Claude Code, Codex)"
  homepage "https://github.com/neel-xanom/agmux-releases"

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
