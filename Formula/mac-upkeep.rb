class MacUpkeep < Formula
  desc "Terminal interface for concurrent macOS maintenance tasks"
  homepage "https://github.com/eoleedi/mac-upkeep"
  url "https://github.com/eoleedi/mac-upkeep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d76faca60a7af10f457921a6efc5dd3cd12e38780cf1c12bcc7b192cec8d496e"
  head "https://github.com/eoleedi/mac-upkeep.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/mac-upkeep"
    pkgshare.install "config.example.toml"
  end

  def caveats
    <<~EOS
      To create your configuration (without replacing an existing file):
        mkdir -p ~/.config/mac-upkeep
        cp -n #{pkgshare}/config.example.toml ~/.config/mac-upkeep/config.toml

      Review the configuration and disable unwanted tasks before running mac-upkeep.
      Enabled tasks start immediately. Install their package managers separately.
    EOS
  end

  test do
    assert_equal "mac-upkeep #{version}\n", shell_output("#{bin}/mac-upkeep --version")
    assert_match "missing.toml", shell_output("#{bin}/mac-upkeep --config #{testpath}/missing.toml 2>&1", 2)
    assert_path_exists pkgshare/"config.example.toml"
  end
end
