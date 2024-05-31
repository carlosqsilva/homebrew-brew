class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.1.2.tar.gz"
  sha256 "855060eedc9fad2ee01011b7bb1d11841e1d3e830462e6887bd72c00fac490af"
  license "MIT"

  depends_on "vlang" => ["0.4.5", :build]

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
