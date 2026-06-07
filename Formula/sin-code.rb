class SinCode < Formula
  desc "SIN-Code unified toolchain — 19 subcommands in one binary (13 MCP + 6 CLI-only)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code-Bundle"
  version "1.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.9/sin-code-darwin-arm64.tar.gz"
      sha256 "c70b1daf6ebd3e268dc9edbb6b99b8ec6056a620fdb30bc4c4e273115493080b"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.9/sin-code-darwin-amd64.tar.gz"
      sha256 "7bd5f92d36614d8831104b92853ae2a5c40b0f5f367c9d7957bcdfd308a27107"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.9/sin-code-linux-arm64.tar.gz"
      sha256 "82b77e62e1d7cb7239fab69fefad80323f4b0b23576fa37ee9ed3533c3f471ce"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.0.9/sin-code-linux-amd64.tar.gz"
      sha256 "9c07743bcad2a0d8ea6ddbaaa552f23df7f8d3dd8d7998e02e6e5d8533d30eb0"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end