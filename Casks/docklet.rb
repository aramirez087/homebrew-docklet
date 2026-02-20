cask "docklet" do
  version "1.0.32"
  sha256 "f054f95914bf0471fea588ad84c89f6e14d89e4c46c54ba88f569d8c7c8a585f"

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
