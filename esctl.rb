class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.15.tar.gz"
  sha256 "6c5b705bd0eed28edcc4d60c0391892beda10fc4ae37006c09b5edbf2eb34ac4"
  license "GPL-3.0"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.15"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "21a7881564ce82919283a544a3841a0a592dfd38e6ea1180913c98d6dd96092a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ef0e02f72887175b60acacf34ec63aa5050b9b461be23c28588295a3f197c68"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
