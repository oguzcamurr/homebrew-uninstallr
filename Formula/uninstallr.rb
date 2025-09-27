class Uninstallr < Formula
  desc "Modern lightweight app uninstaller for macOS"
  homepage "https://github.com/oguzcamurr/uninstallr"
  url "https://github.com/oguzcamurr/uninstallr/releases/download/v0.1.0/uninstallr-v0.1.0.tar.gz"
  sha256 "cfe73e2223f09f07af43244b7ffd733b530d45fe65db8b0c2286b7a538b0906f"
  license "MIT"

  def install
    bin.install "uninstallr.sh" => "uninstallr"
  end

  test do
    assert_match "AppRemove Pro", shell_output("#{bin}/uninstallr --dry-run 'NoSuchApp' 2>&1")
  end
end


