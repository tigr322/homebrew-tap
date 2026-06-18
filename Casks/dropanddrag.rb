cask "dropanddrag" do
  version "1.0.2"
  sha256 arm:   "b0617655a5a3566ebc8983dfd1986026058570c0370e3ed4ad9fe39720a0a75e",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/tigr322/DropAndDrag/releases/download/v#{version}/DropAndDrag-#{version}-macOS.dmg"
  name "DropAndDrag"
  desc "Fast cross-platform drag-and-drop shelf utility"
  homepage "https://github.com/tigr322/DropAndDrag"

  depends_on macos: :ventura

  app "DropAndDrag.app"

  postflight do
    system_command "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister",
                   args: ["-f", "#{appdir}/DropAndDrag.app"]
  end

  zap trash: [
    "~/Library/Application Support/DropAndDrag",
    "~/Library/Preferences/com.dropanddrag.app.plist",
    "~/Library/Caches/DropAndDrag",
  ]
end
