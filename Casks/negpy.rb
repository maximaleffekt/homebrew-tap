cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.55.0"
  sha256 arm:   "78e8060836a1c06dc6d9c45e25c27aeaf0f9f098b66b00f6b14e6996f1e0dc70",
         intel: "10ec55457f842946e12cf76dae4d13d1c2042eefaf9eb0f4d9597e3388790217"

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
