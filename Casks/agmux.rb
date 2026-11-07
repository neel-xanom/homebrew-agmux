cask "agmux" do
  version "4.3.7"

  on_arm do
    sha256 "37f02ceed0e6d73a0cf36a7328042ba7d6196ef2647a5169a0cd51a2f3cf8802"
    url "https://github.com/neelsatyavolu/agmux/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "44015822725f1bb5f473e8ed900dd5b49d2999a00deb2b463c6b7d62a90f7d31"
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
