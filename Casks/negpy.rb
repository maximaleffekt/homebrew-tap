cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.58.0"
  sha256 arm:   "4e5eb8cbf5c2bf001a423f5bac1659c5b0315cf2d01d5f3f650c660f5dd1b9be",
         intel: "d134ff5a0483f53d5851bc1e3c000bf2605a01236df5cf316c209df46edcd898"

  url "https://github.com/marcinz606/NegPy/releases/download/#{version}/NegPy-#{version}-macOS-#{arch}.dmg"
  name "NegPy"
  desc "Tool for processing film negatives"
  homepage "https://github.com/marcinz606/NegPy"

  depends_on :macos

  app "NegPy.app"

  zap trash: [
    "~/Documents/NegPy/cache",
    "~/Documents/NegPy/edits.db",
    "~/Documents/NegPy/settings.db",
  ]
end
