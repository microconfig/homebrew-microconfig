class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.9/microconfig-macos.zip"
    sha256 "a4f2627170c2adb60ed464fa1ca407105fa95084b50314913e2a648dcb541e29"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.9/microconfig-linux.zip"
      sha256 "188991f203c15f0ff1a4f8a0cfc062d0b6d4578be7adb19828954f1a35833adb"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
