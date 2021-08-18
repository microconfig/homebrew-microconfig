class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.5.0/microconfig-macos.zip"
    sha256 "ae3abf0093732d1b8593fac8f81e551f2758fb29c32613492e9d362fd6f8d069"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.5.0/microconfig-linux.zip"
      sha256 "3ae00ca7eb8af720e2a9536c984bd52b97f46d8d6b9198dc4379e2ce8594f944"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end