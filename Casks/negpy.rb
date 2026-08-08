cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.48.1"
  sha256 arm:   "25e2a370a15ac13cdb6fcf4d37892ce3938d5e8dec511d51d4ffd0baa6a72f9b",
         intel: "fdac06b63328d850c19d70cb2f10a020aeb96c7923f86c2834164085a23ff1e0"

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
