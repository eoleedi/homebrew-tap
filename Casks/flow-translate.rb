cask "flow-translate" do
  version "1.1.0"
  sha256 "7fc68439da4e6ba703f30f4c3e4cd24d034e5aacb9f6f422e2f6d7f76cc5fb9f"

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
