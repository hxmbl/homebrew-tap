# typed: false
# frozen_string_literal: true

class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  url "https://github.com/hxmbl/separator/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  license "MIT"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build"
    bin.install "build/separator"
  end

  test do
    system "#{bin}/separator"
  end
end