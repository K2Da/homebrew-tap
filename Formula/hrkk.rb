class Hrkk < Formula
  desc "List up aws resources and select some with fuzzy finder"
  homepage "https://github.com/K2Da/hrkk"
  version "v0.2.1"
  v = "v0.2.1"

  base_url = "https://github.com/K2Da/hrkk/releases/download"
  if OS.linux?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e148286f03cf0ae565aa549c404e01dbc05a3a4a98931b1283bc4a4e7e7d66f7"
  elsif OS.mac?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-apple-darwin.tar.gz"
    sha256 "b1c956934cecd21c6f3cc9b3cd3b673d0f936d648b1a360949a51462621d9c19"
  end

  def install
    bin.install "hrkk"
  end

  test do
    system "hrkk --help"
  end
end