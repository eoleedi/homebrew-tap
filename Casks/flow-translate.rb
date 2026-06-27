cask "flow-translate" do
  version "1.0.0"
  sha256 "1ab29a9b264345c6b99ea4eae8bb6b415999c494b6383b813d135ed8f8f0fbe1"

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
