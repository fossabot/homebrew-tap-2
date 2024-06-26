# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.8.2"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.2/kcl-v0.8.2-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f9ddacc315f618643ed75a7798763b8e305190df24f76a341479a7e8586c3bef"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.2/kcl-v0.8.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a32ea8f9369660d172326ebb64c3e087a617ece2155c75737aa7fbee0a28768d"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.2/kcl-v0.8.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bbd3e6dd404cfc1ebcf9177d48dbc45d095d47dc0f9e37a654df9c2063cde79f"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.2/kcl-v0.8.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f82b0b860551a83e53e94a1ece9c19f327a967735805c4f4ead8975388ccabf5"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
