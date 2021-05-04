require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/cli/opal"
  url "https://registry.npmjs.org/opal-security/-/opal-security-0.7.5.tgz"
  sha256 "a8ef28794d0ccaa515c2a17e3cd3452a047f94feddc38eee52658a40df59423c"
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
