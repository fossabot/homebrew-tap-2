# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAT071 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.1"
  license "Apache License"

  depends_on "kcl-lsp@0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.1/kcl-v0.7.1-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b23a557e2336143554f38ff1ae744ddd4582f9f857334f8c3dd4ba82ffc3845c"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.1/kcl-v0.7.1-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6c54765f1e9cfd532e1e24d4e482043a4a8df7245c2e97bb5bb00a0808338733"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.1/kcl-v0.7.1-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "baa53bf4ce0e06a4781c5b103bd174ec5f9b4cf70cd97988858981332188274c"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.1/kcl-v0.7.1-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1fba957fbd8049e6cb931c8321c8b9c6f963fcf27674f435b0729f19c8180c26"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end