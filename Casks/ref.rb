cask "ref" do
  version "0.3.41"
  sha256 "00c78f5098158478cd5893e56037af20c57654802d97e0525f9f2fa402f1383a"

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
