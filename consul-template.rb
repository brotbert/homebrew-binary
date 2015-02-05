class ConsulTemplate < Formula
  homepage "https://github.com/hashicorp/consul-template"
  version "0.7.0"

  if Hardware.is_64_bit?
    url "https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_darwin_amd64.tar.gz"
    sha1 "49a4041f28ef01b34b6128f8822f8c36b692222c"
  else
    url "https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_darwin_386.tar.gz"
    sha1 "b431ea0e0ccf5275cec3330f55090e2dd87236fa"
  end

  depends_on :arch => :intel

  def install
    bin.install "consul-template"
  end

  test do
    system "#{bin}/consul-template", "-version"
  end
end
