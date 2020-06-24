class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.5/microconfig-macos.zip"
    sha256 "a35a719137e57875d78a4a8ab05f0aeb61abf7ac61adfc61c8d875144f89107a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.5/microconfig-linux.zip"
      sha256 "0b80a5a5d77e626c1ba145d1623e77a5aed98924edd4692319a57afaa1f69e89"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end