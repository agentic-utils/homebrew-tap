# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "4a5d45feac219c285930d10feacc1d51567d5236c7302cdc6e23abecd2115824"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "claude-dashboard.py"
    bin.install "claude-dashboard.py" => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
