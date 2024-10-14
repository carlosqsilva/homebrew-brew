class Vqrcode < Formula
  desc "CLI for creating QR codes written in vlang"
  homepage "https://github.com/carlosqsilva/vqrcode"
  url "https://github.com/carlosqsilva/vqrcode/archive/refs/tags/0.1.1.tar.gz"
  sha256 "71d0f87974f90ef9cee8d84f2b20d5412cf3a320c188fdbdfa774ebc977293d1"
  license "MIT"

  depends_on "vlang" => ["0.4.6", :build]

  def install
    system "v", "-prod", "-w", "-o", "vqrcode", "."
    bin.install "vqrcode"
  end

  test do
    system "#{bin}/vqrcode"
  end
end
