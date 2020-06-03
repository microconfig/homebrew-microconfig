class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.3/microconfig-macos.zip"
    sha256 "605ace6dfd12ba2f77df7494f414dd5509d0277c2beeed84540e7e74bddd231f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.3/microconfig-linux.zip"
      sha256 "9e58a7f00220cad0a0880f0e18499a60c852c507df6b40d933847b3b1f2f25b8"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end