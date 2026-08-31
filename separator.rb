class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  url "https://github.com/hxmbl/separator/releases/download/v1.15.0/separator-macos-arm64.tar.gz"
  version "1.15.0"
  sha256 "850df7f8458f4e0f3342a07b618b5537978a9894ebe537cee85cee41da98c68c"
  license "MIT"

  def install
    bin.install "separator"
  end

  test do
    system "#{bin}/separator"
  end
end
