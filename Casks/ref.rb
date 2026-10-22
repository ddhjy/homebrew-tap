cask "ref" do
  version "0.3.38"
  sha256 "8b43b0178ff913df74ef0ba17247dc5a6398b75823c1d248d877b4a3081bc448"

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
