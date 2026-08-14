cask "agmux" do
  version "4.0.0"

  on_arm do
    sha256 "a5b640042fcefd47ce749aad2e7534f065e69ca231fff0472d0ce332c8bb2960"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "981fe9eb6c9129531cce849568bf89e4f57ccb0868fb001f9f7389e4e2ab4de7"
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
