class Tahtlang < Formula
  desc "A DSL for creating Reigns-style card games"
  homepage "https://github.com/tahtlang/tahtlang"
  version "0.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-macos-arm64"
    sha256 "e970e3cddb4586ce7b52da5189725a854285222a8d532fe5f76dd0717eb6587c"

    def install
      bin.install "tahtlang-macos-arm64" => "tahtlang"
    end
  end

  on_linux do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-linux-x86_64"
    sha256 "21dd8e2ff287d852daba6562b2ecf0c4e81d7b60659d185e240267d2f3718559"

    def install
      bin.install "tahtlang-linux-x86_64" => "tahtlang"
    end
  end

  test do
    assert_match "TAHTLANG", shell_output("#{bin}/tahtlang --help")
  end
end
