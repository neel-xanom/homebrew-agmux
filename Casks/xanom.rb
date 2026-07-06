cask "xanom" do
  version "2.2.0"

  on_arm do
    sha256 "2e6f70094c524b17d02f43ef3101226371273cf295781e9ad9c66cadf438335e"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7465061855d7c57874b42f0d76a2edf48d6f9db5267ff573a9bae07506d087d7"
    url "https://github.com/neel-xanom/agmux-releases/releases/download/v#{version}/agmux_#{version}_x64.dmg"
  end

  name "Xanom"
  desc "Desktop app for managing AI coding agents (Claude Code, Codex)"
  homepage "https://github.com/neel-xanom/agmux-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "agmux.app"

  zap trash: [
    "~/.xanom",
    "~/Library/Application Support/com.xanom.app",
    "~/Library/Caches/com.xanom.app",
    "~/Library/Logs/com.xanom.app",
    "~/Library/Preferences/com.xanom.app.plist",
    "~/Library/Saved Application State/com.xanom.app.savedState",
    "~/Library/WebKit/com.xanom.app",
  ]
end
