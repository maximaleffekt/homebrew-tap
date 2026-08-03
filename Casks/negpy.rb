cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.47.0"
  sha256 arm:   "f929ccf8145b8fe66ced9ce3d1491a5672f6d93240ff3375ae2e3b6bd455fd5b",
         intel: "80762894f9f6a57ef6a3d915ebbed49ace2f9b90e858eec0ed9d7015c3ee2f46"

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
