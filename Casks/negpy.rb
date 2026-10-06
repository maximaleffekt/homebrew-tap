cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.63.0"
  sha256 arm:   "1f2eca9ae6cf9144c6a13b0d0ed4f081c13a4b2f53a255538f0fd9dd09426a4a",
         intel: "452b1f9746afd02cb3b9b7731bd57fa1e111ec49effab7127a5956b8e9da4f47"

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
