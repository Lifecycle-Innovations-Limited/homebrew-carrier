class Carrier < Formula
  desc "CLI and stdio MCP for MVNO/eSIM fleet control"
  homepage "https://mcp.carrier.llc"
  url "https://registry.npmjs.org/@carrierllc/mcp/-/mcp-0.13.6.tgz"
  sha256 "3f2f6824553aa9cd215469d1eafc6b884da2753f7b4aad92d8caa334ef2419f1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/carrier --version")
  end
end
