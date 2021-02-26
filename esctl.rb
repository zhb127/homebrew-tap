class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage "https://github.com/zhb127/esctl"
  url "https://github.com/zhb127/esctl/archive/v0.0.15.tar.gz"
  sha256 "6c5b705bd0eed28edcc4d60c0391892beda10fc4ae37006c09b5edbf2eb34ac4"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    ENV["GOPROXY"]="https://goproxy.cn,direct"
    system "go", "build", *std_go_args
  end

  test do
    ENV.delete "GITHUB_TOKEN"
    assert_match "esctl controls the ElasticSearch cluster manager", shell_output(bin/"esctl", 0)
  end
end
