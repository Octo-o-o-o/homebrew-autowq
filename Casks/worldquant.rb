cask "worldquant" do
  version "0.2.21"
  sha256 "d6747d08dc180420d2b5eeacde30bddac51a65637708612344a5163f31ff0421"

  url "https://github.com/Octo-o-o-o/autowq/releases/download/macos-v#{version}/WorldQuant-#{version}.dmg"
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
