class TimetreeExporter < Formula
  include Language::Python::Virtualenv

  desc "Tool for exporting TimeTree Calendar and converting to iCal format (.ics)"
  homepage "https://github.com/eoleedi/TimeTree-Exporter"
  url "https://files.pythonhosted.org/packages/54/54/98cf22711f2fed3f60030a4ca9f5a47970f50329cf04097094d1aa9dd9ba/timetree_exporter-0.9.0.tar.gz"
  sha256 "30a4e31a7d56b03ccc022ea9e75f3696e680128d127797b5e048cde71e21533b"
  license "MIT"
  head "https://github.com/eoleedi/TimeTree-Exporter.git", branch: "main"

  bottle do
    root_url "https://github.com/eoleedi/homebrew-tap/releases/download/timetree-exporter-0.9.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "fee6c44883cd0babe13d67b86441f3cc9612c87eb8d6500073ae4bb2b827f3e6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e83090a76729ff02207ab15e43b94a67d7e99f608dc5bcaba4dc8a05c64f9199"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "b65ba87d3db6775eff7c13c072a11e801b433df26e788e585493b4fa118dcf23"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "93cf06a2e2a3c47ab5432c054ff0247765ea626314e246f40f1084926f4ba3d4"
  end

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "icalendar" do
    url "https://files.pythonhosted.org/packages/47/2b/1bbf82d316df18c3331d9a06228819c8a5814ceda545a3e9980e52ffce1b/icalendar-7.3.0.tar.gz"
    sha256 "7bd001c8e648205e1bde5c6a5b77096598e8d0893dcf57755c6c597635620132"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5f/f7/abb373e5757eaec4b922b92f97ec8d6d7e057cf06778247604fbc4e7c3f3/idna-3.19.tar.gz"
    sha256 "5e0811a4383b21dc5838069f801c4fb62113b7447663d2530d2bd6e77b49bf15"
  end

  resource "pwinput-eoleedi" do
    url "https://files.pythonhosted.org/packages/a7/2c/a695f6494ea20bd47e227f0de297bd5b0ad20cf6b38fd8153765d32ea3ba/pwinput_eoleedi-1.0.3.post1.tar.gz"
    sha256 "a5c3cec21c33a1ea0b8edaa57741a92e17f1d18638f62fa0ea7ade06f9902e28"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/92/ff/5a28bdfd8c3ebec42564ac7d0e54ca3db65044a9314a97f9564fa7a1e926/tzdata-2026.3.tar.gz"
    sha256 "4a1518b8993086a7982523e071643f3c0e5f213e75b21318e78bcabfff9d1415"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage:", shell_output("#{bin}/timetree-exporter --help")
  end
end
