cask "skills-manager" do
  version "0.1.0"
  sha256 "48e82692a5cb2b1f8c80ff83132edd8b0179400c993ff2a2e1a19c47a9cca6a4"

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
