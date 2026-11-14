class ChinatrainplannerCli < Formula
  desc "China High-Speed Rail (G/D/C) Booking Window, Seat Class & Passport Gate CLI"
  homepage "https://chinatrainplanner.com"
  url "https://github.com/AbigailDavised/homebrew-chinatrainplanner/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "99527e9e5631da718e6edaee4bfc89cd35cfc7e2768ced3c1c0ae15ca1efb807"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/chinatrainplanner-cli"
    bin.install "bin/chinatrainplanner-cli"
  end

  test do
    output = shell_output("#{bin}/chinatrainplanner-cli --version")
    assert_match "1.0.0", output
  end
end
