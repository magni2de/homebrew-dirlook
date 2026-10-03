class Dirlook < Formula
  desc "Fast, zero-dependency terminal disk usage analyzer"
  homepage "https://github.com/magni2de/dirlook"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.2.0/dirlook-v0.2.0-macos-arm64.tar.gz"
      sha256 "740eb829b2786112ab4a19c03d0eb2be8f2f0ec93336ac9c8f946eb0fc195c5a"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.2.0/dirlook-v0.2.0-macos-x86_64.tar.gz"
      sha256 "50f45ddc6395082857257c268b3d8f1a5636b39d6627a91187c0078e32210b21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.2.0/dirlook-v0.2.0-linux-arm64.tar.gz"
      sha256 "697ed7da4170334b53d596b40f1fbd878f4a5f1edd6b74f1d592f89167bd7d2d"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.2.0/dirlook-v0.2.0-linux-x86_64.tar.gz"
      sha256 "548f951786a3d429a29b4559cf2877dceb4d5ce277db43c6db6a5baa47cfb806"
    end
  end

  def install
    bin.install "dirlook"
  end

  test do
    assert_match "dirlook", shell_output("#{bin}/dirlook --version")
  end
end
