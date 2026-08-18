# Homebrew tap for Carrier

Install the `carrier` CLI and `carrier-mcp` stdio server (`@carrierllc/mcp`).

```bash
brew tap Lifecycle-Innovations-Limited/carrier
brew trust --tap Lifecycle-Innovations-Limited/carrier
brew install carrier
carrier --version
```

Homebrew 5+ refuses untrusted third-party formulae until you run `brew trust`.

Upgrade after a new npm release:

```bash
brew update
brew upgrade carrier
```

The formula tracks the public npm tarball. Version **0.2.20** ships the light-first storefront template and `carrier site logo`.

If `brew install` fails on a pre-release macOS because Xcode is marked outdated, `npm i -g @carrierllc/mcp` is the fallback.
