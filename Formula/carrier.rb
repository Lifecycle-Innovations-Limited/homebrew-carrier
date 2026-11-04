class Carrier < Formula
  desc "CLI and stdio MCP for MVNO/eSIM fleet control"
  homepage "https://mcp.carrier.llc"
  url "https://registry.npmjs.org/@carrierllc/mcp/-/mcp-0.13.64.tgz"
  sha256 "1579d665ad7bacec76c63566bfd348ab42304d68488c7f6903456391144aa8c6"
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
