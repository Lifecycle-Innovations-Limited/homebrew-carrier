class Carrier < Formula
  desc "CLI and stdio MCP for MVNO/eSIM fleet control"
  homepage "https://mcp.carrier.llc"
  url "https://registry.npmjs.org/@carrierllc/mcp/-/mcp-0.13.91.tgz"
  sha256 "10037e761dca69a60592beb0661536fdcf706d380e0bd7eb48060d0d78bbf570"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # Link only the named bins. The npm-only `mcp` alias (for registry clients
    # that run the bare package name) is too generic to put on a user's PATH.
    bin.install_symlink libexec/"bin/carrier", libexec/"bin/carrier-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/carrier --version")
  end
end
