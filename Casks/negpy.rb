cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.52.0"
  sha256 arm:   "1449d062bacd3088a0cdc1b2d6d7a829e8fe226b9f56e19bd5fd6aefbdbf4a93",
         intel: "9f03153e769252fd11117945b9080e6919a6fc3c34142c0c051bb8491c1a13ac"

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
