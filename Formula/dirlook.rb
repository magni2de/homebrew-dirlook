class Dirlook < Formula
  desc "Fast, zero-dependency terminal disk usage analyzer"
  homepage "https://github.com/magni2de/dirlook"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.2/dirlook-v0.4.2-macos-arm64.tar.gz"
      sha256 "fb40b7fc6b81d8710b4c28350debf6535c4290e53eca0c868f8b366c018b2cd3"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.2/dirlook-v0.4.2-macos-x86_64.tar.gz"
      sha256 "ab7dfad86d0f1dc2725d3bb8b48de3f94a561b8593116c22a5b56bdfc6f206ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.2/dirlook-v0.4.2-linux-arm64.tar.gz"
      sha256 "0a046a7b4e098427bdca10d0063cef94200ad51479784ee82b48a056509a4c68"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.2/dirlook-v0.4.2-linux-x86_64.tar.gz"
      sha256 "a8dfca5ed2c5f6ef3ea4c9cab27dc4483415acaa5fca67139b98d8b634c5cd06"
    end
  end

  def install
    bin.install "dirlook"
  end

  test do
    assert_match "dirlook", shell_output("#{bin}/dirlook --version")
  end
end
