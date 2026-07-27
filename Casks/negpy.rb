cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.44.0"
  sha256 arm:   "8db21c20cff1e86e2457181aefd8b897ff023fa1068ecd2aefed1a77dccdd7a6",
         intel: "0d24fb1f4d9e934da42368f6e4ef85a9ae432c8254893fd13cea852d2196b45e"

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
