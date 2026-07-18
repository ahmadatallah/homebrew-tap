class FreeExpoBuilds < Formula
  desc "Build Expo apps locally with 'eas build --local' - no queue, no credits"
  homepage "https://github.com/ahmadatallah/free-expo-builds"
  url "https://github.com/ahmadatallah/free-expo-builds/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "33553dea2b25f6f665e436e1464085e7c7018f5efc41b68a8939285f0de9930d"
  license "MIT"

  depends_on "node"

  def install
    bin.install "build.sh" => "free-expo-builds"
  end

  test do
    (testpath/"eas.json").write('{"build":{}}')
    assert_match "Usage", shell_output("#{bin}/free-expo-builds 2>&1", 1)
  end
end
