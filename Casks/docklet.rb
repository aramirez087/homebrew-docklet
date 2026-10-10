cask "docklet" do
  version "2.1.2"
  sha256 "dd11a287d0fd878dd48ac4cd79a11281fa3e201ccb17596c7121d356a7921d6b"

  url "https://dl.getdocklet.app/Docklet.dmg"
  name "Docklet"
  desc "Dynamic Island-style overlay for macOS with media controls, timers, and more"
  homepage "https://getdocklet.app/"

  depends_on macos: ">= :ventura"

  app "Docklet.app"

  zap trash: [
    "~/Library/Preferences/com.docklet.app.plist",
    "~/Library/Caches/com.docklet.app",
  ]
end
