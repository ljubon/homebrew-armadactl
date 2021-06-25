# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Armadactl < Formula
  desc "Example binary distribution using homebrew"
  homepage "https://github.com/ljubon/homebrew-armadactl"
  version "0.3.95"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ljubon/armada/releases/download/v0.3.95/armadactl_0.3.95_darwin_amd64.tar.gz"
      sha256 "f0f64f9e2ae003ed934a2f7ac3db6abf6e24443e613a6ca75bc59492dc6472de"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ljubon/armada/releases/download/v0.3.95/armadactl_0.3.95_darwin_arm64.tar.gz"
      sha256 "1613e6085de990f54845ceb3f7f06e2dd34e2893d574c54baff5527bddbcb8d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ljubon/armada/releases/download/v0.3.95/armadactl_0.3.95_linux_amd64.tar.gz"
      sha256 "81fe10addd13a9bdcf3ab0c3bf74e003851242a380a73a8c4e74b4a4375d9ee1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ljubon/armada/releases/download/v0.3.95/armadactl_0.3.95_linux_arm64.tar.gz"
      sha256 "2bc95ed0730fe74eb31bb9430c15f2173b7e7a6490d49d9d7a6b2329b9b4e388"
    end
  end

  def install
    bin.install "armadactl"
  end

  test do
    system "#{bin}/armadactl help"
  end
end
