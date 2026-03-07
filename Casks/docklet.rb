cask "docklet" do
  version "1.0.35"
  sha256 "9a5dfd9f1fe7c70f778a4c4eb6dbcb7b2506dc1776e7c29ef9640db534d0b963"

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
