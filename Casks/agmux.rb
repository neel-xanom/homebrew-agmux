cask "agmux" do
  version "4.0.1"

  on_arm do
    sha256 "f6066c2e9e0876e69c62d5e4b26a9b96d8ad52565797549c9ee7da9000e033a8"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7f3636af2baa29ce682e360c82d1d059eae1f0a021d34025b2e73cc5a15107e8"
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
