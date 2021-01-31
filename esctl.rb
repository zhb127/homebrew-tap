# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Esctl < Formula
  desc "CLI for managing the ElasticSearch cluster"
  homepage ""
  url "https://github.com/zhb127/esctl/archive/v0.0.2.tar.gz"
  sha256 "5e37a6aea55a02db0416bbdcb1184a55c65d3bf9d7b1c4218dc13c55ac9ceab9"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    ENV["GOPROXY"]="https://goproxy.cn,direct"
    system "go", "build", "-o", bin/"esctl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test esctl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
