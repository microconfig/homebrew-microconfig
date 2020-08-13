class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.8/microconfig-macos.zip"
    sha256 "2d8a2ac897fe73d94da35123d0a681204b78ccecf1c7227f3fed39bd7a12ba2c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.8/microconfig-linux.zip"
      sha256 "36854441d70ea0019a6da0630cfdcbd4eed3fbba53c7b57c7868fe6e64ca2a12"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
