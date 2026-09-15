# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "cd61ef3d4d11e220d13f9e81235ca2ca0fbb9c253bccd4e1462aeba1367e1302"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "claude-dashboard.py"
    bin.install "claude-dashboard.py" => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
