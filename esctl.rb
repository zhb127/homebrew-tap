class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.19.tar.gz"
  sha256 "ec334bc23402cccff781fcbb0555c6200b7bedb30d3377fccddab23b71958fad"
  license "GPL-3.0-or-later"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.19"
    sha256 cellar: :any_skip_relocation, catalina:     "1aca87121c6b01b3c73306be4f595643c006ab4447d86addfbc4185764a83c39"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fdd389db3d724d48efe8ee54f74f8f08f7edfccc13746e08cd1b39a7a6df8aa3"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
