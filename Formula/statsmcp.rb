class Statsmcp < Formula
  desc "Fast MCP server providing statistical analysis tools"
  homepage "https://github.com/ideaspaper/statsmcp"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ideaspaper/statsmcp/releases/download/v0.0.1/statsmcp_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ideaspaper/statsmcp/releases/download/v0.0.1/statsmcp_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/ideaspaper/statsmcp/releases/download/v0.0.1/statsmcp_linux_amd64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "statsmcp"
  end

  test do
    # The binary starts an MCP server, so we just check it exists
    assert_predicate bin/"statsmcp", :exist?
  end
end
