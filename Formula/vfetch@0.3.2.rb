class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.3.2.tar.gz"
  sha256 "471dbe71199d94aa1048c01f055f0552449e72249ac200d347309c14417867b8"
  license "MIT"

  depends_on "vlang" => ["0.4.10", :build]
  depends_on "just" => :build

  def install
    system "just", "build"
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
