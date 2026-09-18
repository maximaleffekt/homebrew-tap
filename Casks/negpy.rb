cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.59.0"
  sha256 arm:   "ffd7181c5607e1bdeac3ffa1ec3facf2ba0bc149a3c6b92e45a24f17e4d5f288",
         intel: "6e7ac9cdc4d3cb07a6ceea63227b4935f5ae8110dc6eaf15af984859037490e3"

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
