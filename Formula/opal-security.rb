require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/cli/opal"
  url "https://registry.npmjs.org/opal-security/-/opal-security-2.0.11.tgz"
  sha256 "3acc40e4bd960afa378c987c4c12c4d7b29606222d7597f8f0acc7c7bb86677f"
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
