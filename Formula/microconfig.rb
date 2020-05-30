class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.2/microconfig-macos.zip"
    sha256 "63f3fab8bb3fabc49053c485105ddd4bd5a15297f47e07693b5ee8e36e3798a5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.2/microconfig-linux.zip"
      sha256 "adc2989dcb797528bdafd176ae564ea8c1ee1f4f152a74e72a0c1926507b5951"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "true"
  end
end