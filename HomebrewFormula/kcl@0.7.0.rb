# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAt070 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.0-alpha.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.1/kcl-v0.7.0-alpha.1-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "49b4f0b0daeea49ca3d435905cb8e8309690d703c4d5a52b4ce1c3f3b5b062b9"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.1/kcl-v0.7.0-alpha.1-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "682b63e269f61826cb5f7c6221d096826787e07e1f8220a4b16ad0f321bb4e5b"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.1/kcl-v0.7.0-alpha.1-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "32b7616d7b631bbab9f99191856c0604ea964abbaebe5eeb6ca92a9b1cb5026b"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.1/kcl-v0.7.0-alpha.1-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b4afec4aee5cfb773634793d41450247b8b229560f46a0bc741d1427c1dadaa7"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
