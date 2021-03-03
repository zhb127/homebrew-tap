class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.17.tar.gz"
  sha256 "f2d40a2d89dcaee0e979ac872e6d8f4427b1317117603913750436ae8047852d"
  license "GPL-3.0"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.17"
    sha256 cellar: :any_skip_relocation, catalina:     "8aca6f1afc91de86be755385b0a8976d0d8808245631542ad66e64811439516c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a03751e8714c270919539d2294e445ed24f6b2e296f78ba1369329edd35ebe9c"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
