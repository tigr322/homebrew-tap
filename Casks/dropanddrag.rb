cask "dropanddrag" do
  version "1.0.0"
  sha256 arm:   "636712b54e55618f7b5797dc60fe9932be482f3db972f8ae230c931d2397faee",
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
