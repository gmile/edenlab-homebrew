class Health < Formula
  desc "A set of tool to help operate eHealth"
  homepage ""
  url "/Users/gmile/work/ehealth-apis/edenlab-homebrew/health.tar.gz"
  sha256 "1a5c6e5af7428313904dbc8abf0ca5b4aa775c05d7b4f7e806f1b3755bc037bb"
  version "0.1.0"

  head do
    url "https://git.postgresql.org/git/postgresql.git", :branch => "REL_10_STABLE"

    depends_on "docbook-xsl" => :build
    depends_on "open-sp" => :build
    depends_on "petere/sgml/docbook-sgml" => :build
  end

  depends_on "curl"
  depends_on "jq"
  depends_on "xsv"
  depends_on "kubernetes-cli"

  def install
    bin.install 'check_stuff'
  end

  test do
    system "false"
  end
end
