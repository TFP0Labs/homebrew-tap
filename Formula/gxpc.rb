class Gxpc < Formula
  desc "Sniff XPC communication using Frida and Go"
  homepage "https://github.com/ReverseApple/gxpc"
  version "2.2.1"
  license "MIT"

  depends_on :macos

  # npm is required for building Frida modules at runtime.
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/ReverseApple/gxpc/releases/download/v2.2.1/gxpc_2.2.1_darwin_arm64.tar.gz"
    sha256 "3aa50f4c620f7132c37c6bb6fb6fb0f28a403f70983e5607db47c136555e90f7"
  end
  if Hardware::CPU.intel?
    url "https://github.com/ReverseApple/gxpc/releases/download/v2.2.1/gxpc_2.2.1_darwin_amd64.tar.gz"
    sha256 "6d58409e74d02588571f05ec1188d358e4a1c562166b232b89beaaac16c6dddb"
  end

  def install
    bin.install "gxpc"
  end

  test do
    system bin/"gxpc", "-v"
  end
end
