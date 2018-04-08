class Health < Formula
  desc "A set of tool to help operate eHealth"
  homepage ""
  url "https://github.com/gmile/edenlab-homebrew.git"
  version "0.1.0"
  head "https://github.com/andsens/homeshick.git"

  bottle :unneeded

  depends_on "fish"
  depends_on "curl"
  depends_on "jq"
  depends_on "xsv"
  depends_on "kubernetes-cli"

  def install
    fish_function.install "scripts/a.fish"
    bin.install "health"
    # bin.install 'health'
    # bin.install 'logs_per_microservice'
  end
end
