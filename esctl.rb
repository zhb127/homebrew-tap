class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.18.tar.gz"
  sha256 "ad19f52b9425f3bc2bdc8b14279f630d7793723ab43a62b669f011ab1af8f559"
  license "GPL-3.0"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.18"
    sha256 cellar: :any_skip_relocation, catalina:     "cd178a1bd5bea9b81f27c51e16abea1015df0409d40a6662a558317bbecfa6a9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ee407381e787834982b0429e5dc8bc343b501e6d87a39f609404ea0d6334bd08"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
