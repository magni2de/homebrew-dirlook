class Dirlook < Formula
  desc "Fast, zero-dependency terminal disk usage analyzer"
  homepage "https://github.com/magni2de/dirlook"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.3.0/dirlook-v0.3.0-macos-arm64.tar.gz"
      sha256 "49afcc5ccdf49d6693a3b699a491c1af74559a7e80fccd3768e40f6fc481f67c"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.3.0/dirlook-v0.3.0-macos-x86_64.tar.gz"
      sha256 "bc0932590c48696acc17cc8ae1ba73cab1f0e5b427108dca5ecc5d28b431d5af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.3.0/dirlook-v0.3.0-linux-arm64.tar.gz"
      sha256 "efcda6c757ee0536e9a9ac2d15e54808daf1ad3037cfadd4d91f73fc783f6569"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.3.0/dirlook-v0.3.0-linux-x86_64.tar.gz"
      sha256 "3d27bb13fa1634002664d6c5b14e6d9c06506e8c7767c5f5dbfb5a142b5a245c"
    end
  end

  def install
    bin.install "dirlook"
  end

  test do
    assert_match "dirlook", shell_output("#{bin}/dirlook --version")
  end
end
