class Ctoken < Formula
  desc "Count tokens in project files, like cloc but for LLM context estimation"
  homepage "https://github.com/RimantasZ/ctoken"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RimantasZ/ctoken/releases/download/v0.2.0/ctoken-aarch64-apple-darwin.tar.gz"
      sha256 "8d28159e91cd1876f4b60a7c0bc1d6edfe4cd6128dbd137259508ac20bebc3cb"
    end
  end

  def install
    bin.install "ctoken"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctoken --version")
  end
end
