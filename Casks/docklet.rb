cask "docklet" do
  version "1.0.34"
  sha256 "85c3e5ea5f32cfb40046ce65bf9693554366334ca4f0b1f477a71c97576106c5"

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
