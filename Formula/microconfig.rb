class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.9.3"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.9.3/microconfig-macos.zip"
    sha256 "dcafa3103a3a02789fdcf49a231637009eed0c86d6ae8543710977cf64a3546f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.9.3/microconfig-linux.zip"
      sha256 "79bf8f45e9d6b8a8e3a2611663829ae24f8ef698b7d2a9f5bebb423c35bd8d80"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
