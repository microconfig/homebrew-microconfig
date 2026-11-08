class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "5.0.0"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v5.0.0/microconfig-macos.zip"
    sha256 "b95c37df6bd5f7c334d1c95b4c484cab35968a4726f87c0d24a62d6dc112d10e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v5.0.0/microconfig-linux.zip"
      sha256 "d4490608d3e9d2f9d0de126c140997d639d78666e04baf6ce3012bd50981da1e"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
