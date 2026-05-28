cask "xanom" do
  version "2.1.2"

  on_arm do
    sha256 "99350b6930157126d30812a366a4bec672564f6dbe7c5bbe99cbd557de815728"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c3fa8c5bc66af45e0e5e5101c481e3c026dd8c3c6289bb36a9d9623d8bedcf41"
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
