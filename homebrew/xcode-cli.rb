require "formula"

class XcodeCli < Formula
  homepage "https://github.com/gfontenot/xcode-cli"
  url "https://github.com/gfontenot/xcode-cli/releases/download/__VERSION__/xcode-cli.tar.gz"
  sha256 "__SHA__"

  depends_on "fzf"

  def install
    bin.install "src/xcode"
    bin.install Dir["src/commands/*"]
  end

  test do
    system "#{bin}/xcode", "--help"
  end
end
