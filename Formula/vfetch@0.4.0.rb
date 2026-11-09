class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.4.0.tar.gz"
  sha256 "fd184aa2c101c3c55a4e1d901539572c63279ea8e1b86bd639635be772a5ffb3"
  license "MIT"

  depends_on "just" => :build
  depends_on "vlang" => ["0.5", :build]

  def install
    system "just", "build"
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
