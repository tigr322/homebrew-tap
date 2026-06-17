cask "dropanddrag" do
  version "1.0.1"
  sha256 arm:   "f218a45ec175c6ed479e8e600d7c4ca813895451268f8703b72335b7e313ac7f",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/tigr322/DropAndDrag/releases/download/v#{version}/DropAndDrag-#{version}-macOS.dmg"
  name "DropAndDrag"
  desc "Fast cross-platform drag-and-drop shelf utility"
  homepage "https://github.com/tigr322/DropAndDrag"

  depends_on macos: :ventura

  app "DropAndDrag.app"

  zap trash: [
    "~/Library/Application Support/DropAndDrag",
    "~/Library/Preferences/com.dropanddrag.app.plist",
    "~/Library/Caches/DropAndDrag",
  ]
end
