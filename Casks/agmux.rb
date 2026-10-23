cask "agmux" do
  version "4.3.4"

  on_arm do
    sha256 "6de62371ec99c3e7b7a01e716f7e2fad2eca5406d3f53b34c6078c00875110aa"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "93b26183e224432636304f33f88db7310fe46bda6a78fcd236cea0a8616a7c33"
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
