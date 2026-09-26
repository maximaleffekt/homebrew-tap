cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.61.0"
  sha256 arm:   "b2ba3b1ae3d19b4e6ec03bfb688607b1285d7511c049381d40174a63c569d91e",
         intel: "2f1cd5bd7cb7f910a1d933a5042d555e8f694457ad606e7594fd58b89a222686"

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
