cask "xanom" do
  version "2.0.8"

  on_arm do
    sha256 "efa060b7ea0adcae6fadbca1ba165b0cdd1a64daf576f250ae2bbddac6793bb5"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b2120dff6a6ae43defda0d5c547d31d56c79568f68dcde448e8c7bc1da01faa9"
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
