class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.2.1.tar.gz"
  sha256 "27a8af529485887c5e98b7513cd56a7388611870b83c559346abe5c1cba21358"
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
