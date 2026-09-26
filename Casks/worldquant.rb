cask "worldquant" do
  version "0.2.2"
  sha256 "b8b2b64a8ad0249fcb89952baeee82980a79bee808f9fdfa2bb6d45c2a4c9a4c"

  url "https://github.com/Octo-o-o-o/autowq/releases/download/v#{version}/WorldQuant-#{version}.dmg"
  name "WorldQuant"
  desc "Menu-bar companion for local WorldQuant BRAIN research orchestration"
  homepage "https://github.com/Octo-o-o-o/autowq"

  depends_on macos: ">= :monterey"

  app "WorldQuant.app"

  zap trash: [
    "~/Library/Application Support/WorldQuant",
    "~/Library/LaunchAgents/com.worldquant.wq-menu.plist",
    "~/Library/LaunchAgents/com.worldquant.wq-runner.plist",
  ]
end
