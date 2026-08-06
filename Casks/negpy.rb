cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.48.0"
  sha256 arm:   "299aae6fc2627f1f0b94108cf164c7a51eb28c81e5d4615cab85ef4f7e8b8337",
         intel: "efe0df703214c2d375f354206a345917de4daa8c3532fa584385ff61ae453e8e"

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
