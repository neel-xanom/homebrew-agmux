cask "xanom" do
  version "2.0.3"

  on_arm do
    sha256 "f39f17f387029cff5fed0e5d7e4d4896bce3e7a69b4f664ca707eac9b820b8ea"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "563433bc044eb9d9542c8a0ff02ea5a920d154a0f568563c502800aac1910588"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_x64.dmg"
  end

  name "Xanom"
  desc "Desktop app for managing AI coding agents (Claude Code, Codex)"
  homepage "https://github.com/neel-xanom/xanom-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Xanom.app"

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
