cask "screen-paint0r" do
  version "0.0.4"
  sha256 "4e22e1f268a0ee91923c86008de60d7657571f5de2e026d2e6568c2aa145fbde"

  url "https://github.com/lauer-safenow/screen-paint0r/releases/download/v#{version}/Screen-Paint0r-#{version}.dmg"
  name "Screen Paint0r"
  desc "Screen drawing and annotation overlay"
  homepage "https://github.com/lauer-safenow/screen-paint0r"

  app "Screen Paint0r.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Screen Paint0r.app"]
  end
end
