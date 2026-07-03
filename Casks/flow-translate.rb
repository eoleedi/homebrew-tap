cask "flow-translate" do
  version "1.2.0"
  sha256 "70bb26638ba49724761042a4ea6d6eaaab140c776e21971ab8ecf2f83c4821ce"

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
