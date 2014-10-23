require "formula"

class Libtasks < Formula
  homepage "https://github.com/apohl79/libtasks"

  stable do
    url "https://github.com/apohl79/libtasks/archive/1.4.tar.gz"
    sha1 "d9eaa2b0a2f3e377f353f2446d7b30a2f986f884"
  end

  head do
    url "https://github.com/apohl79/libtasks.git"
  end

  depends_on "cmake" => :build
  depends_on "thrift"
  depends_on "libev"
  depends_on "boost"
  
  def install
    mkdir "build" do
      system "cmake", "-DDISABLE_TESTS=y", *std_cmake_args, ".."
      system "make install"
    end
  end
end
