require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/cli/opal"
  url "https://registry.npmjs.org/opal-security/-/opal-security-0.7.6.tgz"
  sha256 "37867840f95031d12d5011e0a75910ce502604650aba7ea72318ce5cd960a44b"
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
