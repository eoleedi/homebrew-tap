cask "flow-translate" do
  version "1.4.0"
  sha256 "29d93a5dd576ed32ea5147afa8b53a0f2e52446eeaef8fdd554a48d59c53555d"

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
