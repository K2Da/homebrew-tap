class Hrkk < Formula
  desc "List up aws resources and select some with fuzzy finder"
  homepage "https://github.com/K2Da/hrkk"
  version "v0.2.1"
  v = "v0.2.1"

  base_url = "https://github.com/K2Da/hrkk/releases/download"
  if OS.linux?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9b7043191fd76bedaa3dbaf105c5c91f30520bace5e6f98a4db3e42781ba311"
  elsif OS.mac?
    url "#{base_url}/#{v}/hrkk-#{v}-x86_64-apple-darwin.tar.gz"
    sha256 "6406c3b0032adbac4b0eb11c3a29b9c8a3c307f3b5cad78762deea9df802bc37"
  end

  def install
    bin.install "hrkk"
  end

  test do
    system "hrkk --help"
  end
end