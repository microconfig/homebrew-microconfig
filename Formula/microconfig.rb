class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.4.1/microconfig-macos.zip"
    sha256 "e306b23e248ae7c782474d449f1fc92a89869a23779a3e1f08cc3bf599a73433"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.4.1/microconfig-linux.zip"
      sha256 "6d2ab74378fcb8b73f39d25ab19fdc4a789c0284da5198876f03f379e844fe8d"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end