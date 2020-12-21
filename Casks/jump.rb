cask "jump" do
  version "8.6.19,80619"
  sha256 "77ceca3b2622125305d73975141799f94dd3425d1da9b55eedc08c2cd20c7a70"

  url "https://dl.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.before_comma}.zip"
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
