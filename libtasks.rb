require "formula"

class Libtasks < Formula
  homepage "https://github.com/apohl79/libtasks"

  stable do
    url "https://github.com/apohl79/libtasks/archive/1.5.tar.gz"
    sha1 "1ba4c7a2f32e9d04cac1ed2fa75828986e9d69c2"
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
