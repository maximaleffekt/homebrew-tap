cask "negpy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.50.0"
  sha256 arm:   "de3468c73e37763987449f939a00e296e1d3eae96f3e42494098e8fe80c5fb94",
         intel: "643ddbb3177d8b5ed7ac90817a4d9b275295f18c7d9f95cec50572c6b454758c"

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
