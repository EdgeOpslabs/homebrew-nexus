class NexusCli < Formula
  desc "Nexus CLI - the unified bridge for infrastructure context"
  homepage "https://github.com/EdgeOpslabs/nexus"
  if Hardware::CPU.arm?
    url "https://github.com/EdgeOpslabs/nexus/releases/download/v1.0.5/nexus_darwin_arm64.tar.gz"
    sha256 "cf245e8b2a70e6b80b25963b51d8847bbab0f2d8eceeeb76675d3aac61555ec8"
  else
    url "https://github.com/EdgeOpslabs/nexus/releases/download/v1.0.5/nexus_darwin_amd64.tar.gz"
    sha256 "f7c2a738e91b4cdd5a41dad7c48d89507e91da4678dcd66396b0bc03636f5c4c"
  end
  version "1.0.5"

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus", "--help"
  end
end
