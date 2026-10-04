class Dirlook < Formula
  desc "Fast, zero-dependency terminal disk usage analyzer"
  homepage "https://github.com/magni2de/dirlook"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.0/dirlook-v0.4.0-macos-arm64.tar.gz"
      sha256 "2dd31828b6256e6a7809fa32237cb556a24ae3275941798efd4ac7769eb3d9a7"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.0/dirlook-v0.4.0-macos-x86_64.tar.gz"
      sha256 "4cd689371c5711105243e60e0438e92fc3893cd609a173c4677fafbadcbe84b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.0/dirlook-v0.4.0-linux-arm64.tar.gz"
      sha256 "92b79ed439a3ee459982bcade18978bd33e2eb1917ae97759ce50d58355481c1"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.0/dirlook-v0.4.0-linux-x86_64.tar.gz"
      sha256 "1e222a918b7bffb14830b2de4a7fa652c50dfcb52c998a990c5b60da25dafd5d"
    end
  end

  def install
    bin.install "dirlook"
  end

  test do
    assert_match "dirlook", shell_output("#{bin}/dirlook --version")
  end
end
