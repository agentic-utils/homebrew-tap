class Ccs < Formula
  desc "Search and resume Claude Code conversations using fzf"
  homepage "https://github.com/brtkwr/ccs"
  url "https://github.com/brtkwr/ccs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"
  head "https://github.com/brtkwr/ccs.git", branch: "main"

  depends_on "go" => :build
  depends_on "fzf"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "ccs v#{version}", shell_output("#{bin}/ccs --version")
  end
end
