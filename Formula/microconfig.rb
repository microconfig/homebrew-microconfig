class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.4.3/microconfig-macos.zip"
    sha256 "a570d23b0ce0e615ba97c55996cb9fc76da7578f0dd62e979f3e3ac2550dfbcd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.4.3/microconfig-linux.zip"
      sha256 "f11c7f9b7a5d0b31765f22d79d12531c6334695821e33a04c46cd065c473d659"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end