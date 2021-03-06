require "formula"

class Prince < Formula
  homepage "http://www.princexml.com/"
  url "http://www.princexml.com/download/prince-9.0r5-macosx.tar.gz"
  sha256 "5aab38db48108f5246b2d477a86e533783cf00825c8db89e2dd02d96e2dd9e84"

  patch :DATA
  
  def install
    ENV["prefix"] = prefix
    system "./install.sh"
  end

end

__END__
--- prince-9.0r5-macosx.orig/install.sh	2014-04-28 02:21:00.000000000 +0000
+++ prince-9.0r5-macosx/install.sh	2014-05-16 14:44:07.000000000 +0000
@@ -7,24 +7,10 @@
 VERSION="8.0"
 WEBSITE="http://www.princexml.com"
 
-prefix=/usr/local
-
 base=`dirname $0`
 
 cd "$base"
 
-echo "$PRODUCT $VERSION"
-echo
-echo "Install directory"
-echo "    This is the directory in which $PRODUCT $VERSION will be installed."
-echo "    Press Enter to accept the default directory or enter an alternative."
-echo -n "    [$prefix]: "
-
-read input
-if [ ! -z "$input" ] ; then
-    prefix="$input"
-fi
-
 echo
 echo "Installing $PRODUCT $VERSION..."
