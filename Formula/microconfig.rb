class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.4.2/microconfig-macos.zip"
    sha256 "b01dd0f64cea48daeeda69e37f7156e5bda24806f66cef71c126c536bf5d6e99"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.4.2/microconfig-linux.zip"
      sha256 "d146d5860ea960b385533122814acbc21c6ef74c0428ec141bf04aec91031391"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end