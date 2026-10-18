cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.65.0"
  sha256 arm:   "dd16e2a1b0c0dd43e7428de15a1d3c66e8408b0ec61d0342a76446cd8b2a42d4",
         intel: "f905653bb9852a6177f3f58af26155d2494131124d10a4e1effea2534c711d39"

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
