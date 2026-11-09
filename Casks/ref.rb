cask "ref" do
  version "0.3.52"
  sha256 "caa28acbb9ea88a468ee7901d3294c682b5224d6eb8d8a673f15683083c39ccb"

  url "https://github.com/ddhjy/ref-releases/releases/download/v#{version}/Ref-#{version}.dmg"
  name "Ref"
  desc "Annotate a screenshot with numbered marks for an agent or a colleague"
  homepage "https://github.com/ddhjy/ref-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Ref.app"

  uninstall quit: "com.ddhjy.ref"

  zap trash: [
    "~/Library/Application Support/Ref",
    "~/Library/Caches/com.ddhjy.ref",
    "~/Library/HTTPStorages/com.ddhjy.ref",
    "~/Library/HTTPStorages/com.ddhjy.ref.binarycookies",
    "~/Library/Preferences/com.ddhjy.ref.plist",
    "~/Library/Saved Application State/com.ddhjy.ref.savedState",
  ]
end
