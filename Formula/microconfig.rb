class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.1.7/microconfig-macos.zip"
    sha256 "c0adf9e5c23e460170801c4a4533af7f1cacaeb7511749b94ca4492647b5f577"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.1.7/microconfig-linux.zip"
      sha256 "a3d5e634ae5040fef5c553e9acbfa372d10af4526072dd35fbcdbfe879aac657"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end