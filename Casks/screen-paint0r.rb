cask "screen-paint0r" do
  version "0.0.3"
  sha256 "9149d3f9fdf458a695c780a7739c9add6f44184a617a1c9065bdb99cbe8e97f1"

  url "https://github.com/lauer-safenow/screen-paint0r/releases/download/v#{version}/Screen-Paint0r-#{version}.dmg"
  name "Screen Paint0r"
  desc "Screen drawing and annotation overlay"
  homepage "https://github.com/lauer-safenow/screen-paint0r"

  app "Screen Paint0r.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Screen Paint0r.app"]
  end
end
