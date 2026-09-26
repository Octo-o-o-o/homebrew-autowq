cask "worldquant" do
  version "0.2.2"
  sha256 "961cd70d13ec8f3747ec0c19a7d569b016b68bebd41a0b824935da3802ab2680"

  url "https://github.com/Octo-o-o-o/autowq/releases/download/v#{version}/WorldQuant-#{version}.dmg"
  name "WorldQuant"
  desc "Menu-bar companion for local WorldQuant BRAIN research orchestration"
  homepage "https://github.com/Octo-o-o-o/autowq"

  depends_on macos: :monterey

  app "WorldQuant.app"

  zap trash: [
    "~/Library/Application Support/WorldQuant",
    "~/Library/LaunchAgents/com.worldquant.wq-menu.plist",
    "~/Library/LaunchAgents/com.worldquant.wq-runner.plist",
  ]
end
