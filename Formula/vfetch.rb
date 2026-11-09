class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.4.1.tar.gz"
  sha256 "b42752c2c2e0c0d40c64f711419c71b3f12f4de76a881007ad5556299b21c249"
  license "MIT"

  depends_on "just" => :build
  depends_on "vlang" => ["0.5.2", :build]

  def install
    system "just", "build"
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
