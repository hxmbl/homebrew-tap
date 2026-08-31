class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  url "https://github.com/hxmbl/separator/releases/download/v1.14.0/separator-macos-amd64.tar.gz"
  version "1.14.0"
  sha256 "a4f0fdbb1b99c4b35829e7d5e1cf9e31b2dc6ba1240fe6b43de1cf134389fa60"
  license "MIT"

  def install
    bin.install "separator"
  end

  test do
    system "#{bin}/separator"
  end
end
