require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/opalsecurity/opal-cli/"
  url "https://registry.npmjs.org/opal-security/-/opal-security-2.0.18.tgz"
  sha256 "9f2f59f211a71bdcb2950fb0dfea57253d34b403a4131953639832e19a9da2cb"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node@16"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
