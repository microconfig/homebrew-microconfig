class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.4.0/microconfig-macos.zip"
    sha256 "8443dcce2f6b447f015dca30824ebd35531aed15db5dda13a9d3643dab87fc69"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.4.0/microconfig-linux.zip"
      sha256 "2fdd5ac2aa0dd268d5d99e6138414870b915bfdb26523d126fafd2dd6638a01c"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
