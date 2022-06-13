class Microconfig < Formula
  desc "Modern way of microservice configuration management"
  homepage "https://microconfig.io/"
  version "4.6.0"

  if OS.mac?
    url "https://github.com/microconfig/microconfig/releases/download/v4.6.0/microconfig-macos.zip"
    sha256 "a99a80638e4704691ff1f7f5131ef93bc7f5717a553ac19b1245791adf310f9b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/microconfig/microconfig/releases/download/v4.6.0/microconfig-linux.zip"
      sha256 "f37d211be8c7e91b2998fe523daa23dc887d0839a2c084656fe8fdbcf60c8744"
    end
  end

  def install
    bin.install "microconfig"
  end

  test do
    system "microconfig -v"
  end
end
