cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.53.0"
  sha256 arm:   "64bc745041b10f9d269c38f5b1ddb7e08ce5592b96fe1747b5407393b39aafa6",
         intel: "f28381f5f26d921a89ef9b18cfe1aaaa962ec202d5b7f746dee451acd0184cc5"

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
