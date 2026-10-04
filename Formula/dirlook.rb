class Dirlook < Formula
  desc "Fast, zero-dependency terminal disk usage analyzer"
  homepage "https://github.com/magni2de/dirlook"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.1/dirlook-v0.4.1-macos-arm64.tar.gz"
      sha256 "7320bb7b014d79b5a407f523b4115ed998cc15503620538057a12c3d0b4237ae"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.1/dirlook-v0.4.1-macos-x86_64.tar.gz"
      sha256 "a113baf4b14bc96050780ccd0afb82567b5203a341c3cad6b6028708c7ec5c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.1/dirlook-v0.4.1-linux-arm64.tar.gz"
      sha256 "d105e1509efbb0f467baa88464baba98bc87a3016defc2745d2a64ceab12d2be"
    end
    on_intel do
      url "https://github.com/magni2de/dirlook/releases/download/v0.4.1/dirlook-v0.4.1-linux-x86_64.tar.gz"
      sha256 "4f3fb3cf824817b663959dbcebb75233d036836859ddb15e240646a419a4c7ef"
    end
  end

  def install
    bin.install "dirlook"
  end

  test do
    assert_match "dirlook", shell_output("#{bin}/dirlook --version")
  end
end
