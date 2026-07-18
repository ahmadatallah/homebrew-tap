class Feb < Formula
  desc "Build Expo apps locally with 'eas build --local' - no queue, no credits"
  homepage "https://github.com/ahmadatallah/feb"
  url "https://github.com/ahmadatallah/feb/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "298b041b9eee5721555c7758bdbe188e5ac155a42c0c3e1d7054e950bda2c96f"
  license "MIT"

  depends_on "node"

  def install
    bin.install "build.sh" => "feb"
  end

  test do
    (testpath/"eas.json").write('{"build":{}}')
    assert_match "Usage", shell_output("#{bin}/feb 2>&1", 1)
  end
end
