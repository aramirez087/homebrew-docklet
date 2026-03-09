cask "docklet" do
  version "1.0.36"
  sha256 "3ed4d98cc55967af900dea989e21b4093dbb735dcf92b300a1b887d8fc20f9f9"

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
