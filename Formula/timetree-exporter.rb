class TimetreeExporter < Formula
  include Language::Python::Virtualenv

  desc "Tool for exporting TimeTree Calendar and converting to iCal format (.ics)"
  homepage "https://github.com/eoleedi/TimeTree-Exporter"
  url "https://files.pythonhosted.org/packages/5a/69/cb752f2ee610fbbf68c3496d6c16c07dd4ed379b88257cf098b0957c32ba/timetree_exporter-0.8.0.tar.gz"
  sha256 "159143011542e7ee2a03778ba17cf8437af433b090b6aaa4327e5eb3e5ba4fed"
  license "MIT"
  head "https://github.com/eoleedi/TimeTree-Exporter.git", branch: "main"

  bottle do
    root_url "https://github.com/eoleedi/homebrew-tap/releases/download/timetree-exporter-0.7.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "5db3b0d540531719b287360dfda595c59548e7a84fd5488f759c6970da9df5b9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6c7e1901ed695561338e70148f12b4182cb63fac63e2ea80841850b6d606b3ba"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3467884c0255baa3da52b9c713612e7194d5d107a8a0118802bae69e2c691311"
    sha256 cellar: :any_skip_relocation, sequoia:       "7bdd3f8e7073455d974fab43da49636d1363700948c2e48c0838d97d236df2dc"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "833bc60e82a916485c658969700ca4f89c13791e372021d0a43e097d3adfcd64"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "70f095215a7c25c731dfa4f2c8918338d640be8afe529cb3443e05aa8fd8e649"
  end

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c9/c7/424b75da314c1045981bd9777432fad05a9e0c69daa4ed7e308bbaffe405/certifi-2026.6.17.tar.gz"
    sha256 "024c88eeec92ca068db80f02b8b07c9cef7b9fe261d1d535abfd5abd6f6af432"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "icalendar" do
    url "https://files.pythonhosted.org/packages/2e/6c/3a20edd47656272f2d4016f6680f5bec6e2eb5ec7a23db97ebd1c15c384b/icalendar-7.2.0.tar.gz"
    sha256 "32dacc396101825b82f9f1bbdf691c02be613130d5ab7a457e553fcd20959fdd"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
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
    url "https://files.pythonhosted.org/packages/ba/19/1b9b0e29f30c6d35cb345486df41110984ea67ae69dddbc0e8a100999493/tzdata-2026.2.tar.gz"
    sha256 "9173fde7d80d9018e02a662e168e5a2d04f87c41ea174b139fbef642eda62d10"
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
