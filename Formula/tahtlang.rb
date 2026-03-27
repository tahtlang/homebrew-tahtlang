class Tahtlang < Formula
  desc "A DSL for creating Reigns-style card games"
  homepage "https://github.com/tahtlang/tahtlang"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-macos-arm64"
    sha256 "a50c2e3e36ccddb07ce32d8bd68e55ba4c1c3130b6f41854fb3f63a557d58370"

    def install
      bin.install "tahtlang-macos-arm64" => "tahtlang"
    end
  end

  on_linux do
    url "https://github.com/tahtlang/tahtlang/releases/download/v#{version}/tahtlang-linux-x86_64"
    sha256 "c05c14e3026c2900c808170888e864613d562ac14ccbe7c9217f52e2ee0d3a08"

    def install
      bin.install "tahtlang-linux-x86_64" => "tahtlang"
    end
  end

  test do
    assert_match "TAHTLANG", shell_output("#{bin}/tahtlang --help")
  end
end
