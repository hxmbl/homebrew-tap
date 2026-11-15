class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  version "1.2"
  license "MIT"

  on_arm do
    url "https://github.com/hxmbl/separator/releases/download/v1.2/separator-macos-arm64.tar.gz"
    sha256 "7bd9d243b2235aab2e3e81f0f3698c518b2a16070dadff6d268d86161763a2f8"
  end

  on_intel do
    url "https://github.com/hxmbl/separator/releases/download/v1.2/separator-macos-amd64.tar.gz"
    sha256 "9b6f9be09db3a7f07bff132f26dac6205154a6bed7e1a8690746af4859e713eb"
  end

  def install
    bin.install "separator"
  end

  test do
    system "#{bin}/separator"
  end
end
