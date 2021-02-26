class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.15.tar.gz"
  sha256 "6c5b705bd0eed28edcc4d60c0391892beda10fc4ae37006c09b5edbf2eb34ac4"
  license "GPL-3.0"

  bottle do
    root_url "https://github.com/zhb127/homebrew-tap/releases/download/esctl-0.0.15"
    sha256 cellar: :any_skip_relocation, catalina:     "8d0d494ce1df622177b22d493b63ce78caaf85a3a626bf00be4e2fee460c9916"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "20151acc0aca9bf0be8dbb35ae5e7c37f6a15baed2a629e9f6db2347842ead54"
  end

  depends_on "go" => :build

  def install
    ENV["GOPROXY"]="https://goproxy.cn,direct"
    system "go", "build", *std_go_args
  end

  test do
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl")
  end
end
