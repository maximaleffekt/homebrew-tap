cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.54.0"
  sha256 arm:   "6084329a79ecf15f4c6c825003121a0373b1952e24506cc1a71805c7035e6ab9",
         intel: "053433636bf41585cb25edcfa2926c304c76e4802ce519b1234f2f49d8187903"

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
