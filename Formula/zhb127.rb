class Zhb127 < Formula
  desc "Echo helloworld"
  homepage "https://github.com/zhb127/homebrew-tap"
  url "https://github.com/zhb127/homebrew-helloworld/archive/0.1.tar.gz"
  sha256 "dd26eb15512fc5418e9a522746e87151f37da4bdae60dc5483aba10393d125c7"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Hello World", shell_output(bin/"zhb127")
  end
end
