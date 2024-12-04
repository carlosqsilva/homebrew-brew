class Vqrcode < Formula
  desc "CLI for creating QR codes written in vlang"
  homepage "https://github.com/carlosqsilva/vqrcode"
  url "https://github.com/carlosqsilva/vqrcode/archive/refs/tags/0.3.0.tar.gz"
  sha256 "1c72b9625b543356090b3c4fa3cc5989c9aa1ef6aa4abdbd83bca4903d0913c2"
  license "MIT"

  depends_on "vlang" => ["0.4.8", :build]
  depends_on "pkgconf" => :build
  depends_on "cairo" => :build
  depends_on "librsvg" => :build
  depends_on "just" => :build

  def install
    system "just", "build"
    bin.install "vqrcode"
  end

  test do
    system "#{bin}/vqrcode"
  end
end
