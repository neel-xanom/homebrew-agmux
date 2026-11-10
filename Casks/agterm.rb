cask "agterm" do
  version "1.2.10"
  sha256 "b2f4aeec14d102cbd983b9a9c427f823f446c82001ada25c76e511cf2e10db76"

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
