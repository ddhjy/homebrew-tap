cask "skills-manager" do
  version "0.1.2"
  sha256 "f8afd54675f2361f6f0b5472cc5f5ded4688187c6ffff148c61c116c96d8181d"

  url "https://github.com/ddhjy/skills-manager-releases/releases/download/v#{version}/SkillsManager-#{version}.dmg"
  name "Skills Manager"
  desc "Install AI coding agent skills once and deploy them to every agent"
  homepage "https://skillsmanager.suixinapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Skills Manager.app"

  uninstall quit: "com.skillsmanager.native"

  zap trash: [
    "~/Library/Application Support/skills-manager",
    "~/Library/Caches/com.skillsmanager.native",
    "~/Library/HTTPStorages/com.skillsmanager.native",
    "~/Library/HTTPStorages/com.skillsmanager.native.binarycookies",
    "~/Library/Preferences/com.skillsmanager.native.plist",
    "~/Library/Saved Application State/com.skillsmanager.native.savedState",
  ]
end
