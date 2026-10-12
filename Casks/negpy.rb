cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.64.0"
  sha256 arm:   "a35408e1e9808f2dea2d712524610147dd8ba9f94927874b60de62080455b5bd",
         intel: "46415e7b24909ccdb5a347b0092f85a0e0b1d297e5e342f2edb116dd23d4862a"

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
