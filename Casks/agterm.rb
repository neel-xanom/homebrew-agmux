cask "agterm" do
  version "1.3.1"
  sha256 "729b3cfc74fe428da754041098a7767257f366162f7ba0dda82f72b5cdf8a8c4"

  url "https://github.com/neelsatyavolu/agterm/releases/download/v#{version}/agterm-#{version}.zip"
  name "agterm"
  desc "Terminal for coding agents"
  homepage "https://agterm.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "agterm.app"

  # The closed-lid keep-awake helper and its sudoers rule, if you turned that on.
  uninstall delete: [
    "/etc/sudoers.d/agterm-closed-lid",
    "/Library/PrivilegedHelperTools/co.xanom.agterm.closed-lid",
  ]

  zap trash: [
    "~/Library/Application Support/co.xanom.agterm",
    "~/Library/Caches/co.xanom.agterm",
    "~/Library/HTTPStorages/co.xanom.agterm",
    "~/Library/Preferences/co.xanom.agterm.plist",
    "~/Library/Saved Application State/co.xanom.agterm.savedState",
  ]
end
