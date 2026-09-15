# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "062436a2b0b9a899f4140cfd0f9df4aade53e5d3ef56e27cf9d9b42385eaf77c"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "claude-dashboard.py"
    bin.install "claude-dashboard.py" => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
