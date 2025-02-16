class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.3.1.tar.gz"
  sha256 "dc1274ff911c0423b72c2ab70dc9a8df909192a15e4363836e470703158c1b1b"
  license "MIT"

  depends_on "vlang" => ["0.4.9", :build]
  depends_on "just" => :build

  def install
    system "just", "build"
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
