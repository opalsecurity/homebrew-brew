require "language/node"

class OpalSecurity < Formula
  desc "Opal allows you to centrally manage access to all of your sensitive systems"
  homepage "https://github.com/cli/opal"
  url "https://registry.npmjs.org/opal-security/-/opal-security-0.7.2.tgz"
  sha256 "79b1346721cae8365f4999023f476bf31e167b4908ed5ff346acbb764b503e9a"
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
