class Ctoken < Formula
  desc "Count tokens in project files, like cloc but for LLM context estimation"
  homepage "https://github.com/RimantasZ/ctoken"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RimantasZ/ctoken/releases/download/v0.1.0/ctoken-aarch64-apple-darwin.tar.gz"
      sha256 "e959a3fccac871f75d1c796d74d5c0cfe6bb80661c3a4563b93de99afdd5e579"
    end
  end

  def install
    bin.install "ctoken"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctoken --version")
  end
end
