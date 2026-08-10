cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.49.0"
  sha256 arm:   "972e00cb6acadda1993463cf0a697d8e9014997ba6abedcfd3e560241f6efc5f",
         intel: "632bff44fad7961c8216920de7eab6f6ef75235552d2fd8a22d7a9e153c3d312"

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
