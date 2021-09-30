require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://opal.dev"
  url "https://registry.npmjs.org/opal-security/-/opal-security-2.0.1.tgz"
  sha256 "702f901d31074c7f54e63009a61bcac0ff6576f62dde12eaea2c75a5fed134b6"
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
