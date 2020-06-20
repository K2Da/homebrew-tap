class Ngydv < Formula
  desc "Create aws cli session keys with mfa-token and store, export it"
  homepage "https://github.com/K2Da/ngydv"
  version "v0.1.4"
  v = "v0.1.4"

  base_url = "https://github.com/K2Da/ngydv/releases/download"

  if OS.linux?
    url "#{base_url}/#{v}/ngydv-#{v}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dbbd6b462d2382d55c9c26fdaeb8e477c02132fedba80c2e7547486e7b35b13c"
  elsif OS.mac?
    url "#{base_url}/#{v}/ngydv-#{v}-x86_64-apple-darwin.tar.gz"
    sha256 "30f88e941361a74a7dd62a335f8d6cf49c2c60a9ba92d6578926fd8b84d00caa"
  end

  def install
    bin.install "ngydv"
  end

  test do
    system "ngydv --help"
  end
end