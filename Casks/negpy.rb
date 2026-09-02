cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.57.0"
  sha256 arm:   "07329bcff10fc05d4691cfe95174c1cd56b1b6f0b598c155c3ba2a70fb6ab374",
         intel: "59ba6b2db459df497e7bdad20a3e916654a013143e84f7b67e9febdd39b4e10c"

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
