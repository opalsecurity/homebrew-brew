require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/opalsecurity/opal-cli/"
  url "https://registry.npmjs.org/opal-security/-/opal-security-2.3.2.tgz"
  sha256 "f3ff562a5f321e15c3d555bc6c572f21174650d7ee32674d26d92f9b447cbea2"
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
