class SinCode < Formula
  desc "SIN-Code — verification-first self-improving coding agent (50+ subcommands, MCP server, multi-agent orchestrator)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code"
  version "3.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.0/sin-code_3.24.0_darwin_arm64.tar.gz"
      sha256 "8cddd48b7d1c1ede2b3dbfb0c84a598ceb4d9097e329f209d1f42ef8e7133b49"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.0/sin-code_3.24.0_darwin_amd64.tar.gz"
      sha256 "fdc04ed91b07d808f981c9530275a5cdcb8b2195b610251aae150119c67f183f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.0/sin-code_3.24.0_linux_arm64.tar.gz"
      sha256 "300542bcd6f09b69d5b4adecb08d5b423fc958b393f151b92c6f61537f737d7e"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.0/sin-code_3.24.0_linux_amd64.tar.gz"
      sha256 "bcb6581bfdfe16e4036d0bedd0c4b7f4bd589464654968a06f48a60a09787c67"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end
