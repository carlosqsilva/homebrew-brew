class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.1.0.tar.gz"
  sha256 "1733ffb0e7c85f0cf3cedc181a9c05d41e711dc703c9b3ae76a9bd49b6682369"
  license "MIT"

  depends_on "vlang" => :build

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
