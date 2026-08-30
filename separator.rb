# typed: false
# frozen_string_literal: true

class Separator < Formula
  desc "A simple CLI utility that prints a separator line across the terminal width"
  homepage "https://github.com/hxmbl/separator"
  url "https://github.com/hxmbl/separator/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  license "MIT"

  livecheck do
    url :homepage
    regex(/^v(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "make", "-C", "build"
        bin.install "build/separator"
      end
    end
    if Hardware::CPU.arm?
      def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "make", "-C", "build"
        bin.install "build/separator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "make", "-C", "build"
        bin.install "build/separator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "make", "-C", "build"
        bin.install "build/separator"
      end
    end
  end

  test do
    system "#{bin}/separator"
  end
end