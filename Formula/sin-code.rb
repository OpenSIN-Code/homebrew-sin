class SinCode < Formula
  desc "SIN-Code — verification-first self-improving coding agent (50+ subcommands, MCP server, multi-agent orchestrator)"
  homepage "https://github.com/OpenSIN-Code/SIN-Code"
  version "3.24.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.1/sin-code_3.24.1_darwin_arm64.tar.gz"
      sha256 "b519822e234569cb4872cc54dad6268b203cf0e65bbb1d9e6c4bb293c315e171"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.1/sin-code_3.24.1_darwin_amd64.tar.gz"
      sha256 "83172aa7bb8478364726b1051b9d0824435e687521d2bae22040bd0ffebf2a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.1/sin-code_3.24.1_linux_arm64.tar.gz"
      sha256 "fa1fafef213e2871236e1d90d6ea31fd130fa0ec842909acc72000c26fc27ff9"
    else
      url "https://github.com/OpenSIN-Code/SIN-Code/releases/download/v3.24.1/sin-code_3.24.1_linux_amd64.tar.gz"
      sha256 "d16aeb3d422bbbac07cc8d4e5ee8964ff69d874dcb157230544a8dfa3191e9ef"
    end
  end

  def install
    bin.install "sin-code"
  end

  test do
    system "#{bin}/sin-code", "--version"
  end
end
