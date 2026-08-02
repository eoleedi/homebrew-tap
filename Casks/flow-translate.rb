cask "flow-translate" do
  version "1.3.0"
  sha256 "ed101c5dbbb5f84929ee3aabb2f7a908ac449e938bf1a870d5a502a5ae4693c0"

  url "https://github.com/huang422/EdgeAI-Flow-Translate/releases/download/v#{version}/FlowTranslate.dmg"
  name "Flow Translate"
  desc "Local real-time bilingual captions, transcripts, and meeting summaries"
  homepage "https://github.com/huang422/EdgeAI-Flow-Translate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FlowTranslate.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/FlowTranslate.app"]
  end

  zap trash: [
    "~/Library/Application Support/FlowTranslate",
    "~/Library/Preferences/dev.flowtranslate.app.plist",
  ]
end
