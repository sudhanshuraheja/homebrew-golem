class Golem < Formula
    desc "Golem is a deployment tool that lets you upload artifacts and exectute commands in parallel on multiple servers via SSH using human readable Hashicorp HCL recipes"
    homepage "https://github.com/sudhanshuraheja/golem"
    url "https://github.com/sudhanshuraheja/golem/archive/refs/tags/v0.1.0-3-g2e1918b.tar.gz"
    sha256 "8f7fbb6f84977b9811661e15a5023ae8fcd5b42b41d7c7a70084c9a40b7b4767"
    license "MIT"

    depends_on "go" => :build
  
    def install
      ENV["GOPATH"] = buildpath
      path = buildpath/"src/github.com/sudhanshuraheja/golem"
      system "go", "get", "-u", "github.com/sudhanshuraheja/golem"
      cd path do
        system "go", "build", "-o", "#{bin}/golem"
      end
    end
  
    test do
      system "true"
    end
  end
  