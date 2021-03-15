class Zhb127 < Formula
  desc "Echo helloworld"
  homepage "https://github.com/zhb127/homebrew-tap"
  url "https://github.com/zhb127/homebrew-helloworld/archive/0.2.tar.gz"
  sha256 "22593282b7f039a979a850a6436ce63ba72c7dfdb07b69c3313f348148dba1ad"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Hello World 0.2", shell_output(bin/"zhb127")
  end
end
