# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.10.0.tar.gz"
  version "0.10.0"
  sha256 "22a902d10904ae71327cff236d298af0b30ef8fd9484c07cad3ade0c8da4fa37"

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
