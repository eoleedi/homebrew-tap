cask "ytm-widget" do
  version "1.0.1,0.1.0"
  sha256 "eec211b6ed35716e34904540379b84907db60215b6206e0532826d6cd222b4cf"

  url "https://github.com/kizato1018/ytm-widget/releases/download/v#{version.csv.first}/ytm-widget_#{version.csv.second}_aarch64.dmg"
  name "YTM Widget"
  desc "YouTube Music tray widget with ad-blocking and track download"
  homepage "https://github.com/kizato1018/ytm-widget"

  depends_on arch: :arm64

  app "ytm-widget.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ytm-widget.app"]
  end

  uninstall quit: "com.kizato.ytm-widget"

  zap trash: [
    "~/Library/Application Support/com.kizato.ytm-widget",
    "~/Library/Caches/com.kizato.ytm-widget",
    "~/Library/Logs/ytm-widget",
    "~/Library/Preferences/com.kizato.ytm-widget.plist",
  ]
end
