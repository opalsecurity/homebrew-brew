require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/opalsecurity/opal-cli/"
  url "https://registry.npmjs.org/opal-security/-/opal-security-4.0.2.tgz"
  sha256 "b8cf4f6ba4a58f5149b354d550919dd8ff7988d88ffd5c8403da39df835d1949"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node@24"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
