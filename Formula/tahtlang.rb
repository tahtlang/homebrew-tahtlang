class Tahtlang < Formula
  desc "A DSL for creating Reigns-style card games"
  homepage "https://github.com/tahtlang/tahtlang"
  version "0.4.2"
  license "MIT"

  on_macos do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-macos-arm64"
    sha256 "f2e38825b006b3fa16ad53824e77872e52fc04fbe1ba20a6faf65e64b9788751"

    def install
      bin.install "tahtlang-macos-arm64" => "tahtlang"
    end
  end

  on_linux do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-linux-x86_64"
    sha256 "a50f29d815926076c6cf0395067964b918615699364b966cdb8f90359cf1d51d"

    def install
      bin.install "tahtlang-linux-x86_64" => "tahtlang"
    end
  end

  test do
    assert_match "TAHTLANG", shell_output("#{bin}/tahtlang --help")
  end
end
