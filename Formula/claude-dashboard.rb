# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.17.1.tar.gz"
  version "0.17.1"
  sha256 "0df8d39208f51bcd8f46cf92bb23a9996e00ec8d1d60a7195fae33be483bb1d6"

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
