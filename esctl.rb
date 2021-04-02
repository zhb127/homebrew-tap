class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.20.tar.gz"
  sha256 "5768870a6f20871244819df93d5aef79da8e2b189ae479816f8645c416dabf16"
  license "GPL-3.0-or-later"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.20"
    sha256 cellar: :any_skip_relocation, catalina:     "f1b07f68760ad1c8365a9a6541213896ca4832edee88998f4463e6c02586b1f0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ac3e91beee322d02dff1cc9e6a8f4d1cbd74ac0d0d1d0c8019f64f3842639bf"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
