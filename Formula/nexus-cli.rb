class NexusCli < Formula
  desc "Nexus CLI - the unified bridge for infrastructure context"
  homepage "https://github.com/EdgeOpslabs/nexus"
  if Hardware::CPU.arm?
    url "https://github.com/EdgeOpslabs/nexus/releases/download/v1.0.3/nexus_darwin_arm64.tar.gz"
    sha256 "6330234fbe14226698b5b616c3973973938afc758580b8633751201cc54c8225"
  else
    url "https://github.com/EdgeOpslabs/nexus/releases/download/v1.0.3/nexus_darwin_amd64.tar.gz"
    sha256 "e95d84ba7b65e43e1ced883e6ee42d68291873f48ea3c24ee36abada771ac484"
  end
  version "1.0.3"

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus", "--help"
  end
end
