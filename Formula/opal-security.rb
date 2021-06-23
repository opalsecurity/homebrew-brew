require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/cli/opal"
  url "https://registry.npmjs.org/opal-security/-/opal-security-1.1.1.tgz"
  sha256 "5f879a3dfebf447ab17e1514169c1d931f935bfcbe644ebc413a5c1403305228"
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
