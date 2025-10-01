class Vqrcode < Formula
  desc "CLI for creating QR codes written in vlang"
  homepage "https://github.com/carlosqsilva/vqrcode"
  url "https://github.com/carlosqsilva/vqrcode/archive/refs/tags/0.3.2.tar.gz"
  sha256 "cb430b5a02f094497c1c06658102fac4216a8f3837a6c0dca7b4c712ca8e5824"
  license "MIT"

  depends_on "vlang" => ["0.4.8", :build]
  depends_on "pkgconf" => :build
  depends_on "just" => :build
  depends_on "librsvg"
  depends_on "cairo"

  def install
    system "just", "build"
    bin.install "vqrcode"
  end

  test do
    system "#{bin}/vqrcode"
  end
end
