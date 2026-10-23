class TimetreeExporter < Formula
  include Language::Python::Virtualenv

  desc "Tool for exporting TimeTree Calendar and converting to iCal format (.ics)"
  homepage "https://github.com/eoleedi/TimeTree-Exporter"
  url "https://files.pythonhosted.org/packages/b0/1e/986723cd205a56d891fc6d06f5d2522f4f59fc6240d8a03c0b46dc82fcf4/timetree_exporter-1.0.0.tar.gz"
  sha256 "54be1e622b7a45f4212f2bb35eb027095562f8d2ee9eeba21b85a3c49288de50"
  license "MIT"
  head "https://github.com/eoleedi/TimeTree-Exporter.git", branch: "main"

  bottle do
    root_url "https://github.com/eoleedi/homebrew-tap/releases/download/timetree-exporter-1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "442417b400dce2a036a1a48b89ee25a8aea41a9c92d47a02a0164a0ef7f4b86e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "868658c0dbbb33da380626ed441520fff46c638e680e18801a125ec37e3d26ce"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "e032e3d56080d20fa71cc4bed2e3b78d3af117643fab1f389bc9cbe5e32be0c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "42360d6718640d3f3a8866654596eb62d98ea234d27d0a08a1c01e5ab6c963bd"
  end

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a6/bd/1436c50cc46699de0230fbaacc1d1de7bfec413176099949e9d5112e88f2/certifi-2026.10.19.tar.gz"
    sha256 "035c1e85572b141bf1c3a3eff0e33a8eb74917522f2559075ff8d2fea780a1ae"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "icalendar" do
    url "https://files.pythonhosted.org/packages/47/2b/1bbf82d316df18c3331d9a06228819c8a5814ceda545a3e9980e52ffce1b/icalendar-7.3.0.tar.gz"
    sha256 "7bd001c8e648205e1bde5c6a5b77096598e8d0893dcf57755c6c597635620132"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "pwinput-eoleedi" do
    url "https://files.pythonhosted.org/packages/a7/2c/a695f6494ea20bd47e227f0de297bd5b0ad20cf6b38fd8153765d32ea3ba/pwinput_eoleedi-1.0.3.post1.tar.gz"
    sha256 "a5c3cec21c33a1ea0b8edaa57741a92e17f1d18638f62fa0ea7ade06f9902e28"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/0e/df/f15f80383f152452d8985b36d95cb8751f901a3e0ff4cd27f7e118f168e2/python_dateutil-3.0.0.tar.gz"
    sha256 "7ebcb3c29a92f3ceafe79a7a48a5c45677e9e004bbeec5742ac0bbb00560b7a2"
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
    url "https://files.pythonhosted.org/packages/d9/68/f1b440335057bfce71b6e50a9d09445aa2ecbd08359a337976627b8409e7/tzdata-2026.5.tar.gz"
    sha256 "8cc73c0a0bfca7dbfa59235d60b2eff82231dee33f53d206db1acd9173cfc0a7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage:", shell_output("#{bin}/timetree-exporter --help")
  end
end
