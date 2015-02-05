class ConsulTemplate < Formula
  homepage "https://github.com/hashicorp/consul-template"
  version "0.6.1"

  if Hardware.is_64_bit?
    url "https://github.com/hashicorp/consul-template/releases/download/v0.6.1/consul-template_0.6.1_darwin_amd64.tar.gz"
    sha1 "75b43aabcae0b261582991d34b89867619508be1"
  else
    url "https://github.com/hashicorp/consul-template/releases/download/v0.6.1/consul-template_0.6.1_darwin_386.tar.gz"
    sha1 "b67669ec4d85fa927fc378bfcf71e52f409133aa"
  end

  depends_on :arch => :intel

  def install
    bin.install "consul-template"
  end

  test do
    system "#{bin}/consul-template", "-version"
  end
end
