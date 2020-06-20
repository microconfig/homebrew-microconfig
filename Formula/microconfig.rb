class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.4/microconfig-macos.zip"
    sha256 "2999368d8d399362302ca96511ecf716b232743e9dd44dd02b12a192824a47b7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.4/microconfig-linux.zip"
      sha256 "9ed4d47bc62875eacfb833882124bce53eaeeb739d57473b6562f34119759525"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end