cask "screen-paint0r" do
  version "0.0.2"
  sha256 "75798ea93d86c1c18a414954ac521b5aafed226483478b3338044f9f27b31677"

  url "https://github.com/lauer-safenow/screen-paint0r/releases/download/v#{version}/Screen-Paint0r-#{version}.dmg"
  name "Screen Paint0r"
  desc "Screen drawing and annotation overlay"
  homepage "https://github.com/lauer-safenow/screen-paint0r"

  app "Screen Paint0r.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Screen Paint0r.app"]
  end
end
