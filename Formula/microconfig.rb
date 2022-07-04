class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.9.0"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.9.0/microconfig-macos.zip"
    sha256 "302d77b5effd47dd9d4fb9abc485a0b9aa84d806529e3e647cdb4cd7a32e0a8c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.9.0/microconfig-linux.zip"
      sha256 "6932db5c574d12db3636d2f75d82f425387943a991e1fedda3cb9f2bdd9d033f"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
