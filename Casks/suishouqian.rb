cask "suishouqian" do
  version "3.1.0"
  sha256 "c19acee7bf294394bb1dfe8e9f1661cd3fc6ef693e0623e19370ec016ab93d1e"

  url "https://github.com/xfanchuang-dot/suishouqian/releases/download/v#{version}/Suishouqian-#{version}.dmg"
  name "Suishouqian"
  desc "Move large Mac apps to an external drive safely, leaving a symlink behind"
  homepage "https://github.com/xfanchuang-dot/suishouqian"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "随手迁.app"

  caveats <<~EOS
    The app is currently unsigned. On first launch: Control-click the app,
    choose "Open", then confirm. After that it opens normally.
    Requires Apple Silicon (arm64).
  EOS

  zap trash: "~/Library/Application Support/随手迁"
end
