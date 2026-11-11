cask "paperclip-dispatch" do
  version "0.5.0"
  sha256 "7f9ccfa67177da6a2daab35a3efab7d1394803797a44174b8dac38a5517a1efa"

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
