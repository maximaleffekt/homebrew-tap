cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.51.1"
  sha256 arm:   "aa069bc18ebcd934edaa8adb15fbf3a9f23379ef0edad2e16415b53d64dfc491",
         intel: "6a5984292f39f95728e7a85fdb37669a9d697a4d2a2679c6ba7aa3682f1a514a"

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
