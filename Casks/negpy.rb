cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.66.0"
  sha256 arm:   "583a81e8ce7f37911265406367dbde88683cb06888e40753c7abbfb87589f6a2",
         intel: "4ff3ffc83036e90f7102edc127dca8c3feae30f25469fa71ee71579eea14b9d8"

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
