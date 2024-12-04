class Vqrcode < Formula
  desc "CLI for creating QR codes written in vlang"
  homepage "https://github.com/carlosqsilva/vqrcode"
  url "https://github.com/carlosqsilva/vqrcode/archive/refs/tags/0.2.0.tar.gz"
  sha256 "5daf4a5f247b1a1fdb4ccb04bd2eb7a070b9fd936ac315abea5fff05089bf238"
  license "MIT"

  depends_on "vlang" => ["0.4.8", :build]

  def install
    system "v", "-prod", "-w", "-o", "vqrcode", "."
    bin.install "vqrcode"
  end

  test do
    system "#{bin}/vqrcode"
  end
end
