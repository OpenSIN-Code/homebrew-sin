class SinCode < Formula
  desc "SIN-Code unified toolchain — 19 subcommands in one binary (13 MCP + 6 CLI-only)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code-Bundle"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.8/sin-code-darwin-arm64.tar.gz"
      sha256 "a29fb868922573b244ce32beb1b524fedd5ac68939f93587a550628be68a9fe4"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.8/sin-code-darwin-amd64.tar.gz"
      sha256 "dec32d2a7ce70293a9cb2f0a67341aba6740295e465958d96670c4a33f668409"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.8/sin-code-linux-arm64.tar.gz"
      sha256 "3fa230742dc5b2d48f861936bb875e5507855b9a84283aff78a702a54270c7cd"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.8/sin-code-linux-amd64.tar.gz"
      sha256 "0c59a15d59bfa50b11b9122e78f79d162f34557111d60e3ae5e3a78c84ec4382"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end