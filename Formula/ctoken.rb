class Ctoken < Formula
  desc "Count tokens in project files, like cloc but for LLM context estimation"
  homepage "https://github.com/RimantasZ/ctoken"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RimantasZ/ctoken/releases/download/v0.3.0/ctoken-aarch64-apple-darwin.tar.gz"
      sha256 "286202936db29ddf82a7e1640846f7315025b384d0dd397fd652a27bc3c429cc"
    end
  end

  def install
    bin.install "ctoken"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctoken --version")
  end
end
