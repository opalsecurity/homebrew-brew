require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/opalsecurity/opal-cli/"
  url "https://registry.npmjs.org/opal-security/-/opal-security-5.0.1.tgz"
  sha256 "e3b12eb55f457a17aa8639ab25ae3facec9008d2a60036ac911a44aca076ed7b"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
