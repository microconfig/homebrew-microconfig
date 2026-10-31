class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.9.6"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.9.6/microconfig-macos.zip"
    sha256 "3b9efea205be9bd766c4ee0be2f5ef8165b92fac6647127a6aaeb2e4f7d0e2a8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.9.6/microconfig-linux.zip"
      sha256 "5f3ef1f577a55a22b1cf1a85259b8240a77c0d4510e18575da3c270c240d54f1"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
