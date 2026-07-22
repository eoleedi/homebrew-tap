class Qrrs < Formula
  desc "CLI QR code generator and reader"
  homepage "https://github.com/cureforpain/qrrs"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cureforpain/qrrs/releases/download/v0.1.11/qrrs-aarch64-apple-darwin.tar.gz"
      sha256 "78025edad83aa8dba203894277ffdcef60364d5c88bd18b354bafc799f541a64"
    else
      url "https://github.com/cureforpain/qrrs/releases/download/v0.1.11/qrrs-x86_64-apple-darwin.tar.gz"
      sha256 "6b5f185d045faa5048b60449522fed26aaba89f369a871498e9328e515d8273e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cureforpain/qrrs/releases/download/v0.1.11/qrrs-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11d34b06640f8d4d785c701d0077c7cd1d952aad69cef333a554093d55a25153"
    else
      url "https://github.com/cureforpain/qrrs/releases/download/v0.1.11/qrrs-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "289f1a4597317b50c7f52fdb8672a4f2c38730ea756ca8c3052029c451f5b8dd"
    end
  end

  def install
    bin.install "qrrs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/qrrs --version")
  end
end
