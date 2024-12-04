class Vqrcode < Formula
  desc "CLI for creating QR codes written in vlang"
  homepage "https://github.com/carlosqsilva/vqrcode"
  url "https://github.com/carlosqsilva/vqrcode/archive/refs/tags/0.3.1.tar.gz"
  sha256 "54de34639dbe0606b5545e0be378be40724e5229780cf4caea63d44e2408553d"
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
