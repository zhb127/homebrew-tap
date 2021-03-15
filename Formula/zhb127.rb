class Zhb127 < Formula
  desc "Echo helloworld"
  homepage "https://github.com/zhb127/homebrew-tap"
  url "https://github.com/zhb127/homebrew-helloworld/archive/0.2.tar.gz"
  sha256 "0a4bb69758204a5ec735bcb1ba1f2ae4a80ded05d8b6fcd62109924d1b43133d"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Hello World 0.2", shell_output(bin/"zhb127")
  end
end
