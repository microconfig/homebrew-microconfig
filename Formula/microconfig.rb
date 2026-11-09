class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "5.0.2"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v5.0.2/microconfig-macos.zip"
    sha256 "a4e99f2a87559f48fab5c9e2c55cf1c9506c9c2e5fc74ed464583b257eb0ef76"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v5.0.2/microconfig-linux.zip"
      sha256 "cc8ef57f9c0e51ff54990761f7ea6ef0ea72d616b54015732f780a7b2cdf1867"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
