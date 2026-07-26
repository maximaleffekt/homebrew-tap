cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.43.1"
  sha256 arm:   "a3161dcbbca2563413a5eb52a96af9215f575ee988f3d2755ad8d88d1db0cfb4",
         intel: "a25a19d6498f4ae3ee8eb190224d3dec9aeb9eb33519f64ed38ba384472d61c3"

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
