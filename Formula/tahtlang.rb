class Tahtlang < Formula
  desc "A DSL for creating Reigns-style card games"
  homepage "https://github.com/tahtlang/tahtlang"
  version "0.3.1"
  license "MIT"

  resource "manpage" do
    url "https://raw.githubusercontent.com/tahtlang/tahtlang/v#{version}/docs/tahtlang.1"
    sha256 "e37fc7bb3879d81590a841627c5702ffc506f7fa0cd40980089835741bc86d0d"
  end

  on_macos do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-macos-arm64"
    sha256 "9c92cdd8663984de90af7fde2e87f4966b81f084660f714e70358748f8b20e89"

    def install
      bin.install "tahtlang-macos-arm64" => "tahtlang"
      resource("manpage").stage { man1.install "tahtlang.1" }
    end
  end

  on_linux do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-linux-x86_64"
    sha256 "5d271cd3dfa4e64722181d0e92a4948d1ceae1eee0a2397845c0b58bddebe038"

    def install
      bin.install "tahtlang-linux-x86_64" => "tahtlang"
      resource("manpage").stage { man1.install "tahtlang.1" }
    end
  end

  test do
    assert_match "TAHTLANG", shell_output("#{bin}/tahtlang --help")
  end
end
