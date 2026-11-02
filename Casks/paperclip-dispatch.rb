cask "paperclip-dispatch" do
  version "0.4.0"
  sha256 "30a9d04a7b238d51ee63bf25ff4ef25cbe0f0b0fe6f222640605ef665c71f0d5"

  url "https://github.com/Javiervinus/paperclip-dispatch/releases/download/v#{version}/Paperclip-Dispatch-#{version}.dmg"
  name "Paperclip Dispatch"
  desc "Native app for Paperclip with decision notifications and Liquid Glass"
  homepage "https://github.com/Javiervinus/paperclip-dispatch"

  livecheck do
    url "https://github.com/Javiervinus/paperclip-dispatch/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Paperclip Dispatch.app"

  uninstall quit: "com.javiervinueza.paperclip-dispatch"

  zap trash: [
    "~/Library/Application Support/com.javiervinueza.paperclip-dispatch",
    "~/Library/Caches/com.javiervinueza.paperclip-dispatch",
    "~/Library/HTTPStorages/com.javiervinueza.paperclip-dispatch",
    "~/Library/HTTPStorages/com.javiervinueza.paperclip-dispatch.binarycookies",
    "~/Library/Preferences/com.javiervinueza.paperclip-dispatch.plist",
    "~/Library/Saved Application State/com.javiervinueza.paperclip-dispatch.savedState",
    "~/Library/WebKit/com.javiervinueza.paperclip-dispatch",
  ]
end
