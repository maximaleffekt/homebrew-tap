cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.45.0"
  sha256 arm:   "1cf8922f9130cd6d7e95e65c677d0c20c5047010597bf0597f1a69958dfb9782",
         intel: "54314b97b93b122fb41ce79fdbb5a5e73eccff29761bd240caf95ec0179161f0"

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
