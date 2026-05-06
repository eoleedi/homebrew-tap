class TimetreeExporter < Formula
  include Language::Python::Virtualenv

  desc "Tool for exporting TimeTree Calendar and converting to iCal format (.ics)"
  homepage "https://github.com/eoleedi/TimeTree-Exporter"
  url "https://files.pythonhosted.org/packages/a1/3a/60c839edb426bddd029aa07c3303fc8b90e9b1d046bf1b3da78361d0329f/timetree_exporter-0.7.1.tar.gz"
  sha256 "f488e7c68f35f2c6957864b948211d34aeb517d4f7af55b5e31519b0e80521eb"
  license "MIT"
  head "https://github.com/eoleedi/TimeTree-Exporter.git", branch: "main"

  bottle do
    root_url "https://github.com/eoleedi/homebrew-tap/releases/download/timetree-exporter-0.7.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "056140efafa23533b0cff4058a8a8674c12b8c3f3ea9c8578ebcd54546700ef8"
    sha256 cellar: :any_skip_relocation, sequoia:      "792421de31f98a0b0c96dce989755708b8d6b4d87c1bcf04816e8c2263d2ff0d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "655da600d39c2c0551461963b8c28dedd3986b3fa6753d88afbd10775a6c330e"
  end

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/7b/60/e3bec1881450851b087e301bedc3daa9377a4d45f1c26aa90b0b235e38aa/charset_normalizer-3.4.6.tar.gz"
    sha256 "1ae6b62897110aa7c79ea2f5dd38d1abca6db663687c0b1ad9aed6f6bae3d9d6"
  end

  resource "icalendar" do
    url "https://files.pythonhosted.org/packages/b8/60/6b0356a2ed1c9689ae14bd8e44f22eac67c420a0ecca4df8306b70906600/icalendar-7.0.3.tar.gz"
    sha256 "95027ece087ab87184d765f03761f25875821f74cdd18d3b57e9c868216d8fde"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
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
    url "https://files.pythonhosted.org/packages/34/64/8860370b167a9721e8956ae116825caff829224fbca0ca6e7bf8ddef8430/requests-2.33.0.tar.gz"
    sha256 "c7ebc5e8b0f21837386ad0e1c8fe8b829fa5f544d8df3b2253bff14ef29d7652"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/5e/a7/c202b344c5ca7daf398f3b8a477eeb205cf3b6f32e7ec3a6bac0629ca975/tzdata-2025.3.tar.gz"
    sha256 "de39c2ca5dc7b0344f2eba86f49d614019d29f060fc4ebc8a417896a620b56a7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage:", shell_output("#{bin}/timetree-exporter --help")
  end
end
