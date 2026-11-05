cask "agmux" do
  version "4.3.5"

  on_arm do
    sha256 "7fa2b9b564e2c6f87fd783f0cddd393c26df4cb6daa036a3b9ecfb1a62c555ea"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "163e205da493fe081081b599c1444e453f0e2c7d8b22c49a7e2073977cdb2198"
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
