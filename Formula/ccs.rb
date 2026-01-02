class Ccs < Formula
  desc "Search and resume Claude Code conversations using fzf"
  homepage "https://github.com/agents-cli/ccs"
  url "https://github.com/agents-cli/ccs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "13f5aff8000009e7414ff69d8d30514503afa57f3e05198cb3c993bf9f8ba466"
  license "MIT"
  head "https://github.com/agents-cli/ccs.git", branch: "main"

  depends_on "go" => :build
  depends_on "fzf"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "ccs v#{version}", shell_output("#{bin}/ccs --version")
  end
end
