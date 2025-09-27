class Uninstallr < Formula
  desc "Modern lightweight app uninstaller for macOS"
  homepage "https://github.com/oguzcamurr/uninstallr"
  url "https://github.com/oguzcamurr/uninstallr/releases/download/v0.1.1/uninstallr-v0.1.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  version "0.1.1"

  def install
    bin.install "uninstallr.sh" => "uninstallr"
  end

  test do
    assert_match "AppRemove Pro", shell_output("#{bin}/uninstallr --dry-run 'NoSuchApp' 2>&1")
  end
end


