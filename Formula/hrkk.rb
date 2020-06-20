class Hrkk < Formula
  desc "List up aws resources and select some with fuzzy finder"
  homepage "https://github.com/K2Da/hrkk"
  version "v0.1.1"
  v = "v0.1.1"

  base_url = "https://github.com/K2Da/hrkk/releases/download"
  if OS.linux?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "45f4127de2f39c1cd085416d7881b0b076f30f4e69459a312c5fd5915cd7e9cd"
  elsif OS.mac?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-apple-darwin.tar.gz"
    sha256 "1959b864169f71b894f5a11155dfc1aa817b6ab806be2242ed8ebe43a99cd4c9"
  end

  def install
    bin.install "hrkk"
  end

  test do
    system "hrkk --help"
  end
end