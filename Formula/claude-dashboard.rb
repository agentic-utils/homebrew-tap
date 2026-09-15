# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "a3bea792a41f563147ab194e0e27b461d43c3a2235b43731545673d74e1ed681"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "claude-dashboard.py"
    bin.install "claude-dashboard.py" => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
