# typed: false
# frozen_string_literal: true

class ClaudeDashboard < Formula
  include Language::Python::Shebang

  desc "Live terminal dashboard for Claude Code cache-token usage"
  homepage "https://github.com/agentic-utils/claude-dashboard"
  url "https://github.com/agentic-utils/claude-dashboard/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "2dcacf4d74f7bb05af8ba7ac284d073997efd53d817f74127eaee23b1bb2658f"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "claude-dashboard.py"
    bin.install "claude-dashboard.py" => "claude-dashboard"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/claude-dashboard --help </dev/null")
  end
end
