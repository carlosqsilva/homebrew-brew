class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.1.1.tar.gz"
  sha256 "930081a586d9a0a09ad39fe0a1aea7c452a2abb6ba50c3fd543b8dd6819226b0"
  license "MIT"

  depends_on "vlang" => ["0.4.3", :build]

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
