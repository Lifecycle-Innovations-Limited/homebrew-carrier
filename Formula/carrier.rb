class Carrier < Formula
  desc "CLI and stdio MCP for MVNO/eSIM fleet control"
  homepage "https://mcp.carrier.llc"
  url "https://registry.npmjs.org/@carrierllc/mcp/-/mcp-0.13.41.tgz"
  sha256 "bb6348d0db7431b9294c41ef129dc951b96a7ccb88f5823b501c178c07435f08"
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
