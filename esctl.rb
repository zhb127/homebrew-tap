class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage ""
  url "https://github.com/zhb127/esctl/archive/v0.0.13.tar.gz"
  sha256 "ac646dcec039e4dbd15bd1ad2745f5a343c559858499cf5886940a47bfa8210a"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    ENV["GOPROXY"]="https://goproxy.cn,direct"
    system "go", "build", *std_go_args
  end

  test do
    ENV.delete "GITHUB_TOKEN"
    assert_match "no Github token found", shell_output(bin/"esctl", 255)
  end
end
