class Uninstallr < Formula
  desc "Modern lightweight app uninstaller for macOS"
  homepage "https://github.com/oguzcamurr/uninstallr"
  url "https://github.com/oguzcamurr/uninstallr/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "6a8a0c259974d1777f8e94247192c7a8723b537bfa7fb08deacabd4260c4d16f"
  license "MIT"
  version "0.1.1"

  def install
    bin.install "uninstallr.sh" => "uninstallr"
  end

  test do
    assert_match "AppRemove Pro", shell_output("#{bin}/uninstallr --dry-run 'NoSuchApp' 2>&1")
  end
end
