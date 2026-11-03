cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.67.0"
  sha256 arm:   "523050a11b904d45e7adf9cdf8c491a6950627b89e7b673e11d98a0d046d2a15",
         intel: "1ac9810460f89c8b1e2cf2ab9b61dd14314fd8f8e6096ae0a56d8cbac1a34ac9"

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
