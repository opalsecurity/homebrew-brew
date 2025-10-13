require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/opalsecurity/opal-cli/"
  url "https://registry.npmjs.org/opal-security/-/opal-security-3.2.4.tgz"
  sha256 "0329c93e2601bec96288b5b51dd48ec3bdefddc51aa3878ad3e9aedc45a29c55"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node@18"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
