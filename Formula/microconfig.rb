class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.7.0"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.7.0/microconfig-macos.zip"
    sha256 "40fadbe63e67744e7f5c72510dd7272994feb9162e9cb9e8a45221b3a5242ac3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.7.0/microconfig-linux.zip"
      sha256 "67dd4321c128c92dec7d28fa2737eee2c144990acf54855c098c4d18b9e5f5ca"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
