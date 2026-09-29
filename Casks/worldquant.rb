cask "worldquant" do
  version "0.2.14"
  sha256 "6c99c2ce5097bc47bd1be9960de022a771c3fc11a1813a269fbd674ee5f9da4e"

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
