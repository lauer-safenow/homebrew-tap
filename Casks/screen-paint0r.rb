cask "screen-paint0r" do
  version "0.0.5"
  sha256 "49417acc5f1c8a019e57b115b11ccb1f4d4ac6aba6f5e3c13d6d7bc54bfa64f9"

  url "https://github.com/lauer-safenow/screen-paint0r/releases/download/v#{version}/Screen-Paint0r-#{version}.dmg"
  name "Screen Paint0r"
  desc "Screen drawing and annotation overlay"
  homepage "https://github.com/lauer-safenow/screen-paint0r"

  app "Screen Paint0r.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Screen Paint0r.app"]
  end
end
