class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.4/microconfig-macos.zip"
    sha256 "088b18882b29f934c272f48ea734b28e6cb52c5b764b2ff616d9b4902cba8717"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.4/microconfig-linux.zip"
      sha256 "65b8fc529b2784df4a1fb5d1befc6e50cb9391d60c3549f094abdf61a2c01876"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end