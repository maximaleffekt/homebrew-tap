cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.68.0"
  sha256 arm:   "2b32584308974db0c7ee5a423d6c0dee06fb30375e1b02f4aeaee4df0c6e1d46",
         intel: "9a920282e7610b53960aaba1b9672f7206776dd13937540a36b2b21addf4e872"

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
