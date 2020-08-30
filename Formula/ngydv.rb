class Ngydv < Formula
  desc "Create aws cli session keys with mfa-token and store, export it"
  homepage "https://github.com/K2Da/ngydv"
  version "v0.1.5"
  v = "v0.1.5"

  base_url = "https://github.com/K2Da/ngydv/releases/download"

  if OS.linux?
    url "#{base_url}/#{v}/ngydv-#{v}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "343a337851964dbedafa2a15b95a7c6c9a013b571b662662ad7d5ac02e3013ee"
  elsif OS.mac?
    url "#{base_url}/#{v}/ngydv-#{v}-x86_64-apple-darwin.tar.gz"
    sha256 "c5eacdbcf7d6ec5d34023a9d14f6455272e8b03e14d5458d3eb2f1ffe2c7ff90"
  end

  def install
    bin.install "ngydv"
  end

  test do
    system "ngydv --help"
  end
end