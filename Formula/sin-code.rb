class SinCode < Formula
  desc "SIN-Code — verification-first self-improving coding agent (54+ subcommands, MCP server, multi-agent orchestrator)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code"
  version "3.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.25.0/sin-code_3.25.0_darwin_arm64.tar.gz"
      sha256 "1e9d9f3a3b2a437d4cbabe25ed8765fbed03b5da504676dfedb25f95c060e4a1"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.25.0/sin-code_3.25.0_darwin_amd64.tar.gz"
      sha256 "6d6961b75c5473d128fdb2c50c034c8e00eb0063815d37e66d80f0f791c07f11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.25.0/sin-code_3.25.0_linux_arm64.tar.gz"
      sha256 "a500260b5d801202e6815cac7defb05564150f1a182bac8469b3bc5b15da8b97"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.25.0/sin-code_3.25.0_linux_amd64.tar.gz"
      sha256 "97c69aec8a5643028d5e23ea37127a7616cef640598366e49e1b4066f04d5c7d"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end
