class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.3.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.3.5/microconfig-macos.zip"
    sha256 "158f0a62d8240491e85e5cddc7ee0e3e44fa8027b122fa6eedec713950b2b6f3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.3.5/microconfig-linux.zip"
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
