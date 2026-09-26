cask "agmux" do
  version "4.3.0"

  on_arm do
    sha256 "5d2a2fd7a3380f3530b47d21119dd2958b81eee312229f1eac5b6c6471585809"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "892e3b5c07bb3d9284682a0743e433fcd6644d19d79ae6d3cbc44526b576d4f3"
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
