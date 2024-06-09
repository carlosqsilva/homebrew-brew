class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.2.0.tar.gz"
  sha256 "e57c6ce46ff1f3e0ad2563c68a183988e0e407d078827ff6359e4b3cb0a6b20c"
  license "MIT"

  depends_on "vlang" => ["0.4.6", :build]

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
