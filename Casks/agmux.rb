cask "agmux" do
  version "4.1.0"

  on_arm do
    sha256 "d4f02a4d09f469fd530a5d5923737b91a8184bee0cebdbf9856ee55d7f826217"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "12c8fb06e373f18580f50f545db8bb120a612eed82d6c8b6cbf2f368d1336a8d"
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
