cask "screen-paint0r" do
  version "0.0.6"
  sha256 "9abe8ecebbc69907651974c165e3566142bcc01b1e160178a3423d3ab8b8d965"

  url "https://github.com/lauer-safenow/screen-paint0r/releases/download/v#{version}/Screen-Paint0r-#{version}.dmg"
  name "Screen Paint0r"
  desc "Screen drawing and annotation overlay"
  homepage "https://github.com/lauer-safenow/screen-paint0r"

  app "Screen Paint0r.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Screen Paint0r.app"]
  end
end
