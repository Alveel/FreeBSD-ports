--- config.m4.orig	2018-07-17 05:35:52 UTC
+++ config.m4
@@ -287,6 +287,7 @@ dnl enable the support in bundled GD library
 
   if test -n "$GD_XPM_DIR"; then
     AC_DEFINE(HAVE_GD_XPM, 1, [ ])
+    AC_DEFINE(HAVE_XPM, 1, [ ])
     GDLIB_CFLAGS="$GDLIB_CFLAGS -DHAVE_XPM"
   fi
 
@@ -349,7 +350,7 @@ if test "$PHP_GD" != "no"; then
 
   if test "$GD_MODULE_TYPE" = "builtin"; then 
     PHP_ADD_BUILD_DIR($ext_builddir/libgd)
-    GDLIB_CFLAGS="-I$ext_srcdir/libgd $GDLIB_CFLAGS"
+    GDLIB_CFLAGS="-I../.. -I$ext_srcdir/libgd $GDLIB_CFLAGS"
     GD_HEADER_DIRS="ext/gd/ ext/gd/libgd/"
 
     PHP_TEST_BUILD(foobar, [], [
@@ -357,7 +358,7 @@ if test "$PHP_GD" != "no"; then
     ], [ $GD_SHARED_LIBADD ], [char foobar () {}])
   else
     GD_HEADER_DIRS="ext/gd/"
-    GDLIB_CFLAGS="-I$GD_INCLUDE $GDLIB_CFLAGS"
+    GDLIB_CFLAGS="-I../.. -I$ext_srcdir/libgd $GDLIB_CFLAGS"
     PHP_ADD_INCLUDE($GD_INCLUDE)
     PHP_CHECK_LIBRARY(gd, gdImageCreate, [], [
       AC_MSG_ERROR([GD build test failed. Please check the config.log for details.])
