# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.7.0.tar.gz"
  version "0.7.0"
  sha256 "55e0d725d4b8b4e08b3c08ce1b25b5ca97bf585750df0e42115da2a2bdd3e16d"

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
