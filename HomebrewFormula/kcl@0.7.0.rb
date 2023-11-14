# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAT070 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.0-alpha.2"
  license "Apache License"

  depends_on "kcl-lsp@0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c9cd51849a7a70d5142304f1c58b513e9c051b69a8d1107c6d34c1269333055d"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f04f6af48352660f8e55c119607fae665063b9ea22a0c03f4341fa0878326bb5"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a266a65b5c9e5ca5a8c942fa99c32764e3b8daac865225b492d9592c304080b4"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "666528dd86f7222bf1720c836af92bf9a51e67acb4c0504aeafdd0f370c328c4"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
