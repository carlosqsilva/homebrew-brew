class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.2.2.tar.gz"
  sha256 "d53297a1ac58523979ad5331204fb9eeaca6496a4174dae094cf1d47bd2c8b61"
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
