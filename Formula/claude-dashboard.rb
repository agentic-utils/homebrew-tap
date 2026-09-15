# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.8.0.tar.gz"
  version "0.8.0"
  sha256 "9b89e108825fb516908ff100a22d91b900d628738963e34c51e5f3b857abce5e"

  depends_on "python@3.13"

  def install
    # the script was renamed to an importable module name; accept either
    script = File.exist?("claude_dashboard.py") ? "claude_dashboard.py" : "claude-dashboard.py"
    rewrite_shebang detected_python_shebang, script
    bin.install script => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
