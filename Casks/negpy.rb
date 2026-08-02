cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.46.0"
  sha256 arm:   "4c4fbb889307a2b5c61be6f0a14f78eb9e3ff5019c9ee855a4036bbd6c1aa7ce",
         intel: "1a5f5d341ea1fcd76761b7f804162f49e36404250f460b78541cf003fcea5ae7"

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
