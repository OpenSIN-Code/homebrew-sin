class SinCode < Formula
  desc "SIN-Code unified toolchain — 19 subcommands + multi-pane TUI 2.0 (13 MCP + 6 CLI-only)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code-Bundle"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.1.0/sin-code-darwin-arm64.tar.gz"
      sha256 "4f6d4fac8761837e6b1e3791c9c15c5d2bb5b64259cd5bd4349ef514649dbc3f"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.1.0/sin-code-darwin-amd64.tar.gz"
      sha256 "68552d17b8da60706490c28a52b805d47d605186b89d7fa0ca7aa2e7fdbe734f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.1.0/sin-code-linux-arm64.tar.gz"
      sha256 "6e81985202deb17da2e5e3d543236736102d50ced31e84ae46b625bce3e005b0"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code-Bundle/releases/download/v1.1.0/sin-code-linux-amd64.tar.gz"
      sha256 "4b8a9fef2253fbc619bd19259060ad90960d179c04939844a42284f846d8a232"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end