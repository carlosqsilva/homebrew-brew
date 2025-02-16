class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.3.0.tar.gz"
  sha256 "ea36a9ca3df4196eea5306165282bdfbad4748197355dc6de4053562b068c697"
  license "MIT"

  depends_on "vlang" => ["0.4.9", :build]

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
