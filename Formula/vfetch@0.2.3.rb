class Vfetch < Formula
  desc "System fetch tool for macOS written in vlang"
  homepage "https://github.com/carlosqsilva/vfetch"
  url "https://github.com/carlosqsilva/vfetch/archive/refs/tags/0.2.3.tar.gz"
  sha256 "6283cc8b8a5177d04a253c6728fc37ff0ce2f9ea14b8d936bc95f2a75e3252b6"
  license "MIT"

  depends_on "vlang" => ["0.4.6", :build]

  def install
    system "v", "-prod", "-w", "-o", "vfetch", "."
    bin.install "vfetch"
  end

  test do
    system "#{bin}/vfetch"
  end
end
