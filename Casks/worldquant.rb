cask "worldquant" do
  version "0.2.18"
  sha256 "812a05ea9b0523acf78fcb23e38241949f738d5a9ce82d2047a80ae9c408623b"

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
