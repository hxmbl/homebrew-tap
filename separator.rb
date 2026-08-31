class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  version "1.16.0"
  license "MIT"

  on_arm do
    url "https://github.com/hxmbl/separator/releases/download/v1.16.0/separator-macos-arm64.tar.gz"
    sha256 "3b7ec406cbb890463970828e6ab2661ffe448341c707f2c4c07871d1fb14e0fe"
  end

  on_intel do
    url "https://github.com/hxmbl/separator/releases/download/v1.16.0/separator-macos-amd64.tar.gz"
    sha256 "b35bcae4055ba2d23ea01a1d988c3689f48b19c96927549537efd073771376b8"
  end

  def install
    bin.install "separator"
  end

  test do
    system "#{bin}/separator"
  end
end
