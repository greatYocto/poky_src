# generated automatically by aclocal 1.16.1 -*- Autoconf -*-

# Copyright (C) 1996-2018 Free Software Foundation, Inc.

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

m4_ifndef([AC_CONFIG_MACRO_DIRS], [m4_defun([_AM_CONFIG_MACRO_DIRS], [])m4_defun([AC_CONFIG_MACRO_DIRS], [_AM_CONFIG_MACRO_DIRS($@)])])
m4_ifndef([AC_AUTOCONF_VERSION],
  [m4_copy([m4_PACKAGE_VERSION], [AC_AUTOCONF_VERSION])])dnl
m4_if(m4_defn([AC_AUTOCONF_VERSION]), [2.69],,
[m4_warning([this file was generated for autoconf 2.69.
You have another version of autoconf.  It may work, but is not guaranteed to.
If you have problems, you may need to regenerate the build system entirely.
To do so, use the procedure documented by the package, typically 'autoreconf'.])])

# Copyright (C) 2002-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_AUTOMAKE_VERSION(VERSION)
# ----------------------------
# Automake X.Y traces this macro to ensure aclocal.m4 has been
# generated from the m4 files accompanying Automake X.Y.
# (This private macro should not be called outside this file.)
AC_DEFUN([AM_AUTOMAKE_VERSION],
[am__api_version='1.16'
dnl Some users find AM_AUTOMAKE_VERSION and mistake it for a way to
dnl require some minimum version.  Point them to the right macro.
m4_if([$1], [1.16.1], [],
      [AC_FATAL([Do not call $0, use AM_INIT_AUTOMAKE([$1]).])])dnl
])

# _AM_AUTOCONF_VERSION(VERSION)
# -----------------------------
# aclocal traces this macro to find the Autoconf version.
# This is a private macro too.  Using m4_define simplifies
# the logic in aclocal, which can simply ignore this definition.
m4_define([_AM_AUTOCONF_VERSION], [])

# AM_SET_CURRENT_AUTOMAKE_VERSION
# -------------------------------
# Call AM_AUTOMAKE_VERSION and AM_AUTOMAKE_VERSION so they can be traced.
# This function is AC_REQUIREd by AM_INIT_AUTOMAKE.
AC_DEFUN([AM_SET_CURRENT_AUTOMAKE_VERSION],
[AM_AUTOMAKE_VERSION([1.16.1])dnl
m4_ifndef([AC_AUTOCONF_VERSION],
  [m4_copy([m4_PACKAGE_VERSION], [AC_AUTOCONF_VERSION])])dnl
_AM_AUTOCONF_VERSION(m4_defn([AC_AUTOCONF_VERSION]))])

# AM_AUX_DIR_EXPAND                                         -*- Autoconf -*-

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# For projects using AC_CONFIG_AUX_DIR([foo]), Autoconf sets
# $ac_aux_dir to '$srcdir/foo'.  In other projects, it is set to
# '$srcdir', '$srcdir/..', or '$srcdir/../..'.
#
# Of course, Automake must honor this variable whenever it calls a
# tool from the auxiliary directory.  The problem is that $srcdir (and
# therefore $ac_aux_dir as well) can be either absolute or relative,
# depending on how configure is run.  This is pretty annoying, since
# it makes $ac_aux_dir quite unusable in subdirectories: in the top
# source directory, any form will work fine, but in subdirectories a
# relative path needs to be adjusted first.
#
# $ac_aux_dir/missing
#    fails when called from a subdirectory if $ac_aux_dir is relative
# $top_srcdir/$ac_aux_dir/missing
#    fails if $ac_aux_dir is absolute,
#    fails when called from a subdirectory in a VPATH build with
#          a relative $ac_aux_dir
#
# The reason of the latter failure is that $top_srcdir and $ac_aux_dir
# are both prefixed by $srcdir.  In an in-source build this is usually
# harmless because $srcdir is '.', but things will broke when you
# start a VPATH build or use an absolute $srcdir.
#
# So we could use something similar to $top_srcdir/$ac_aux_dir/missing,
# iff we strip the leading $srcdir from $ac_aux_dir.  That would be:
#   am_aux_dir='\$(top_srcdir)/'`expr "$ac_aux_dir" : "$srcdir//*\(.*\)"`
# and then we would define $MISSING as
#   MISSING="\${SHELL} $am_aux_dir/missing"
# This will work as long as MISSING is not called from configure, because
# unfortunately $(top_srcdir) has no meaning in configure.
# However there are other variables, like CC, which are often used in
# configure, and could therefore not use this "fixed" $ac_aux_dir.
#
# Another solution, used here, is to always expand $ac_aux_dir to an
# absolute PATH.  The drawback is that using absolute paths prevent a
# configured tree to be moved without reconfiguration.

AC_DEFUN([AM_AUX_DIR_EXPAND],
[AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT])dnl
# Expand $ac_aux_dir to an absolute path.
am_aux_dir=`cd "$ac_aux_dir" && pwd`
])

# AM_CONDITIONAL                                            -*- Autoconf -*-

# Copyright (C) 1997-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_CONDITIONAL(NAME, SHELL-CONDITION)
# -------------------------------------
# Define a conditional.
AC_DEFUN([AM_CONDITIONAL],
[AC_PREREQ([2.52])dnl
 m4_if([$1], [TRUE],  [AC_FATAL([$0: invalid condition: $1])],
       [$1], [FALSE], [AC_FATAL([$0: invalid condition: $1])])dnl
AC_SUBST([$1_TRUE])dnl
AC_SUBST([$1_FALSE])dnl
_AM_SUBST_NOTMAKE([$1_TRUE])dnl
_AM_SUBST_NOTMAKE([$1_FALSE])dnl
m4_define([_AM_COND_VALUE_$1], [$2])dnl
if $2; then
  $1_TRUE=
  $1_FALSE='#'
else
  $1_TRUE='#'
  $1_FALSE=
fi
AC_CONFIG_COMMANDS_PRE(
[if test -z "${$1_TRUE}" && test -z "${$1_FALSE}"; then
  AC_MSG_ERROR([[conditional "$1" was never defined.
Usually this means the macro was only invoked conditionally.]])
fi])])

# Copyright (C) 1999-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.


# There are a few dirty hacks below to avoid letting 'AC_PROG_CC' be
# written in clear, in which case automake, when reading aclocal.m4,
# will think it sees a *use*, and therefore will trigger all it's
# C support machinery.  Also note that it means that autoscan, seeing
# CC etc. in the Makefile, will ask for an AC_PROG_CC use...


# _AM_DEPENDENCIES(NAME)
# ----------------------
# See how the compiler implements dependency checking.
# NAME is "CC", "CXX", "OBJC", "OBJCXX", "UPC", or "GJC".
# We try a few techniques and use that to set a single cache variable.
#
# We don't AC_REQUIRE the corresponding AC_PROG_CC since the latter was
# modified to invoke _AM_DEPENDENCIES(CC); we would have a circular
# dependency, and given that the user is not expected to run this macro,
# just rely on AC_PROG_CC.
AC_DEFUN([_AM_DEPENDENCIES],
[AC_REQUIRE([AM_SET_DEPDIR])dnl
AC_REQUIRE([AM_OUTPUT_DEPENDENCY_COMMANDS])dnl
AC_REQUIRE([AM_MAKE_INCLUDE])dnl
AC_REQUIRE([AM_DEP_TRACK])dnl

m4_if([$1], [CC],   [depcc="$CC"   am_compiler_list=],
      [$1], [CXX],  [depcc="$CXX"  am_compiler_list=],
      [$1], [OBJC], [depcc="$OBJC" am_compiler_list='gcc3 gcc'],
      [$1], [OBJCXX], [depcc="$OBJCXX" am_compiler_list='gcc3 gcc'],
      [$1], [UPC],  [depcc="$UPC"  am_compiler_list=],
      [$1], [GCJ],  [depcc="$GCJ"  am_compiler_list='gcc3 gcc'],
                    [depcc="$$1"   am_compiler_list=])

AC_CACHE_CHECK([dependency style of $depcc],
               [am_cv_$1_dependencies_compiler_type],
[if test -z "$AMDEP_TRUE" && test -f "$am_depcomp"; then
  # We make a subdir and do the tests there.  Otherwise we can end up
  # making bogus files that we don't know about and never remove.  For
  # instance it was reported that on HP-UX the gcc test will end up
  # making a dummy file named 'D' -- because '-MD' means "put the output
  # in D".
  rm -rf conftest.dir
  mkdir conftest.dir
  # Copy depcomp to subdir because otherwise we won't find it if we're
  # using a relative directory.
  cp "$am_depcomp" conftest.dir
  cd conftest.dir
  # We will build objects and dependencies in a subdirectory because
  # it helps to detect inapplicable dependency modes.  For instance
  # both Tru64's cc and ICC support -MD to output dependencies as a
  # side effect of compilation, but ICC will put the dependencies in
  # the current directory while Tru64 will put them in the object
  # directory.
  mkdir sub

  am_cv_$1_dependencies_compiler_type=none
  if test "$am_compiler_list" = ""; then
     am_compiler_list=`sed -n ['s/^#*\([a-zA-Z0-9]*\))$/\1/p'] < ./depcomp`
  fi
  am__universal=false
  m4_case([$1], [CC],
    [case " $depcc " in #(
     *\ -arch\ *\ -arch\ *) am__universal=true ;;
     esac],
    [CXX],
    [case " $depcc " in #(
     *\ -arch\ *\ -arch\ *) am__universal=true ;;
     esac])

  for depmode in $am_compiler_list; do
    # Setup a source with many dependencies, because some compilers
    # like to wrap large dependency lists on column 80 (with \), and
    # we should not choose a depcomp mode which is confused by this.
    #
    # We need to recreate these files for each test, as the compiler may
    # overwrite some of them when testing with obscure command lines.
    # This happens at least with the AIX C compiler.
    : > sub/conftest.c
    for i in 1 2 3 4 5 6; do
      echo '#include "conftst'$i'.h"' >> sub/conftest.c
      # Using ": > sub/conftst$i.h" creates only sub/conftst1.h with
      # Solaris 10 /bin/sh.
      echo '/* dummy */' > sub/conftst$i.h
    done
    echo "${am__include} ${am__quote}sub/conftest.Po${am__quote}" > confmf

    # We check with '-c' and '-o' for the sake of the "dashmstdout"
    # mode.  It turns out that the SunPro C++ compiler does not properly
    # handle '-M -o', and we need to detect this.  Also, some Intel
    # versions had trouble with output in subdirs.
    am__obj=sub/conftest.${OBJEXT-o}
    am__minus_obj="-o $am__obj"
    case $depmode in
    gcc)
      # This depmode causes a compiler race in universal mode.
      test "$am__universal" = false || continue
      ;;
    nosideeffect)
      # After this tag, mechanisms are not by side-effect, so they'll
      # only be used when explicitly requested.
      if test "x$enable_dependency_tracking" = xyes; then
	continue
      else
	break
      fi
      ;;
    msvc7 | msvc7msys | msvisualcpp | msvcmsys)
      # This compiler won't grok '-c -o', but also, the minuso test has
      # not run yet.  These depmodes are late enough in the game, and
      # so weak that their functioning should not be impacted.
      am__obj=conftest.${OBJEXT-o}
      am__minus_obj=
      ;;
    none) break ;;
    esac
    if depmode=$depmode \
       source=sub/conftest.c object=$am__obj \
       depfile=sub/conftest.Po tmpdepfile=sub/conftest.TPo \
       $SHELL ./depcomp $depcc -c $am__minus_obj sub/conftest.c \
         >/dev/null 2>conftest.err &&
       grep sub/conftst1.h sub/conftest.Po > /dev/null 2>&1 &&
       grep sub/conftst6.h sub/conftest.Po > /dev/null 2>&1 &&
       grep $am__obj sub/conftest.Po > /dev/null 2>&1 &&
       ${MAKE-make} -s -f confmf > /dev/null 2>&1; then
      # icc doesn't choke on unknown options, it will just issue warnings
      # or remarks (even with -Werror).  So we grep stderr for any message
      # that says an option was ignored or not supported.
      # When given -MP, icc 7.0 and 7.1 complain thusly:
      #   icc: Command line warning: ignoring option '-M'; no argument required
      # The diagnosis changed in icc 8.0:
      #   icc: Command line remark: option '-MP' not supported
      if (grep 'ignoring option' conftest.err ||
          grep 'not supported' conftest.err) >/dev/null 2>&1; then :; else
        am_cv_$1_dependencies_compiler_type=$depmode
        break
      fi
    fi
  done

  cd ..
  rm -rf conftest.dir
else
  am_cv_$1_dependencies_compiler_type=none
fi
])
AC_SUBST([$1DEPMODE], [depmode=$am_cv_$1_dependencies_compiler_type])
AM_CONDITIONAL([am__fastdep$1], [
  test "x$enable_dependency_tracking" != xno \
  && test "$am_cv_$1_dependencies_compiler_type" = gcc3])
])


# AM_SET_DEPDIR
# -------------
# Choose a directory name for dependency files.
# This macro is AC_REQUIREd in _AM_DEPENDENCIES.
AC_DEFUN([AM_SET_DEPDIR],
[AC_REQUIRE([AM_SET_LEADING_DOT])dnl
AC_SUBST([DEPDIR], ["${am__leading_dot}deps"])dnl
])


# AM_DEP_TRACK
# ------------
AC_DEFUN([AM_DEP_TRACK],
[AC_ARG_ENABLE([dependency-tracking], [dnl
AS_HELP_STRING(
  [--enable-dependency-tracking],
  [do not reject slow dependency extractors])
AS_HELP_STRING(
  [--disable-dependency-tracking],
  [speeds up one-time build])])
if test "x$enable_dependency_tracking" != xno; then
  am_depcomp="$ac_aux_dir/depcomp"
  AMDEPBACKSLASH='\'
  am__nodep='_no'
fi
AM_CONDITIONAL([AMDEP], [test "x$enable_dependency_tracking" != xno])
AC_SUBST([AMDEPBACKSLASH])dnl
_AM_SUBST_NOTMAKE([AMDEPBACKSLASH])dnl
AC_SUBST([am__nodep])dnl
_AM_SUBST_NOTMAKE([am__nodep])dnl
])

# Generate code to set up dependency tracking.              -*- Autoconf -*-

# Copyright (C) 1999-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_OUTPUT_DEPENDENCY_COMMANDS
# ------------------------------
AC_DEFUN([_AM_OUTPUT_DEPENDENCY_COMMANDS],
[{
  # Older Autoconf quotes --file arguments for eval, but not when files
  # are listed without --file.  Let's play safe and only enable the eval
  # if we detect the quoting.
  # TODO: see whether this extra hack can be removed once we start
  # requiring Autoconf 2.70 or later.
  AS_CASE([$CONFIG_FILES],
          [*\'*], [eval set x "$CONFIG_FILES"],
          [*], [set x $CONFIG_FILES])
  shift
  # Used to flag and report bootstrapping failures.
  am_rc=0
  for am_mf
  do
    # Strip MF so we end up with the name of the file.
    am_mf=`AS_ECHO(["$am_mf"]) | sed -e 's/:.*$//'`
    # Check whether this is an Automake generated Makefile which includes
    # dependency-tracking related rules and includes.
    # Grep'ing the whole file directly is not great: AIX grep has a line
    # limit of 2048, but all sed's we know have understand at least 4000.
    sed -n 's,^am--depfiles:.*,X,p' "$am_mf" | grep X >/dev/null 2>&1 \
      || continue
    am_dirpart=`AS_DIRNAME(["$am_mf"])`
    am_filepart=`AS_BASENAME(["$am_mf"])`
    AM_RUN_LOG([cd "$am_dirpart" \
      && sed -e '/# am--include-marker/d' "$am_filepart" \
        | $MAKE -f - am--depfiles]) || am_rc=$?
  done
  if test $am_rc -ne 0; then
    AC_MSG_FAILURE([Something went wrong bootstrapping makefile fragments
    for automatic dependency tracking.  Try re-running configure with the
    '--disable-dependency-tracking' option to at least be able to build
    the package (albeit without support for automatic dependency tracking).])
  fi
  AS_UNSET([am_dirpart])
  AS_UNSET([am_filepart])
  AS_UNSET([am_mf])
  AS_UNSET([am_rc])
  rm -f conftest-deps.mk
}
])# _AM_OUTPUT_DEPENDENCY_COMMANDS


# AM_OUTPUT_DEPENDENCY_COMMANDS
# -----------------------------
# This macro should only be invoked once -- use via AC_REQUIRE.
#
# This code is only required when automatic dependency tracking is enabled.
# This creates each '.Po' and '.Plo' makefile fragment that we'll need in
# order to bootstrap the dependency handling code.
AC_DEFUN([AM_OUTPUT_DEPENDENCY_COMMANDS],
[AC_CONFIG_COMMANDS([depfiles],
     [test x"$AMDEP_TRUE" != x"" || _AM_OUTPUT_DEPENDENCY_COMMANDS],
     [AMDEP_TRUE="$AMDEP_TRUE" MAKE="${MAKE-make}"])])

# Do all the work for Automake.                             -*- Autoconf -*-

# Copyright (C) 1996-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This macro actually does too much.  Some checks are only needed if
# your package does certain things.  But this isn't really a big deal.

dnl Redefine AC_PROG_CC to automatically invoke _AM_PROG_CC_C_O.
m4_define([AC_PROG_CC],
m4_defn([AC_PROG_CC])
[_AM_PROG_CC_C_O
])

# AM_INIT_AUTOMAKE(PACKAGE, VERSION, [NO-DEFINE])
# AM_INIT_AUTOMAKE([OPTIONS])
# -----------------------------------------------
# The call with PACKAGE and VERSION arguments is the old style
# call (pre autoconf-2.50), which is being phased out.  PACKAGE
# and VERSION should now be passed to AC_INIT and removed from
# the call to AM_INIT_AUTOMAKE.
# We support both call styles for the transition.  After
# the next Automake release, Autoconf can make the AC_INIT
# arguments mandatory, and then we can depend on a new Autoconf
# release and drop the old call support.
AC_DEFUN([AM_INIT_AUTOMAKE],
[AC_PREREQ([2.65])dnl
dnl Autoconf wants to disallow AM_ names.  We explicitly allow
dnl the ones we care about.
m4_pattern_allow([^AM_[A-Z]+FLAGS$])dnl
AC_REQUIRE([AM_SET_CURRENT_AUTOMAKE_VERSION])dnl
AC_REQUIRE([AC_PROG_INSTALL])dnl
if test "`cd $srcdir && pwd`" != "`pwd`"; then
  # Use -I$(srcdir) only when $(srcdir) != ., so that make's output
  # is not polluted with repeated "-I."
  AC_SUBST([am__isrc], [' -I$(srcdir)'])_AM_SUBST_NOTMAKE([am__isrc])dnl
  # test to see if srcdir already configured
  if test -f $srcdir/config.status; then
    AC_MSG_ERROR([source directory already configured; run "make distclean" there first])
  fi
fi

# test whether we have cygpath
if test -z "$CYGPATH_W"; then
  if (cygpath --version) >/dev/null 2>/dev/null; then
    CYGPATH_W='cygpath -w'
  else
    CYGPATH_W=echo
  fi
fi
AC_SUBST([CYGPATH_W])

# Define the identity of the package.
dnl Distinguish between old-style and new-style calls.
m4_ifval([$2],
[AC_DIAGNOSE([obsolete],
             [$0: two- and three-arguments forms are deprecated.])
m4_ifval([$3], [_AM_SET_OPTION([no-define])])dnl
 AC_SUBST([PACKAGE], [$1])dnl
 AC_SUBST([VERSION], [$2])],
[_AM_SET_OPTIONS([$1])dnl
dnl Diagnose old-style AC_INIT with new-style AM_AUTOMAKE_INIT.
m4_if(
  m4_ifdef([AC_PACKAGE_NAME], [ok]):m4_ifdef([AC_PACKAGE_VERSION], [ok]),
  [ok:ok],,
  [m4_fatal([AC_INIT should be called with package and version arguments])])dnl
 AC_SUBST([PACKAGE], ['AC_PACKAGE_TARNAME'])dnl
 AC_SUBST([VERSION], ['AC_PACKAGE_VERSION'])])dnl

_AM_IF_OPTION([no-define],,
[AC_DEFINE_UNQUOTED([PACKAGE], ["$PACKAGE"], [Name of package])
 AC_DEFINE_UNQUOTED([VERSION], ["$VERSION"], [Version number of package])])dnl

# Some tools Automake needs.
AC_REQUIRE([AM_SANITY_CHECK])dnl
AC_REQUIRE([AC_ARG_PROGRAM])dnl
AM_MISSING_PROG([ACLOCAL], [aclocal-${am__api_version}])
AM_MISSING_PROG([AUTOCONF], [autoconf])
AM_MISSING_PROG([AUTOMAKE], [automake-${am__api_version}])
AM_MISSING_PROG([AUTOHEADER], [autoheader])
AM_MISSING_PROG([MAKEINFO], [makeinfo])
AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
AC_REQUIRE([AM_PROG_INSTALL_STRIP])dnl
AC_REQUIRE([AC_PROG_MKDIR_P])dnl
# For better backward compatibility.  To be removed once Automake 1.9.x
# dies out for good.  For more background, see:
# <https://lists.gnu.org/archive/html/automake/2012-07/msg00001.html>
# <https://lists.gnu.org/archive/html/automake/2012-07/msg00014.html>
AC_SUBST([mkdir_p], ['$(MKDIR_P)'])
# We need awk for the "check" target (and possibly the TAP driver).  The
# system "awk" is bad on some platforms.
AC_REQUIRE([AC_PROG_AWK])dnl
AC_REQUIRE([AC_PROG_MAKE_SET])dnl
AC_REQUIRE([AM_SET_LEADING_DOT])dnl
_AM_IF_OPTION([tar-ustar], [_AM_PROG_TAR([ustar])],
	      [_AM_IF_OPTION([tar-pax], [_AM_PROG_TAR([pax])],
			     [_AM_PROG_TAR([v7])])])
_AM_IF_OPTION([no-dependencies],,
[AC_PROVIDE_IFELSE([AC_PROG_CC],
		  [_AM_DEPENDENCIES([CC])],
		  [m4_define([AC_PROG_CC],
			     m4_defn([AC_PROG_CC])[_AM_DEPENDENCIES([CC])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_CXX],
		  [_AM_DEPENDENCIES([CXX])],
		  [m4_define([AC_PROG_CXX],
			     m4_defn([AC_PROG_CXX])[_AM_DEPENDENCIES([CXX])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_OBJC],
		  [_AM_DEPENDENCIES([OBJC])],
		  [m4_define([AC_PROG_OBJC],
			     m4_defn([AC_PROG_OBJC])[_AM_DEPENDENCIES([OBJC])])])dnl
AC_PROVIDE_IFELSE([AC_PROG_OBJCXX],
		  [_AM_DEPENDENCIES([OBJCXX])],
		  [m4_define([AC_PROG_OBJCXX],
			     m4_defn([AC_PROG_OBJCXX])[_AM_DEPENDENCIES([OBJCXX])])])dnl
])
AC_REQUIRE([AM_SILENT_RULES])dnl
dnl The testsuite driver may need to know about EXEEXT, so add the
dnl 'am__EXEEXT' conditional if _AM_COMPILER_EXEEXT was seen.  This
dnl macro is hooked onto _AC_COMPILER_EXEEXT early, see below.
AC_CONFIG_COMMANDS_PRE(dnl
[m4_provide_if([_AM_COMPILER_EXEEXT],
  [AM_CONDITIONAL([am__EXEEXT], [test -n "$EXEEXT"])])])dnl

# POSIX will say in a future version that running "rm -f" with no argument
# is OK; and we want to be able to make that assumption in our Makefile
# recipes.  So use an aggressive probe to check that the usage we want is
# actually supported "in the wild" to an acceptable degree.
# See automake bug#10828.
# To make any issue more visible, cause the running configure to be aborted
# by default if the 'rm' program in use doesn't match our expectations; the
# user can still override this though.
if rm -f && rm -fr && rm -rf; then : OK; else
  cat >&2 <<'END'
Oops!

Your 'rm' program seems unable to run without file operands specified
on the command line, even when the '-f' option is present.  This is contrary
to the behaviour of most rm programs out there, and not conforming with
the upcoming POSIX standard: <http://austingroupbugs.net/view.php?id=542>

Please tell bug-automake@gnu.org about your system, including the value
of your $PATH and any error possibly output before this message.  This
can help us improve future automake versions.

END
  if test x"$ACCEPT_INFERIOR_RM_PROGRAM" = x"yes"; then
    echo 'Configuration will proceed anyway, since you have set the' >&2
    echo 'ACCEPT_INFERIOR_RM_PROGRAM variable to "yes"' >&2
    echo >&2
  else
    cat >&2 <<'END'
Aborting the configuration process, to ensure you take notice of the issue.

You can download and install GNU coreutils to get an 'rm' implementation
that behaves properly: <https://www.gnu.org/software/coreutils/>.

If you want to complete the configuration process using your problematic
'rm' anyway, export the environment variable ACCEPT_INFERIOR_RM_PROGRAM
to "yes", and re-run configure.

END
    AC_MSG_ERROR([Your 'rm' program is bad, sorry.])
  fi
fi
dnl The trailing newline in this macro's definition is deliberate, for
dnl backward compatibility and to allow trailing 'dnl'-style comments
dnl after the AM_INIT_AUTOMAKE invocation. See automake bug#16841.
])

dnl Hook into '_AC_COMPILER_EXEEXT' early to learn its expansion.  Do not
dnl add the conditional right here, as _AC_COMPILER_EXEEXT may be further
dnl mangled by Autoconf and run in a shell conditional statement.
m4_define([_AC_COMPILER_EXEEXT],
m4_defn([_AC_COMPILER_EXEEXT])[m4_provide([_AM_COMPILER_EXEEXT])])

# When config.status generates a header, we must update the stamp-h file.
# This file resides in the same directory as the config header
# that is generated.  The stamp files are numbered to have different names.

# Autoconf calls _AC_AM_CONFIG_HEADER_HOOK (when defined) in the
# loop where config.status creates the headers, so we can generate
# our stamp files there.
AC_DEFUN([_AC_AM_CONFIG_HEADER_HOOK],
[# Compute $1's index in $config_headers.
_am_arg=$1
_am_stamp_count=1
for _am_header in $config_headers :; do
  case $_am_header in
    $_am_arg | $_am_arg:* )
      break ;;
    * )
      _am_stamp_count=`expr $_am_stamp_count + 1` ;;
  esac
done
echo "timestamp for $_am_arg" >`AS_DIRNAME(["$_am_arg"])`/stamp-h[]$_am_stamp_count])

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_SH
# ------------------
# Define $install_sh.
AC_DEFUN([AM_PROG_INSTALL_SH],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
if test x"${install_sh+set}" != xset; then
  case $am_aux_dir in
  *\ * | *\	*)
    install_sh="\${SHELL} '$am_aux_dir/install-sh'" ;;
  *)
    install_sh="\${SHELL} $am_aux_dir/install-sh"
  esac
fi
AC_SUBST([install_sh])])

# Copyright (C) 2003-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Check whether the underlying file-system supports filenames
# with a leading dot.  For instance MS-DOS doesn't.
AC_DEFUN([AM_SET_LEADING_DOT],
[rm -rf .tst 2>/dev/null
mkdir .tst 2>/dev/null
if test -d .tst; then
  am__leading_dot=.
else
  am__leading_dot=_
fi
rmdir .tst 2>/dev/null
AC_SUBST([am__leading_dot])])

# Check to see how 'make' treats includes.	            -*- Autoconf -*-

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_MAKE_INCLUDE()
# -----------------
# Check whether make has an 'include' directive that can support all
# the idioms we need for our automatic dependency tracking code.
AC_DEFUN([AM_MAKE_INCLUDE],
[AC_MSG_CHECKING([whether ${MAKE-make} supports the include directive])
cat > confinc.mk << 'END'
am__doit:
	@echo this is the am__doit target >confinc.out
.PHONY: am__doit
END
am__include="#"
am__quote=
# BSD make does it like this.
echo '.include "confinc.mk" # ignored' > confmf.BSD
# Other make implementations (GNU, Solaris 10, AIX) do it like this.
echo 'include confinc.mk # ignored' > confmf.GNU
_am_result=no
for s in GNU BSD; do
  AM_RUN_LOG([${MAKE-make} -f confmf.$s && cat confinc.out])
  AS_CASE([$?:`cat confinc.out 2>/dev/null`],
      ['0:this is the am__doit target'],
      [AS_CASE([$s],
          [BSD], [am__include='.include' am__quote='"'],
          [am__include='include' am__quote=''])])
  if test "$am__include" != "#"; then
    _am_result="yes ($s style)"
    break
  fi
done
rm -f confinc.* confmf.*
AC_MSG_RESULT([${_am_result}])
AC_SUBST([am__include])])
AC_SUBST([am__quote])])

# Fake the existence of programs that GNU maintainers use.  -*- Autoconf -*-

# Copyright (C) 1997-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_MISSING_PROG(NAME, PROGRAM)
# ------------------------------
AC_DEFUN([AM_MISSING_PROG],
[AC_REQUIRE([AM_MISSING_HAS_RUN])
$1=${$1-"${am_missing_run}$2"}
AC_SUBST($1)])

# AM_MISSING_HAS_RUN
# ------------------
# Define MISSING if not defined so far and test if it is modern enough.
# If it is, set am_missing_run to use it, otherwise, to nothing.
AC_DEFUN([AM_MISSING_HAS_RUN],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
AC_REQUIRE_AUX_FILE([missing])dnl
if test x"${MISSING+set}" != xset; then
  case $am_aux_dir in
  *\ * | *\	*)
    MISSING="\${SHELL} \"$am_aux_dir/missing\"" ;;
  *)
    MISSING="\${SHELL} $am_aux_dir/missing" ;;
  esac
fi
# Use eval to expand $SHELL
if eval "$MISSING --is-lightweight"; then
  am_missing_run="$MISSING "
else
  am_missing_run=
  AC_MSG_WARN(['missing' script is too old or missing])
fi
])

# Helper functions for option handling.                     -*- Autoconf -*-

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_MANGLE_OPTION(NAME)
# -----------------------
AC_DEFUN([_AM_MANGLE_OPTION],
[[_AM_OPTION_]m4_bpatsubst($1, [[^a-zA-Z0-9_]], [_])])

# _AM_SET_OPTION(NAME)
# --------------------
# Set option NAME.  Presently that only means defining a flag for this option.
AC_DEFUN([_AM_SET_OPTION],
[m4_define(_AM_MANGLE_OPTION([$1]), [1])])

# _AM_SET_OPTIONS(OPTIONS)
# ------------------------
# OPTIONS is a space-separated list of Automake options.
AC_DEFUN([_AM_SET_OPTIONS],
[m4_foreach_w([_AM_Option], [$1], [_AM_SET_OPTION(_AM_Option)])])

# _AM_IF_OPTION(OPTION, IF-SET, [IF-NOT-SET])
# -------------------------------------------
# Execute IF-SET if OPTION is set, IF-NOT-SET otherwise.
AC_DEFUN([_AM_IF_OPTION],
[m4_ifset(_AM_MANGLE_OPTION([$1]), [$2], [$3])])

# Copyright (C) 1999-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_PROG_CC_C_O
# ---------------
# Like AC_PROG_CC_C_O, but changed for automake.  We rewrite AC_PROG_CC
# to automatically call this.
AC_DEFUN([_AM_PROG_CC_C_O],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
AC_REQUIRE_AUX_FILE([compile])dnl
AC_LANG_PUSH([C])dnl
AC_CACHE_CHECK(
  [whether $CC understands -c and -o together],
  [am_cv_prog_cc_c_o],
  [AC_LANG_CONFTEST([AC_LANG_PROGRAM([])])
  # Make sure it works both with $CC and with simple cc.
  # Following AC_PROG_CC_C_O, we do the test twice because some
  # compilers refuse to overwrite an existing .o file with -o,
  # though they will create one.
  am_cv_prog_cc_c_o=yes
  for am_i in 1 2; do
    if AM_RUN_LOG([$CC -c conftest.$ac_ext -o conftest2.$ac_objext]) \
         && test -f conftest2.$ac_objext; then
      : OK
    else
      am_cv_prog_cc_c_o=no
      break
    fi
  done
  rm -f core conftest*
  unset am_i])
if test "$am_cv_prog_cc_c_o" != yes; then
   # Losing compiler, so override with the script.
   # FIXME: It is wrong to rewrite CC.
   # But if we don't then we get into trouble of one sort or another.
   # A longer-term fix would be to have automake use am__CC in this case,
   # and then we could set am__CC="\$(top_srcdir)/compile \$(CC)"
   CC="$am_aux_dir/compile $CC"
fi
AC_LANG_POP([C])])

# For backward compatibility.
AC_DEFUN_ONCE([AM_PROG_CC_C_O], [AC_REQUIRE([AC_PROG_CC])])

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_RUN_LOG(COMMAND)
# -------------------
# Run COMMAND, save the exit status in ac_status, and log it.
# (This has been adapted from Autoconf's _AC_RUN_LOG macro.)
AC_DEFUN([AM_RUN_LOG],
[{ echo "$as_me:$LINENO: $1" >&AS_MESSAGE_LOG_FD
   ($1) >&AS_MESSAGE_LOG_FD 2>&AS_MESSAGE_LOG_FD
   ac_status=$?
   echo "$as_me:$LINENO: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   (exit $ac_status); }])

# Check to make sure that the build environment is sane.    -*- Autoconf -*-

# Copyright (C) 1996-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_SANITY_CHECK
# ---------------
AC_DEFUN([AM_SANITY_CHECK],
[AC_MSG_CHECKING([whether build environment is sane])
# Reject unsafe characters in $srcdir or the absolute working directory
# name.  Accept space and tab only in the latter.
am_lf='
'
case `pwd` in
  *[[\\\"\#\$\&\'\`$am_lf]]*)
    AC_MSG_ERROR([unsafe absolute working directory name]);;
esac
case $srcdir in
  *[[\\\"\#\$\&\'\`$am_lf\ \	]]*)
    AC_MSG_ERROR([unsafe srcdir value: '$srcdir']);;
esac

AC_MSG_RESULT([yes])
])

# Copyright (C) 2009-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_SILENT_RULES([DEFAULT])
# --------------------------
# Enable less verbose build rules; with the default set to DEFAULT
# ("yes" being less verbose, "no" or empty being verbose).
AC_DEFUN([AM_SILENT_RULES],
[AC_ARG_ENABLE([silent-rules], [dnl
AS_HELP_STRING(
  [--enable-silent-rules],
  [less verbose build output (undo: "make V=1")])
AS_HELP_STRING(
  [--disable-silent-rules],
  [verbose build output (undo: "make V=0")])dnl
])
case $enable_silent_rules in @%:@ (((
  yes) AM_DEFAULT_VERBOSITY=0;;
   no) AM_DEFAULT_VERBOSITY=1;;
    *) AM_DEFAULT_VERBOSITY=m4_if([$1], [yes], [0], [1]);;
esac
dnl
dnl A few 'make' implementations (e.g., NonStop OS and NextStep)
dnl do not support nested variable expansions.
dnl See automake bug#9928 and bug#10237.
am_make=${MAKE-make}
AC_CACHE_CHECK([whether $am_make supports nested variables],
   [am_cv_make_support_nested_variables],
   [if AS_ECHO([['TRUE=$(BAR$(V))
BAR0=false
BAR1=true
V=1
am__doit:
	@$(TRUE)
.PHONY: am__doit']]) | $am_make -f - >/dev/null 2>&1; then
  am_cv_make_support_nested_variables=yes
else
  am_cv_make_support_nested_variables=no
fi])
if test $am_cv_make_support_nested_variables = yes; then
  dnl Using '$V' instead of '$(V)' breaks IRIX make.
  AM_V='$(V)'
  AM_DEFAULT_V='$(AM_DEFAULT_VERBOSITY)'
else
  AM_V=$AM_DEFAULT_VERBOSITY
  AM_DEFAULT_V=$AM_DEFAULT_VERBOSITY
fi
AC_SUBST([AM_V])dnl
AM_SUBST_NOTMAKE([AM_V])dnl
AC_SUBST([AM_DEFAULT_V])dnl
AM_SUBST_NOTMAKE([AM_DEFAULT_V])dnl
AC_SUBST([AM_DEFAULT_VERBOSITY])dnl
AM_BACKSLASH='\'
AC_SUBST([AM_BACKSLASH])dnl
_AM_SUBST_NOTMAKE([AM_BACKSLASH])dnl
])

# Copyright (C) 2001-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_STRIP
# ---------------------
# One issue with vendor 'install' (even GNU) is that you can't
# specify the program used to strip binaries.  This is especially
# annoying in cross-compiling environments, where the build's strip
# is unlikely to handle the host's binaries.
# Fortunately install-sh will honor a STRIPPROG variable, so we
# always use install-sh in "make install-strip", and initialize
# STRIPPROG with the value of the STRIP variable (set by the user).
AC_DEFUN([AM_PROG_INSTALL_STRIP],
[AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
# Installed binaries are usually stripped using 'strip' when the user
# run "make install-strip".  However 'strip' might not be the right
# tool to use in cross-compilation environments, therefore Automake
# will honor the 'STRIP' environment variable to overrule this program.
dnl Don't test for $cross_compiling = yes, because it might be 'maybe'.
if test "$cross_compiling" != no; then
  AC_CHECK_TOOL([STRIP], [strip], :)
fi
INSTALL_STRIP_PROGRAM="\$(install_sh) -c -s"
AC_SUBST([INSTALL_STRIP_PROGRAM])])

# Copyright (C) 2006-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_SUBST_NOTMAKE(VARIABLE)
# ---------------------------
# Prevent Automake from outputting VARIABLE = @VARIABLE@ in Makefile.in.
# This macro is traced by Automake.
AC_DEFUN([_AM_SUBST_NOTMAKE])

# AM_SUBST_NOTMAKE(VARIABLE)
# --------------------------
# Public sister of _AM_SUBST_NOTMAKE.
AC_DEFUN([AM_SUBST_NOTMAKE], [_AM_SUBST_NOTMAKE($@)])

# Check how to create a tarball.                            -*- Autoconf -*-

# Copyright (C) 2004-2018 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_PROG_TAR(FORMAT)
# --------------------
# Check how to create a tarball in format FORMAT.
# FORMAT should be one of 'v7', 'ustar', or 'pax'.
#
# Substitute a variable $(am__tar) that is a command
# writing to stdout a FORMAT-tarball containing the directory
# $tardir.
#     tardir=directory && $(am__tar) > result.tar
#
# Substitute a variable $(am__untar) that extract such
# a tarball read from stdin.
#     $(am__untar) < result.tar
#
AC_DEFUN([_AM_PROG_TAR],
[# Always define AMTAR for backward compatibility.  Yes, it's still used
# in the wild :-(  We should find a proper way to deprecate it ...
AC_SUBST([AMTAR], ['$${TAR-tar}'])

# We'll loop over all known methods to create a tar archive until one works.
_am_tools='gnutar m4_if([$1], [ustar], [plaintar]) pax cpio none'

m4_if([$1], [v7],
  [am__tar='$${TAR-tar} chof - "$$tardir"' am__untar='$${TAR-tar} xf -'],

  [m4_case([$1],
    [ustar],
     [# The POSIX 1988 'ustar' format is defined with fixed-size fields.
      # There is notably a 21 bits limit for the UID and the GID.  In fact,
      # the 'pax' utility can hang on bigger UID/GID (see automake bug#8343
      # and bug#13588).
      am_max_uid=2097151 # 2^21 - 1
      am_max_gid=$am_max_uid
      # The $UID and $GID variables are not portable, so we need to resort
      # to the POSIX-mandated id(1) utility.  Errors in the 'id' calls
      # below are definitely unexpected, so allow the users to see them
      # (that is, avoid stderr redirection).
      am_uid=`id -u || echo unknown`
      am_gid=`id -g || echo unknown`
      AC_MSG_CHECKING([whether UID '$am_uid' is supported by ustar format])
      if test $am_uid -le $am_max_uid; then
         AC_MSG_RESULT([yes])
      else
         AC_MSG_RESULT([no])
         _am_tools=none
      fi
      AC_MSG_CHECKING([whether GID '$am_gid' is supported by ustar format])
      if test $am_gid -le $am_max_gid; then
         AC_MSG_RESULT([yes])
      else
        AC_MSG_RESULT([no])
        _am_tools=none
      fi],

  [pax],
    [],

  [m4_fatal([Unknown tar format])])

  AC_MSG_CHECKING([how to create a $1 tar archive])

  # Go ahead even if we have the value already cached.  We do so because we
  # need to set the values for the 'am__tar' and 'am__untar' variables.
  _am_tools=${am_cv_prog_tar_$1-$_am_tools}

  for _am_tool in $_am_tools; do
    case $_am_tool in
    gnutar)
      for _am_tar in tar gnutar gtar; do
        AM_RUN_LOG([$_am_tar --version]) && break
      done
      am__tar="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$$tardir"'
      am__tar_="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$tardir"'
      am__untar="$_am_tar -xf -"
      ;;
    plaintar)
      # Must skip GNU tar: if it does not support --format= it doesn't create
      # ustar tarball either.
      (tar --version) >/dev/null 2>&1 && continue
      am__tar='tar chf - "$$tardir"'
      am__tar_='tar chf - "$tardir"'
      am__untar='tar xf -'
      ;;
    pax)
      am__tar='pax -L -x $1 -w "$$tardir"'
      am__tar_='pax -L -x $1 -w "$tardir"'
      am__untar='pax -r'
      ;;
    cpio)
      am__tar='find "$$tardir" -print | cpio -o -H $1 -L'
      am__tar_='find "$tardir" -print | cpio -o -H $1 -L'
      am__untar='cpio -i -H $1 -d'
      ;;
    none)
      am__tar=false
      am__tar_=false
      am__untar=false
      ;;
    esac

    # If the value was cached, stop now.  We just wanted to have am__tar
    # and am__untar set.
    test -n "${am_cv_prog_tar_$1}" && break

    # tar/untar a dummy directory, and stop if the command works.
    rm -rf conftest.dir
    mkdir conftest.dir
    echo GrepMe > conftest.dir/file
    AM_RUN_LOG([tardir=conftest.dir && eval $am__tar_ >conftest.tar])
    rm -rf conftest.dir
    if test -s conftest.tar; then
      AM_RUN_LOG([$am__untar <conftest.tar])
      AM_RUN_LOG([cat conftest.dir/file])
      grep GrepMe conftest.dir/file >/dev/null 2>&1 && break
    fi
  done
  rm -rf conftest.dir

  AC_CACHE_VAL([am_cv_prog_tar_$1], [am_cv_prog_tar_$1=$_am_tool])
  AC_MSG_RESULT([$am_cv_prog_tar_$1])])

AC_SUBST([am__tar])
AC_SUBST([am__untar])
]) # _AM_PROG_TAR

# gettext.m4 serial 70 (gettext-0.20)
dnl Copyright (C) 1995-2014, 2016, 2018 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2006, 2008-2010.

dnl Macro to add for using GNU gettext.

dnl Usage: AM_GNU_GETTEXT([INTLSYMBOL], [NEEDSYMBOL], [INTLDIR]).
dnl INTLSYMBOL must be one of 'external', 'use-libtool'.
dnl    INTLSYMBOL should be 'external' for packages other than GNU gettext, and
dnl    'use-libtool' for the packages 'gettext-runtime' and 'gettext-tools'.
dnl    If INTLSYMBOL is 'use-libtool', then a libtool library
dnl    $(top_builddir)/intl/libintl.la will be created (shared and/or static,
dnl    depending on --{enable,disable}-{shared,static} and on the presence of
dnl    AM-DISABLE-SHARED).
dnl If NEEDSYMBOL is specified and is 'need-ngettext', then GNU gettext
dnl    implementations (in libc or libintl) without the ngettext() function
dnl    will be ignored.  If NEEDSYMBOL is specified and is
dnl    'need-formatstring-macros', then GNU gettext implementations that don't
dnl    support the ISO C 99 <inttypes.h> formatstring macros will be ignored.
dnl INTLDIR is used to find the intl libraries.  If empty,
dnl    the value '$(top_builddir)/intl/' is used.
dnl
dnl The result of the configuration is one of three cases:
dnl 1) GNU gettext, as included in the intl subdirectory, will be compiled
dnl    and used.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 2) GNU gettext has been found in the system's C library.
dnl    Catalog format: GNU --> install in $(datadir)
dnl    Catalog extension: .mo after installation, .gmo in source tree
dnl 3) No internationalization, always use English msgid.
dnl    Catalog format: none
dnl    Catalog extension: none
dnl If INTLSYMBOL is 'external', only cases 2 and 3 can occur.
dnl The use of .gmo is historical (it was needed to avoid overwriting the
dnl GNU format catalogs when building on a platform with an X/Open gettext),
dnl but we keep it in order not to force irrelevant filename changes on the
dnl maintainers.
dnl
AC_DEFUN([AM_GNU_GETTEXT],
[
  dnl Argument checking.
  ifelse([$1], [], , [ifelse([$1], [external], , [ifelse([$1], [use-libtool], ,
    [errprint([ERROR: invalid first argument to AM_GNU_GETTEXT
])])])])
  ifelse(ifelse([$1], [], [old])[]ifelse([$1], [no-libtool], [old]), [old],
    [errprint([ERROR: Use of AM_GNU_GETTEXT without [external] argument is no longer supported.
])])
  ifelse([$2], [], , [ifelse([$2], [need-ngettext], , [ifelse([$2], [need-formatstring-macros], ,
    [errprint([ERROR: invalid second argument to AM_GNU_GETTEXT
])])])])
  define([gt_included_intl],
    ifelse([$1], [external], [no], [yes]))
  gt_NEEDS_INIT
  AM_GNU_GETTEXT_NEED([$2])

  AC_REQUIRE([AM_PO_SUBDIRS])dnl
  ifelse(gt_included_intl, yes, [
    AC_REQUIRE([AM_INTL_SUBDIR])dnl
  ])

  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Sometimes libintl requires libiconv, so first search for libiconv.
  dnl Ideally we would do this search only after the
  dnl      if test "$USE_NLS" = "yes"; then
  dnl        if { eval "gt_val=\$$gt_func_gnugettext_libc"; test "$gt_val" != "yes"; }; then
  dnl tests. But if configure.in invokes AM_ICONV after AM_GNU_GETTEXT
  dnl the configure script would need to contain the same shell code
  dnl again, outside any 'if'. There are two solutions:
  dnl - Invoke AM_ICONV_LINKFLAGS_BODY here, outside any 'if'.
  dnl - Control the expansions in more detail using AC_PROVIDE_IFELSE.
  dnl Since AC_PROVIDE_IFELSE is not documented, we avoid it.
  ifelse(gt_included_intl, yes, , [
    AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])
  ])

  dnl Sometimes, on Mac OS X, libintl requires linking with CoreFoundation.
  gt_INTL_MACOSX

  dnl Set USE_NLS.
  AC_REQUIRE([AM_NLS])

  ifelse(gt_included_intl, yes, [
    BUILD_INCLUDED_LIBINTL=no
    USE_INCLUDED_LIBINTL=no
  ])
  LIBINTL=
  LTLIBINTL=
  POSUB=

  dnl Add a version number to the cache macros.
  case " $gt_needs " in
    *" need-formatstring-macros "*) gt_api_version=3 ;;
    *" need-ngettext "*) gt_api_version=2 ;;
    *) gt_api_version=1 ;;
  esac
  gt_func_gnugettext_libc="gt_cv_func_gnugettext${gt_api_version}_libc"
  gt_func_gnugettext_libintl="gt_cv_func_gnugettext${gt_api_version}_libintl"

  dnl If we use NLS figure out what method
  if test "$USE_NLS" = "yes"; then
    gt_use_preinstalled_gnugettext=no
    ifelse(gt_included_intl, yes, [
      AC_MSG_CHECKING([whether included gettext is requested])
      AC_ARG_WITH([included-gettext],
        [  --with-included-gettext use the GNU gettext library included here],
        nls_cv_force_use_gnu_gettext=$withval,
        nls_cv_force_use_gnu_gettext=no)
      AC_MSG_RESULT([$nls_cv_force_use_gnu_gettext])

      nls_cv_use_gnu_gettext="$nls_cv_force_use_gnu_gettext"
      if test "$nls_cv_force_use_gnu_gettext" != "yes"; then
    ])
        dnl User does not insist on using GNU NLS library.  Figure out what
        dnl to use.  If GNU gettext is available we use this.  Else we have
        dnl to fall back to GNU NLS library.

        if test $gt_api_version -ge 3; then
          gt_revision_test_code='
#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
#define __GNU_GETTEXT_SUPPORTED_REVISION(major) ((major) == 0 ? 0 : -1)
#endif
changequote(,)dnl
typedef int array [2 * (__GNU_GETTEXT_SUPPORTED_REVISION(0) >= 1) - 1];
changequote([,])dnl
'
        else
          gt_revision_test_code=
        fi
        if test $gt_api_version -ge 2; then
          gt_expression_test_code=' + * ngettext ("", "", 0)'
        else
          gt_expression_test_code=
        fi

        AC_CACHE_CHECK([for GNU gettext in libc], [$gt_func_gnugettext_libc],
         [AC_LINK_IFELSE(
            [AC_LANG_PROGRAM(
               [[
#include <libintl.h>
#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
extern int _nl_msg_cat_cntr;
extern int *_nl_domain_bindings;
#define __GNU_GETTEXT_SYMBOL_EXPRESSION (_nl_msg_cat_cntr + *_nl_domain_bindings)
#else
#define __GNU_GETTEXT_SYMBOL_EXPRESSION 0
#endif
$gt_revision_test_code
               ]],
               [[
bindtextdomain ("", "");
return * gettext ("")$gt_expression_test_code + __GNU_GETTEXT_SYMBOL_EXPRESSION
               ]])],
            [eval "$gt_func_gnugettext_libc=yes"],
            [eval "$gt_func_gnugettext_libc=no"])])

        if { eval "gt_val=\$$gt_func_gnugettext_libc"; test "$gt_val" != "yes"; }; then
          dnl Sometimes libintl requires libiconv, so first search for libiconv.
          ifelse(gt_included_intl, yes, , [
            AM_ICONV_LINK
          ])
          dnl Search for libintl and define LIBINTL, LTLIBINTL and INCINTL
          dnl accordingly. Don't use AC_LIB_LINKFLAGS_BODY([intl],[iconv])
          dnl because that would add "-liconv" to LIBINTL and LTLIBINTL
          dnl even if libiconv doesn't exist.
          AC_LIB_LINKFLAGS_BODY([intl])
          AC_CACHE_CHECK([for GNU gettext in libintl],
            [$gt_func_gnugettext_libintl],
           [gt_save_CPPFLAGS="$CPPFLAGS"
            CPPFLAGS="$CPPFLAGS $INCINTL"
            gt_save_LIBS="$LIBS"
            LIBS="$LIBS $LIBINTL"
            dnl Now see whether libintl exists and does not depend on libiconv.
            AC_LINK_IFELSE(
              [AC_LANG_PROGRAM(
                 [[
#include <libintl.h>
#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias (const char *);
#define __GNU_GETTEXT_SYMBOL_EXPRESSION (_nl_msg_cat_cntr + *_nl_expand_alias (""))
#else
#define __GNU_GETTEXT_SYMBOL_EXPRESSION 0
#endif
$gt_revision_test_code
                 ]],
                 [[
bindtextdomain ("", "");
return * gettext ("")$gt_expression_test_code + __GNU_GETTEXT_SYMBOL_EXPRESSION
                 ]])],
              [eval "$gt_func_gnugettext_libintl=yes"],
              [eval "$gt_func_gnugettext_libintl=no"])
            dnl Now see whether libintl exists and depends on libiconv.
            if { eval "gt_val=\$$gt_func_gnugettext_libintl"; test "$gt_val" != yes; } && test -n "$LIBICONV"; then
              LIBS="$LIBS $LIBICONV"
              AC_LINK_IFELSE(
                [AC_LANG_PROGRAM(
                   [[
#include <libintl.h>
#ifndef __GNU_GETTEXT_SUPPORTED_REVISION
extern int _nl_msg_cat_cntr;
extern
#ifdef __cplusplus
"C"
#endif
const char *_nl_expand_alias (const char *);
#define __GNU_GETTEXT_SYMBOL_EXPRESSION (_nl_msg_cat_cntr + *_nl_expand_alias (""))
#else
#define __GNU_GETTEXT_SYMBOL_EXPRESSION 0
#endif
$gt_revision_test_code
                   ]],
                   [[
bindtextdomain ("", "");
return * gettext ("")$gt_expression_test_code + __GNU_GETTEXT_SYMBOL_EXPRESSION
                   ]])],
                [LIBINTL="$LIBINTL $LIBICONV"
                 LTLIBINTL="$LTLIBINTL $LTLIBICONV"
                 eval "$gt_func_gnugettext_libintl=yes"
                ])
            fi
            CPPFLAGS="$gt_save_CPPFLAGS"
            LIBS="$gt_save_LIBS"])
        fi

        dnl If an already present or preinstalled GNU gettext() is found,
        dnl use it.  But if this macro is used in GNU gettext, and GNU
        dnl gettext is already preinstalled in libintl, we update this
        dnl libintl.  (Cf. the install rule in intl/Makefile.in.)
        if { eval "gt_val=\$$gt_func_gnugettext_libc"; test "$gt_val" = "yes"; } \
           || { { eval "gt_val=\$$gt_func_gnugettext_libintl"; test "$gt_val" = "yes"; } \
                && test "$PACKAGE" != gettext-runtime \
                && test "$PACKAGE" != gettext-tools; }; then
          gt_use_preinstalled_gnugettext=yes
        else
          dnl Reset the values set by searching for libintl.
          LIBINTL=
          LTLIBINTL=
          INCINTL=
        fi

    ifelse(gt_included_intl, yes, [
        if test "$gt_use_preinstalled_gnugettext" != "yes"; then
          dnl GNU gettext is not found in the C library.
          dnl Fall back on included GNU gettext library.
          nls_cv_use_gnu_gettext=yes
        fi
      fi

      if test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions used to generate GNU NLS library.
        BUILD_INCLUDED_LIBINTL=yes
        USE_INCLUDED_LIBINTL=yes
        LIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.la $LIBICONV $LIBTHREAD"
        LTLIBINTL="ifelse([$3],[],\${top_builddir}/intl,[$3])/libintl.la $LTLIBICONV $LTLIBTHREAD"
        LIBS=`echo " $LIBS " | sed -e 's/ -lintl / /' -e 's/^ //' -e 's/ $//'`
      fi

      CATOBJEXT=
      if test "$gt_use_preinstalled_gnugettext" = "yes" \
         || test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Mark actions to use GNU gettext tools.
        CATOBJEXT=.gmo
      fi
    ])

    if test -n "$INTL_MACOSX_LIBS"; then
      if test "$gt_use_preinstalled_gnugettext" = "yes" \
         || test "$nls_cv_use_gnu_gettext" = "yes"; then
        dnl Some extra flags are needed during linking.
        LIBINTL="$LIBINTL $INTL_MACOSX_LIBS"
        LTLIBINTL="$LTLIBINTL $INTL_MACOSX_LIBS"
      fi
    fi

    if test "$gt_use_preinstalled_gnugettext" = "yes" \
       || test "$nls_cv_use_gnu_gettext" = "yes"; then
      AC_DEFINE([ENABLE_NLS], [1],
        [Define to 1 if translation of program messages to the user's native language
   is requested.])
    else
      USE_NLS=no
    fi
  fi

  AC_MSG_CHECKING([whether to use NLS])
  AC_MSG_RESULT([$USE_NLS])
  if test "$USE_NLS" = "yes"; then
    AC_MSG_CHECKING([where the gettext function comes from])
    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if { eval "gt_val=\$$gt_func_gnugettext_libintl"; test "$gt_val" = "yes"; }; then
        gt_source="external libintl"
      else
        gt_source="libc"
      fi
    else
      gt_source="included intl directory"
    fi
    AC_MSG_RESULT([$gt_source])
  fi

  if test "$USE_NLS" = "yes"; then

    if test "$gt_use_preinstalled_gnugettext" = "yes"; then
      if { eval "gt_val=\$$gt_func_gnugettext_libintl"; test "$gt_val" = "yes"; }; then
        AC_MSG_CHECKING([how to link with libintl])
        AC_MSG_RESULT([$LIBINTL])
        AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCINTL])
      fi

      dnl For backward compatibility. Some packages may be using this.
      AC_DEFINE([HAVE_GETTEXT], [1],
       [Define if the GNU gettext() function is already present or preinstalled.])
      AC_DEFINE([HAVE_DCGETTEXT], [1],
       [Define if the GNU dcgettext() function is already present or preinstalled.])
    fi

    dnl We need to process the po/ directory.
    POSUB=po
  fi

  ifelse(gt_included_intl, yes, [
    dnl In GNU gettext we have to set BUILD_INCLUDED_LIBINTL to 'yes'
    dnl because some of the testsuite requires it.
    BUILD_INCLUDED_LIBINTL=yes

    dnl Make all variables we use known to autoconf.
    AC_SUBST([BUILD_INCLUDED_LIBINTL])
    AC_SUBST([USE_INCLUDED_LIBINTL])
    AC_SUBST([CATOBJEXT])
  ])

  dnl For backward compatibility. Some Makefiles may be using this.
  INTLLIBS="$LIBINTL"
  AC_SUBST([INTLLIBS])

  dnl Make all documented variables known to autoconf.
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  AC_SUBST([POSUB])
])


dnl gt_NEEDS_INIT ensures that the gt_needs variable is initialized.
m4_define([gt_NEEDS_INIT],
[
  m4_divert_text([DEFAULTS], [gt_needs=])
  m4_define([gt_NEEDS_INIT], [])
])


dnl Usage: AM_GNU_GETTEXT_NEED([NEEDSYMBOL])
AC_DEFUN([AM_GNU_GETTEXT_NEED],
[
  m4_divert_text([INIT_PREPARE], [gt_needs="$gt_needs $1"])
])


dnl Usage: AM_GNU_GETTEXT_VERSION([gettext-version])
AC_DEFUN([AM_GNU_GETTEXT_VERSION], [])


dnl Usage: AM_GNU_GETTEXT_REQUIRE_VERSION([gettext-version])
AC_DEFUN([AM_GNU_GETTEXT_REQUIRE_VERSION], [])

# host-cpu-c-abi.m4 serial 11
dnl Copyright (C) 2002-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible and Sam Steingold.

dnl Sets the HOST_CPU variable to the canonical name of the CPU.
dnl Sets the HOST_CPU_C_ABI variable to the canonical name of the CPU with its
dnl C language ABI (application binary interface).
dnl Also defines __${HOST_CPU}__ and __${HOST_CPU_C_ABI}__ as C macros in
dnl config.h.
dnl
dnl This canonical name can be used to select a particular assembly language
dnl source file that will interoperate with C code on the given host.
dnl
dnl For example:
dnl * 'i386' and 'sparc' are different canonical names, because code for i386
dnl   will not run on SPARC CPUs and vice versa. They have different
dnl   instruction sets.
dnl * 'sparc' and 'sparc64' are different canonical names, because code for
dnl   'sparc' and code for 'sparc64' cannot be linked together: 'sparc' code
dnl   contains 32-bit instructions, whereas 'sparc64' code contains 64-bit
dnl   instructions. A process on a SPARC CPU can be in 32-bit mode or in 64-bit
dnl   mode, but not both.
dnl * 'mips' and 'mipsn32' are different canonical names, because they use
dnl   different argument passing and return conventions for C functions, and
dnl   although the instruction set of 'mips' is a large subset of the
dnl   instruction set of 'mipsn32'.
dnl * 'mipsn32' and 'mips64' are different canonical names, because they use
dnl   different sizes for the C types like 'int' and 'void *', and although
dnl   the instruction sets of 'mipsn32' and 'mips64' are the same.
dnl * The same canonical name is used for different endiannesses. You can
dnl   determine the endianness through preprocessor symbols:
dnl   - 'arm': test __ARMEL__.
dnl   - 'mips', 'mipsn32', 'mips64': test _MIPSEB vs. _MIPSEL.
dnl   - 'powerpc64': test _BIG_ENDIAN vs. _LITTLE_ENDIAN.
dnl * The same name 'i386' is used for CPUs of type i386, i486, i586
dnl   (Pentium), AMD K7, Pentium II, Pentium IV, etc., because
dnl   - Instructions that do not exist on all of these CPUs (cmpxchg,
dnl     MMX, SSE, SSE2, 3DNow! etc.) are not frequently used. If your
dnl     assembly language source files use such instructions, you will
dnl     need to make the distinction.
dnl   - Speed of execution of the common instruction set is reasonable across
dnl     the entire family of CPUs. If you have assembly language source files
dnl     that are optimized for particular CPU types (like GNU gmp has), you
dnl     will need to make the distinction.
dnl   See <https://en.wikipedia.org/wiki/X86_instruction_listings>.
AC_DEFUN([gl_HOST_CPU_C_ABI],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_C_ASM])
  AC_CACHE_CHECK([host CPU and C ABI], [gl_cv_host_cpu_c_abi],
    [case "$host_cpu" in

changequote(,)dnl
       i[4567]86 )
changequote([,])dnl
         gl_cv_host_cpu_c_abi=i386
         ;;

       x86_64 )
         # On x86_64 systems, the C compiler may be generating code in one of
         # these ABIs:
         # - 64-bit instruction set, 64-bit pointers, 64-bit 'long': x86_64.
         # - 64-bit instruction set, 64-bit pointers, 32-bit 'long': x86_64
         #   with native Windows (mingw, MSVC).
         # - 64-bit instruction set, 32-bit pointers, 32-bit 'long': x86_64-x32.
         # - 32-bit instruction set, 32-bit pointers, 32-bit 'long': i386.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if (defined __x86_64__ || defined __amd64__ \
                     || defined _M_X64 || defined _M_AMD64)
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [AC_COMPILE_IFELSE(
              [AC_LANG_SOURCE(
                 [[#if defined __ILP32__ || defined _ILP32
                    int ok;
                   #else
                    error fail
                   #endif
                 ]])],
              [gl_cv_host_cpu_c_abi=x86_64-x32],
              [gl_cv_host_cpu_c_abi=x86_64])],
           [gl_cv_host_cpu_c_abi=i386])
         ;;

changequote(,)dnl
       alphaev[4-8] | alphaev56 | alphapca5[67] | alphaev6[78] )
changequote([,])dnl
         gl_cv_host_cpu_c_abi=alpha
         ;;

       arm* | aarch64 )
         # Assume arm with EABI.
         # On arm64 systems, the C compiler may be generating code in one of
         # these ABIs:
         # - aarch64 instruction set, 64-bit pointers, 64-bit 'long': arm64.
         # - aarch64 instruction set, 32-bit pointers, 32-bit 'long': arm64-ilp32.
         # - 32-bit instruction set, 32-bit pointers, 32-bit 'long': arm or armhf.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#ifdef __aarch64__
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [AC_COMPILE_IFELSE(
              [AC_LANG_SOURCE(
                [[#if defined __ILP32__ || defined _ILP32
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
              [gl_cv_host_cpu_c_abi=arm64-ilp32],
              [gl_cv_host_cpu_c_abi=arm64])],
           [# Don't distinguish little-endian and big-endian arm, since they
            # don't require different machine code for simple operations and
            # since the user can distinguish them through the preprocessor
            # defines __ARMEL__ vs. __ARMEB__.
            # But distinguish arm which passes floating-point arguments and
            # return values in integer registers (r0, r1, ...) - this is
            # gcc -mfloat-abi=soft or gcc -mfloat-abi=softfp - from arm which
            # passes them in float registers (s0, s1, ...) and double registers
            # (d0, d1, ...) - this is gcc -mfloat-abi=hard. GCC 4.6 or newer
            # sets the preprocessor defines __ARM_PCS (for the first case) and
            # __ARM_PCS_VFP (for the second case), but older GCC does not.
            echo 'double ddd; void func (double dd) { ddd = dd; }' > conftest.c
            # Look for a reference to the register d0 in the .s file.
            AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
            if LC_ALL=C grep 'd0,' conftest.$gl_asmext >/dev/null; then
              gl_cv_host_cpu_c_abi=armhf
            else
              gl_cv_host_cpu_c_abi=arm
            fi
            rm -f conftest*
           ])
         ;;

       hppa1.0 | hppa1.1 | hppa2.0* | hppa64 )
         # On hppa, the C compiler may be generating 32-bit code or 64-bit
         # code. In the latter case, it defines _LP64 and __LP64__.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#ifdef __LP64__
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [gl_cv_host_cpu_c_abi=hppa64],
           [gl_cv_host_cpu_c_abi=hppa])
         ;;

       ia64* )
         # On ia64 on HP-UX, the C compiler may be generating 64-bit code or
         # 32-bit code. In the latter case, it defines _ILP32.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#ifdef _ILP32
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [gl_cv_host_cpu_c_abi=ia64-ilp32],
           [gl_cv_host_cpu_c_abi=ia64])
         ;;

       mips* )
         # We should also check for (_MIPS_SZPTR == 64), but gcc keeps this
         # at 32.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined _MIPS_SZLONG && (_MIPS_SZLONG == 64)
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [gl_cv_host_cpu_c_abi=mips64],
           [# In the n32 ABI, _ABIN32 is defined, _ABIO32 is not defined (but
            # may later get defined by <sgidefs.h>), and _MIPS_SIM == _ABIN32.
            # In the 32 ABI, _ABIO32 is defined, _ABIN32 is not defined (but
            # may later get defined by <sgidefs.h>), and _MIPS_SIM == _ABIO32.
            AC_COMPILE_IFELSE(
              [AC_LANG_SOURCE(
                 [[#if (_MIPS_SIM == _ABIN32)
                    int ok;
                   #else
                    error fail
                   #endif
                 ]])],
              [gl_cv_host_cpu_c_abi=mipsn32],
              [gl_cv_host_cpu_c_abi=mips])])
         ;;

       powerpc* )
         # Different ABIs are in use on AIX vs. Mac OS X vs. Linux,*BSD.
         # No need to distinguish them here; the caller may distinguish
         # them based on the OS.
         # On powerpc64 systems, the C compiler may still be generating
         # 32-bit code. And on powerpc-ibm-aix systems, the C compiler may
         # be generating 64-bit code.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined __powerpc64__ || defined _ARCH_PPC64
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [# On powerpc64, there are two ABIs on Linux: The AIX compatible
            # one and the ELFv2 one. The latter defines _CALL_ELF=2.
            AC_COMPILE_IFELSE(
              [AC_LANG_SOURCE(
                 [[#if defined _CALL_ELF && _CALL_ELF == 2
                    int ok;
                   #else
                    error fail
                   #endif
                 ]])],
              [gl_cv_host_cpu_c_abi=powerpc64-elfv2],
              [gl_cv_host_cpu_c_abi=powerpc64])
           ],
           [gl_cv_host_cpu_c_abi=powerpc])
         ;;

       rs6000 )
         gl_cv_host_cpu_c_abi=powerpc
         ;;

       riscv32 | riscv64 )
         # There are 2 architectures (with variants): rv32* and rv64*.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if __riscv_xlen == 64
                  int ok;
                #else
                  error fail
                #endif
              ]])],
           [cpu=riscv64],
           [cpu=riscv32])
         # There are 6 ABIs: ilp32, ilp32f, ilp32d, lp64, lp64f, lp64d.
         # Size of 'long' and 'void *':
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined __LP64__
                  int ok;
                #else
                  error fail
                #endif
              ]])],
           [main_abi=lp64],
           [main_abi=ilp32])
         # Float ABIs:
         # __riscv_float_abi_double:
         #   'float' and 'double' are passed in floating-point registers.
         # __riscv_float_abi_single:
         #   'float' are passed in floating-point registers.
         # __riscv_float_abi_soft:
         #   No values are passed in floating-point registers.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined __riscv_float_abi_double
                  int ok;
                #else
                  error fail
                #endif
              ]])],
           [float_abi=d],
           [AC_COMPILE_IFELSE(
              [AC_LANG_SOURCE(
                 [[#if defined __riscv_float_abi_single
                     int ok;
                   #else
                     error fail
                   #endif
                 ]])],
              [float_abi=f],
              [float_abi=''])
           ])
         gl_cv_host_cpu_c_abi="${cpu}-${main_abi}${float_abi}"
         ;;

       s390* )
         # On s390x, the C compiler may be generating 64-bit (= s390x) code
         # or 31-bit (= s390) code.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined __LP64__ || defined __s390x__
                  int ok;
                #else
                  error fail
                #endif
              ]])],
           [gl_cv_host_cpu_c_abi=s390x],
           [gl_cv_host_cpu_c_abi=s390])
         ;;

       sparc | sparc64 )
         # UltraSPARCs running Linux have `uname -m` = "sparc64", but the
         # C compiler still generates 32-bit code.
         AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#if defined __sparcv9 || defined __arch64__
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [gl_cv_host_cpu_c_abi=sparc64],
           [gl_cv_host_cpu_c_abi=sparc])
         ;;

       *)
         gl_cv_host_cpu_c_abi="$host_cpu"
         ;;
     esac
    ])

  dnl In most cases, $HOST_CPU and $HOST_CPU_C_ABI are the same.
  HOST_CPU=`echo "$gl_cv_host_cpu_c_abi" | sed -e 's/-.*//'`
  HOST_CPU_C_ABI="$gl_cv_host_cpu_c_abi"
  AC_SUBST([HOST_CPU])
  AC_SUBST([HOST_CPU_C_ABI])

  # This was
  #   AC_DEFINE_UNQUOTED([__${HOST_CPU}__])
  #   AC_DEFINE_UNQUOTED([__${HOST_CPU_C_ABI}__])
  # earlier, but KAI C++ 3.2d doesn't like this.
  sed -e 's/-/_/g' >> confdefs.h <<EOF
#ifndef __${HOST_CPU}__
#define __${HOST_CPU}__ 1
#endif
#ifndef __${HOST_CPU_C_ABI}__
#define __${HOST_CPU_C_ABI}__ 1
#endif
EOF
  AH_TOP([/* CPU and C ABI indicator */
#ifndef __i386__
#undef __i386__
#endif
#ifndef __x86_64_x32__
#undef __x86_64_x32__
#endif
#ifndef __x86_64__
#undef __x86_64__
#endif
#ifndef __alpha__
#undef __alpha__
#endif
#ifndef __arm__
#undef __arm__
#endif
#ifndef __armhf__
#undef __armhf__
#endif
#ifndef __arm64_ilp32__
#undef __arm64_ilp32__
#endif
#ifndef __arm64__
#undef __arm64__
#endif
#ifndef __hppa__
#undef __hppa__
#endif
#ifndef __hppa64__
#undef __hppa64__
#endif
#ifndef __ia64_ilp32__
#undef __ia64_ilp32__
#endif
#ifndef __ia64__
#undef __ia64__
#endif
#ifndef __m68k__
#undef __m68k__
#endif
#ifndef __mips__
#undef __mips__
#endif
#ifndef __mipsn32__
#undef __mipsn32__
#endif
#ifndef __mips64__
#undef __mips64__
#endif
#ifndef __powerpc__
#undef __powerpc__
#endif
#ifndef __powerpc64__
#undef __powerpc64__
#endif
#ifndef __powerpc64_elfv2__
#undef __powerpc64_elfv2__
#endif
#ifndef __riscv32__
#undef __riscv32__
#endif
#ifndef __riscv64__
#undef __riscv64__
#endif
#ifndef __riscv32_ilp32__
#undef __riscv32_ilp32__
#endif
#ifndef __riscv32_ilp32f__
#undef __riscv32_ilp32f__
#endif
#ifndef __riscv32_ilp32d__
#undef __riscv32_ilp32d__
#endif
#ifndef __riscv64_ilp32__
#undef __riscv64_ilp32__
#endif
#ifndef __riscv64_ilp32f__
#undef __riscv64_ilp32f__
#endif
#ifndef __riscv64_ilp32d__
#undef __riscv64_ilp32d__
#endif
#ifndef __riscv64_lp64__
#undef __riscv64_lp64__
#endif
#ifndef __riscv64_lp64f__
#undef __riscv64_lp64f__
#endif
#ifndef __riscv64_lp64d__
#undef __riscv64_lp64d__
#endif
#ifndef __s390__
#undef __s390__
#endif
#ifndef __s390x__
#undef __s390x__
#endif
#ifndef __sh__
#undef __sh__
#endif
#ifndef __sparc__
#undef __sparc__
#endif
#ifndef __sparc64__
#undef __sparc64__
#endif
])

])


dnl Sets the HOST_CPU_C_ABI_32BIT variable to 'yes' if the C language ABI
dnl (application binary interface) is a 32-bit one, or to 'no' otherwise.
dnl This is a simplified variant of gl_HOST_CPU_C_ABI.
AC_DEFUN([gl_HOST_CPU_C_ABI_32BIT],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([32-bit host C ABI], [gl_cv_host_cpu_c_abi_32bit],
    [if test -n "$gl_cv_host_cpu_c_abi"; then
       case "$gl_cv_host_cpu_c_abi" in
         i386 | x86_64-x32 | arm | armhf | arm64-ilp32 | hppa | ia64-ilp32 | mips | mipsn32 | powerpc | riscv*-ilp32* | s390 | sparc)
           gl_cv_host_cpu_c_abi_32bit=yes ;;
         *)
           gl_cv_host_cpu_c_abi_32bit=no ;;
       esac
     else
       case "$host_cpu" in

changequote(,)dnl
         i[4567]86 )
changequote([,])dnl
           gl_cv_host_cpu_c_abi_32bit=yes
           ;;

         x86_64 )
           # On x86_64 systems, the C compiler may be generating code in one of
           # these ABIs:
           # - 64-bit instruction set, 64-bit pointers, 64-bit 'long': x86_64.
           # - 64-bit instruction set, 64-bit pointers, 32-bit 'long': x86_64
           #   with native Windows (mingw, MSVC).
           # - 64-bit instruction set, 32-bit pointers, 32-bit 'long': x86_64-x32.
           # - 32-bit instruction set, 32-bit pointers, 32-bit 'long': i386.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if (defined __x86_64__ || defined __amd64__ \
                       || defined _M_X64 || defined _M_AMD64) \
                      && !(defined __ILP32__ || defined _ILP32)
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         arm* | aarch64 )
           # Assume arm with EABI.
           # On arm64 systems, the C compiler may be generating code in one of
           # these ABIs:
           # - aarch64 instruction set, 64-bit pointers, 64-bit 'long': arm64.
           # - aarch64 instruction set, 32-bit pointers, 32-bit 'long': arm64-ilp32.
           # - 32-bit instruction set, 32-bit pointers, 32-bit 'long': arm or armhf.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined __aarch64__ && !(defined __ILP32__ || defined _ILP32)
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         hppa1.0 | hppa1.1 | hppa2.0* | hppa64 )
           # On hppa, the C compiler may be generating 32-bit code or 64-bit
           # code. In the latter case, it defines _LP64 and __LP64__.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#ifdef __LP64__
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         ia64* )
           # On ia64 on HP-UX, the C compiler may be generating 64-bit code or
           # 32-bit code. In the latter case, it defines _ILP32.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#ifdef _ILP32
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=yes],
             [gl_cv_host_cpu_c_abi_32bit=no])
           ;;

         mips* )
           # We should also check for (_MIPS_SZPTR == 64), but gcc keeps this
           # at 32.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined _MIPS_SZLONG && (_MIPS_SZLONG == 64)
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         powerpc* )
           # Different ABIs are in use on AIX vs. Mac OS X vs. Linux,*BSD.
           # No need to distinguish them here; the caller may distinguish
           # them based on the OS.
           # On powerpc64 systems, the C compiler may still be generating
           # 32-bit code. And on powerpc-ibm-aix systems, the C compiler may
           # be generating 64-bit code.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined __powerpc64__ || defined _ARCH_PPC64
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         rs6000 )
           gl_cv_host_cpu_c_abi_32bit=yes
           ;;

         riscv32 | riscv64 )
           # There are 6 ABIs: ilp32, ilp32f, ilp32d, lp64, lp64f, lp64d.
           # Size of 'long' and 'void *':
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined __LP64__
                    int ok;
                  #else
                    error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         s390* )
           # On s390x, the C compiler may be generating 64-bit (= s390x) code
           # or 31-bit (= s390) code.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined __LP64__ || defined __s390x__
                    int ok;
                  #else
                    error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         sparc | sparc64 )
           # UltraSPARCs running Linux have `uname -m` = "sparc64", but the
           # C compiler still generates 32-bit code.
           AC_COMPILE_IFELSE(
             [AC_LANG_SOURCE(
                [[#if defined __sparcv9 || defined __arch64__
                   int ok;
                  #else
                   error fail
                  #endif
                ]])],
             [gl_cv_host_cpu_c_abi_32bit=no],
             [gl_cv_host_cpu_c_abi_32bit=yes])
           ;;

         *)
           gl_cv_host_cpu_c_abi_32bit=no
           ;;
       esac
     fi
    ])

  HOST_CPU_C_ABI_32BIT="$gl_cv_host_cpu_c_abi_32bit"
])

# iconv.m4 serial 21
dnl Copyright (C) 2000-2002, 2007-2014, 2016-2019 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([AM_ICONV_LINKFLAGS_BODY],
[
  dnl Prerequisites of AC_LIB_LINKFLAGS_BODY.
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([iconv])
])

AC_DEFUN([AM_ICONV_LINK],
[
  dnl Some systems have iconv in libc, some have it in libiconv (OSF/1 and
  dnl those with the standalone portable GNU libiconv installed).
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Search for libiconv and define LIBICONV, LTLIBICONV and INCICONV
  dnl accordingly.
  AC_REQUIRE([AM_ICONV_LINKFLAGS_BODY])

  dnl Add $INCICONV to CPPFLAGS before performing the following checks,
  dnl because if the user has installed libiconv and not disabled its use
  dnl via --without-libiconv-prefix, he wants to use it. The first
  dnl AC_LINK_IFELSE will then fail, the second AC_LINK_IFELSE will succeed.
  am_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INCICONV])

  AC_CACHE_CHECK([for iconv], [am_cv_func_iconv], [
    am_cv_func_iconv="no, consider installing GNU libiconv"
    am_cv_lib_iconv=no
    AC_LINK_IFELSE(
      [AC_LANG_PROGRAM(
         [[
#include <stdlib.h>
#include <iconv.h>
         ]],
         [[iconv_t cd = iconv_open("","");
           iconv(cd,NULL,NULL,NULL,NULL);
           iconv_close(cd);]])],
      [am_cv_func_iconv=yes])
    if test "$am_cv_func_iconv" != yes; then
      am_save_LIBS="$LIBS"
      LIBS="$LIBS $LIBICONV"
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[
#include <stdlib.h>
#include <iconv.h>
           ]],
           [[iconv_t cd = iconv_open("","");
             iconv(cd,NULL,NULL,NULL,NULL);
             iconv_close(cd);]])],
        [am_cv_lib_iconv=yes]
        [am_cv_func_iconv=yes])
      LIBS="$am_save_LIBS"
    fi
  ])
  if test "$am_cv_func_iconv" = yes; then
    AC_CACHE_CHECK([for working iconv], [am_cv_func_iconv_works], [
      dnl This tests against bugs in AIX 5.1, AIX 6.1..7.1, HP-UX 11.11,
      dnl Solaris 10.
      am_save_LIBS="$LIBS"
      if test $am_cv_lib_iconv = yes; then
        LIBS="$LIBS $LIBICONV"
      fi
      am_cv_func_iconv_works=no
      for ac_iconv_const in '' 'const'; do
        AC_RUN_IFELSE(
          [AC_LANG_PROGRAM(
             [[
#include <iconv.h>
#include <string.h>

#ifndef ICONV_CONST
# define ICONV_CONST $ac_iconv_const
#endif
             ]],
             [[int result = 0;
  /* Test against AIX 5.1 bug: Failures are not distinguishable from successful
     returns.  */
  {
    iconv_t cd_utf8_to_88591 = iconv_open ("ISO8859-1", "UTF-8");
    if (cd_utf8_to_88591 != (iconv_t)(-1))
      {
        static ICONV_CONST char input[] = "\342\202\254"; /* EURO SIGN */
        char buf[10];
        ICONV_CONST char *inptr = input;
        size_t inbytesleft = strlen (input);
        char *outptr = buf;
        size_t outbytesleft = sizeof (buf);
        size_t res = iconv (cd_utf8_to_88591,
                            &inptr, &inbytesleft,
                            &outptr, &outbytesleft);
        if (res == 0)
          result |= 1;
        iconv_close (cd_utf8_to_88591);
      }
  }
  /* Test against Solaris 10 bug: Failures are not distinguishable from
     successful returns.  */
  {
    iconv_t cd_ascii_to_88591 = iconv_open ("ISO8859-1", "646");
    if (cd_ascii_to_88591 != (iconv_t)(-1))
      {
        static ICONV_CONST char input[] = "\263";
        char buf[10];
        ICONV_CONST char *inptr = input;
        size_t inbytesleft = strlen (input);
        char *outptr = buf;
        size_t outbytesleft = sizeof (buf);
        size_t res = iconv (cd_ascii_to_88591,
                            &inptr, &inbytesleft,
                            &outptr, &outbytesleft);
        if (res == 0)
          result |= 2;
        iconv_close (cd_ascii_to_88591);
      }
  }
  /* Test against AIX 6.1..7.1 bug: Buffer overrun.  */
  {
    iconv_t cd_88591_to_utf8 = iconv_open ("UTF-8", "ISO-8859-1");
    if (cd_88591_to_utf8 != (iconv_t)(-1))
      {
        static ICONV_CONST char input[] = "\304";
        static char buf[2] = { (char)0xDE, (char)0xAD };
        ICONV_CONST char *inptr = input;
        size_t inbytesleft = 1;
        char *outptr = buf;
        size_t outbytesleft = 1;
        size_t res = iconv (cd_88591_to_utf8,
                            &inptr, &inbytesleft,
                            &outptr, &outbytesleft);
        if (res != (size_t)(-1) || outptr - buf > 1 || buf[1] != (char)0xAD)
          result |= 4;
        iconv_close (cd_88591_to_utf8);
      }
  }
#if 0 /* This bug could be worked around by the caller.  */
  /* Test against HP-UX 11.11 bug: Positive return value instead of 0.  */
  {
    iconv_t cd_88591_to_utf8 = iconv_open ("utf8", "iso88591");
    if (cd_88591_to_utf8 != (iconv_t)(-1))
      {
        static ICONV_CONST char input[] = "\304rger mit b\366sen B\374bchen ohne Augenma\337";
        char buf[50];
        ICONV_CONST char *inptr = input;
        size_t inbytesleft = strlen (input);
        char *outptr = buf;
        size_t outbytesleft = sizeof (buf);
        size_t res = iconv (cd_88591_to_utf8,
                            &inptr, &inbytesleft,
                            &outptr, &outbytesleft);
        if ((int)res > 0)
          result |= 8;
        iconv_close (cd_88591_to_utf8);
      }
  }
#endif
  /* Test against HP-UX 11.11 bug: No converter from EUC-JP to UTF-8 is
     provided.  */
  {
    /* Try standardized names.  */
    iconv_t cd1 = iconv_open ("UTF-8", "EUC-JP");
    /* Try IRIX, OSF/1 names.  */
    iconv_t cd2 = iconv_open ("UTF-8", "eucJP");
    /* Try AIX names.  */
    iconv_t cd3 = iconv_open ("UTF-8", "IBM-eucJP");
    /* Try HP-UX names.  */
    iconv_t cd4 = iconv_open ("utf8", "eucJP");
    if (cd1 == (iconv_t)(-1) && cd2 == (iconv_t)(-1)
        && cd3 == (iconv_t)(-1) && cd4 == (iconv_t)(-1))
      result |= 16;
    if (cd1 != (iconv_t)(-1))
      iconv_close (cd1);
    if (cd2 != (iconv_t)(-1))
      iconv_close (cd2);
    if (cd3 != (iconv_t)(-1))
      iconv_close (cd3);
    if (cd4 != (iconv_t)(-1))
      iconv_close (cd4);
  }
  return result;
]])],
          [am_cv_func_iconv_works=yes], ,
          [case "$host_os" in
             aix* | hpux*) am_cv_func_iconv_works="guessing no" ;;
             *)            am_cv_func_iconv_works="guessing yes" ;;
           esac])
        test "$am_cv_func_iconv_works" = no || break
      done
      LIBS="$am_save_LIBS"
    ])
    case "$am_cv_func_iconv_works" in
      *no) am_func_iconv=no am_cv_lib_iconv=no ;;
      *)   am_func_iconv=yes ;;
    esac
  else
    am_func_iconv=no am_cv_lib_iconv=no
  fi
  if test "$am_func_iconv" = yes; then
    AC_DEFINE([HAVE_ICONV], [1],
      [Define if you have the iconv() function and it works.])
  fi
  if test "$am_cv_lib_iconv" = yes; then
    AC_MSG_CHECKING([how to link with libiconv])
    AC_MSG_RESULT([$LIBICONV])
  else
    dnl If $LIBICONV didn't lead to a usable library, we don't need $INCICONV
    dnl either.
    CPPFLAGS="$am_save_CPPFLAGS"
    LIBICONV=
    LTLIBICONV=
  fi
  AC_SUBST([LIBICONV])
  AC_SUBST([LTLIBICONV])
])

dnl Define AM_ICONV using AC_DEFUN_ONCE for Autoconf >= 2.64, in order to
dnl avoid warnings like
dnl "warning: AC_REQUIRE: `AM_ICONV' was expanded before it was required".
dnl This is tricky because of the way 'aclocal' is implemented:
dnl - It requires defining an auxiliary macro whose name ends in AC_DEFUN.
dnl   Otherwise aclocal's initial scan pass would miss the macro definition.
dnl - It requires a line break inside the AC_DEFUN_ONCE and AC_DEFUN expansions.
dnl   Otherwise aclocal would emit many "Use of uninitialized value $1"
dnl   warnings.
m4_define([gl_iconv_AC_DEFUN],
  m4_version_prereq([2.64],
    [[AC_DEFUN_ONCE(
        [$1], [$2])]],
    [m4_ifdef([gl_00GNULIB],
       [[AC_DEFUN_ONCE(
           [$1], [$2])]],
       [[AC_DEFUN(
           [$1], [$2])]])]))
gl_iconv_AC_DEFUN([AM_ICONV],
[
  AM_ICONV_LINK
  if test "$am_cv_func_iconv" = yes; then
    AC_MSG_CHECKING([for iconv declaration])
    AC_CACHE_VAL([am_cv_proto_iconv], [
      AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM(
           [[
#include <stdlib.h>
#include <iconv.h>
extern
#ifdef __cplusplus
"C"
#endif
#if defined(__STDC__) || defined(_MSC_VER) || defined(__cplusplus)
size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);
#else
size_t iconv();
#endif
           ]],
           [[]])],
        [am_cv_proto_iconv_arg1=""],
        [am_cv_proto_iconv_arg1="const"])
      am_cv_proto_iconv="extern size_t iconv (iconv_t cd, $am_cv_proto_iconv_arg1 char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);"])
    am_cv_proto_iconv=`echo "[$]am_cv_proto_iconv" | tr -s ' ' | sed -e 's/( /(/'`
    AC_MSG_RESULT([
         $am_cv_proto_iconv])
  else
    dnl When compiling GNU libiconv on a system that does not have iconv yet,
    dnl pick the POSIX compliant declaration without 'const'.
    am_cv_proto_iconv_arg1=""
  fi
  AC_DEFINE_UNQUOTED([ICONV_CONST], [$am_cv_proto_iconv_arg1],
    [Define as const if the declaration of iconv() needs const.])
  dnl Also substitute ICONV_CONST in the gnulib generated <iconv.h>.
  m4_ifdef([gl_ICONV_H_DEFAULTS],
    [AC_REQUIRE([gl_ICONV_H_DEFAULTS])
     if test -n "$am_cv_proto_iconv_arg1"; then
       ICONV_CONST="const"
     fi
    ])
])

# lib-ld.m4 serial 9
dnl Copyright (C) 1996-2003, 2009-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Subroutines of libtool.m4,
dnl with replacements s/_*LT_PATH/AC_LIB_PROG/ and s/lt_/acl_/ to avoid
dnl collision with libtool.m4.

dnl From libtool-2.4. Sets the variable with_gnu_ld to yes or no.
AC_DEFUN([AC_LIB_PROG_LD_GNU],
[AC_CACHE_CHECK([if the linker ($LD) is GNU ld], [acl_cv_prog_gnu_ld],
[# I'd rather use --version here, but apparently some GNU lds only accept -v.
case `$LD -v 2>&1 </dev/null` in
*GNU* | *'with BFD'*)
  acl_cv_prog_gnu_ld=yes
  ;;
*)
  acl_cv_prog_gnu_ld=no
  ;;
esac])
with_gnu_ld=$acl_cv_prog_gnu_ld
])

dnl From libtool-2.4. Sets the variable LD.
AC_DEFUN([AC_LIB_PROG_LD],
[AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl

AC_ARG_WITH([gnu-ld],
    [AS_HELP_STRING([--with-gnu-ld],
        [assume the C compiler uses GNU ld [default=no]])],
    [test "$withval" = no || with_gnu_ld=yes],
    [with_gnu_ld=no])dnl

# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  # Determine PATH_SEPARATOR by trying to find /bin/sh in a PATH which
  # contains only /bin. Note that ksh looks also at the FPATH variable,
  # so we have to set that as well for the test.
  PATH_SEPARATOR=:
  (PATH='/bin;/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 \
    && { (PATH='/bin:/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 \
           || PATH_SEPARATOR=';'
       }
fi

if test -n "$LD"; then
  AC_MSG_CHECKING([for ld])
elif test "$GCC" = yes; then
  AC_MSG_CHECKING([for ld used by $CC])
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
if test -n "$LD"; then
  # Let the user override the test with a path.
  :
else
  AC_CACHE_VAL([acl_cv_path_LD],
  [
    acl_cv_path_LD= # Final result of this test
    ac_prog=ld # Program to search in $PATH
    if test "$GCC" = yes; then
      # Check if gcc -print-prog-name=ld gives a path.
      case $host in
        *-*-mingw*)
          # gcc leaves a trailing carriage return which upsets mingw
          acl_output=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
        *)
          acl_output=`($CC -print-prog-name=ld) 2>&5` ;;
      esac
      case $acl_output in
        # Accept absolute paths.
        [[\\/]]* | ?:[[\\/]]*)
          re_direlt='/[[^/]][[^/]]*/\.\./'
          # Canonicalize the pathname of ld
          acl_output=`echo "$acl_output" | sed 's%\\\\%/%g'`
          while echo "$acl_output" | grep "$re_direlt" > /dev/null 2>&1; do
            acl_output=`echo $acl_output | sed "s%$re_direlt%/%"`
          done
          # Got the pathname. No search in PATH is needed.
          acl_cv_path_LD="$acl_output"
          ac_prog=
          ;;
        "")
          # If it fails, then pretend we aren't using GCC.
          ;;
        *)
          # If it is relative, then search for the first ld in PATH.
          with_gnu_ld=unknown
          ;;
      esac
    fi
    if test -n "$ac_prog"; then
      # Search for $ac_prog in $PATH.
      acl_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
      for ac_dir in $PATH; do
        IFS="$acl_save_ifs"
        test -z "$ac_dir" && ac_dir=.
        if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
          acl_cv_path_LD="$ac_dir/$ac_prog"
          # Check to see if the program is GNU ld.  I'd rather use --version,
          # but apparently some variants of GNU ld only accept -v.
          # Break only if it was the GNU/non-GNU ld that we prefer.
          case `"$acl_cv_path_LD" -v 2>&1 </dev/null` in
            *GNU* | *'with BFD'*)
              test "$with_gnu_ld" != no && break
              ;;
            *)
              test "$with_gnu_ld" != yes && break
              ;;
          esac
        fi
      done
      IFS="$acl_save_ifs"
    fi
    case $host in
      *-*-aix*)
        AC_COMPILE_IFELSE(
          [AC_LANG_SOURCE(
             [[#if defined __powerpc64__ || defined _ARCH_PPC64
                int ok;
               #else
                error fail
               #endif
             ]])],
          [# The compiler produces 64-bit code. Add option '-b64' so that the
           # linker groks 64-bit object files.
           case "$acl_cv_path_LD " in
             *" -b64 "*) ;;
             *) acl_cv_path_LD="$acl_cv_path_LD -b64" ;;
           esac
          ], [])
        ;;
      sparc64-*-netbsd*)
        AC_COMPILE_IFELSE(
          [AC_LANG_SOURCE(
             [[#if defined __sparcv9 || defined __arch64__
                int ok;
               #else
                error fail
               #endif
             ]])],
          [],
          [# The compiler produces 32-bit code. Add option '-m elf32_sparc'
           # so that the linker groks 32-bit object files.
           case "$acl_cv_path_LD " in
             *" -m elf32_sparc "*) ;;
             *) acl_cv_path_LD="$acl_cv_path_LD -m elf32_sparc" ;;
           esac
          ])
        ;;
    esac
  ])
  LD="$acl_cv_path_LD"
fi
if test -n "$LD"; then
  AC_MSG_RESULT([$LD])
else
  AC_MSG_RESULT([no])
  AC_MSG_ERROR([no acceptable ld found in \$PATH])
fi
AC_LIB_PROG_LD_GNU
])

# lib-link.m4 serial 28
dnl Copyright (C) 2001-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_PREREQ([2.61])

dnl AC_LIB_LINKFLAGS(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets and AC_SUBSTs the LIB${NAME} and LTLIB${NAME} variables and
dnl augments the CPPFLAGS variable.
dnl Sets and AC_SUBSTs the LIB${NAME}_PREFIX variable to nonempty if libname
dnl was found in ${LIB${NAME}_PREFIX}/$acl_libdirstem.
AC_DEFUN([AC_LIB_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  pushdef([Name],[m4_translit([$1],[./+-], [____])])
  pushdef([NAME],[m4_translit([$1],[abcdefghijklmnopqrstuvwxyz./+-],
                                   [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])
  AC_CACHE_CHECK([how to link with lib[]$1], [ac_cv_lib[]Name[]_libs], [
    AC_LIB_LINKFLAGS_BODY([$1], [$2])
    ac_cv_lib[]Name[]_libs="$LIB[]NAME"
    ac_cv_lib[]Name[]_ltlibs="$LTLIB[]NAME"
    ac_cv_lib[]Name[]_cppflags="$INC[]NAME"
    ac_cv_lib[]Name[]_prefix="$LIB[]NAME[]_PREFIX"
  ])
  LIB[]NAME="$ac_cv_lib[]Name[]_libs"
  LTLIB[]NAME="$ac_cv_lib[]Name[]_ltlibs"
  INC[]NAME="$ac_cv_lib[]Name[]_cppflags"
  LIB[]NAME[]_PREFIX="$ac_cv_lib[]Name[]_prefix"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  AC_SUBST([LIB]NAME[_PREFIX])
  dnl Also set HAVE_LIB[]NAME so that AC_LIB_HAVE_LINKFLAGS can reuse the
  dnl results of this search when this library appears as a dependency.
  HAVE_LIB[]NAME=yes
  popdef([NAME])
  popdef([Name])
])

dnl AC_LIB_HAVE_LINKFLAGS(name, dependencies, includes, testcode, [missing-message])
dnl searches for libname and the libraries corresponding to explicit and
dnl implicit dependencies, together with the specified include files and
dnl the ability to compile and link the specified testcode. The missing-message
dnl defaults to 'no' and may contain additional hints for the user.
dnl If found, it sets and AC_SUBSTs HAVE_LIB${NAME}=yes and the LIB${NAME}
dnl and LTLIB${NAME} variables and augments the CPPFLAGS variable, and
dnl #defines HAVE_LIB${NAME} to 1. Otherwise, it sets and AC_SUBSTs
dnl HAVE_LIB${NAME}=no and LIB${NAME} and LTLIB${NAME} to empty.
dnl Sets and AC_SUBSTs the LIB${NAME}_PREFIX variable to nonempty if libname
dnl was found in ${LIB${NAME}_PREFIX}/$acl_libdirstem.
AC_DEFUN([AC_LIB_HAVE_LINKFLAGS],
[
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  AC_REQUIRE([AC_LIB_RPATH])
  pushdef([Name],[m4_translit([$1],[./+-], [____])])
  pushdef([NAME],[m4_translit([$1],[abcdefghijklmnopqrstuvwxyz./+-],
                                   [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])

  dnl Search for lib[]Name and define LIB[]NAME, LTLIB[]NAME and INC[]NAME
  dnl accordingly.
  AC_LIB_LINKFLAGS_BODY([$1], [$2])

  dnl Add $INC[]NAME to CPPFLAGS before performing the following checks,
  dnl because if the user has installed lib[]Name and not disabled its use
  dnl via --without-lib[]Name-prefix, he wants to use it.
  ac_save_CPPFLAGS="$CPPFLAGS"
  AC_LIB_APPENDTOVAR([CPPFLAGS], [$INC]NAME)

  AC_CACHE_CHECK([for lib[]$1], [ac_cv_lib[]Name], [
    ac_save_LIBS="$LIBS"
    dnl If $LIB[]NAME contains some -l options, add it to the end of LIBS,
    dnl because these -l options might require -L options that are present in
    dnl LIBS. -l options benefit only from the -L options listed before it.
    dnl Otherwise, add it to the front of LIBS, because it may be a static
    dnl library that depends on another static library that is present in LIBS.
    dnl Static libraries benefit only from the static libraries listed after
    dnl it.
    case " $LIB[]NAME" in
      *" -l"*) LIBS="$LIBS $LIB[]NAME" ;;
      *)       LIBS="$LIB[]NAME $LIBS" ;;
    esac
    AC_LINK_IFELSE(
      [AC_LANG_PROGRAM([[$3]], [[$4]])],
      [ac_cv_lib[]Name=yes],
      [ac_cv_lib[]Name='m4_if([$5], [], [no], [[$5]])'])
    LIBS="$ac_save_LIBS"
  ])
  if test "$ac_cv_lib[]Name" = yes; then
    HAVE_LIB[]NAME=yes
    AC_DEFINE([HAVE_LIB]NAME, 1, [Define if you have the lib][$1 library.])
    AC_MSG_CHECKING([how to link with lib[]$1])
    AC_MSG_RESULT([$LIB[]NAME])
  else
    HAVE_LIB[]NAME=no
    dnl If $LIB[]NAME didn't lead to a usable library, we don't need
    dnl $INC[]NAME either.
    CPPFLAGS="$ac_save_CPPFLAGS"
    LIB[]NAME=
    LTLIB[]NAME=
    LIB[]NAME[]_PREFIX=
  fi
  AC_SUBST([HAVE_LIB]NAME)
  AC_SUBST([LIB]NAME)
  AC_SUBST([LTLIB]NAME)
  AC_SUBST([LIB]NAME[_PREFIX])
  popdef([NAME])
  popdef([Name])
])

dnl Determine the platform dependent parameters needed to use rpath:
dnl   acl_libext,
dnl   acl_shlibext,
dnl   acl_libname_spec,
dnl   acl_library_names_spec,
dnl   acl_hardcode_libdir_flag_spec,
dnl   acl_hardcode_libdir_separator,
dnl   acl_hardcode_direct,
dnl   acl_hardcode_minus_L.
AC_DEFUN([AC_LIB_RPATH],
[
  dnl Complain if config.rpath is missing.
  AC_REQUIRE_AUX_FILE([config.rpath])
  AC_REQUIRE([AC_PROG_CC])                dnl we use $CC, $GCC, $LDFLAGS
  AC_REQUIRE([AC_LIB_PROG_LD])            dnl we use $LD, $with_gnu_ld
  AC_REQUIRE([AC_CANONICAL_HOST])         dnl we use $host
  AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT]) dnl we use $ac_aux_dir
  AC_CACHE_CHECK([for shared library run path origin], [acl_cv_rpath], [
    CC="$CC" GCC="$GCC" LDFLAGS="$LDFLAGS" LD="$LD" with_gnu_ld="$with_gnu_ld" \
    ${CONFIG_SHELL-/bin/sh} "$ac_aux_dir/config.rpath" "$host" > conftest.sh
    . ./conftest.sh
    rm -f ./conftest.sh
    acl_cv_rpath=done
  ])
  wl="$acl_cv_wl"
  acl_libext="$acl_cv_libext"
  acl_shlibext="$acl_cv_shlibext"
  acl_libname_spec="$acl_cv_libname_spec"
  acl_library_names_spec="$acl_cv_library_names_spec"
  acl_hardcode_libdir_flag_spec="$acl_cv_hardcode_libdir_flag_spec"
  acl_hardcode_libdir_separator="$acl_cv_hardcode_libdir_separator"
  acl_hardcode_direct="$acl_cv_hardcode_direct"
  acl_hardcode_minus_L="$acl_cv_hardcode_minus_L"
  dnl Determine whether the user wants rpath handling at all.
  AC_ARG_ENABLE([rpath],
    [  --disable-rpath         do not hardcode runtime library paths],
    :, enable_rpath=yes)
])

dnl AC_LIB_FROMPACKAGE(name, package)
dnl declares that libname comes from the given package. The configure file
dnl will then not have a --with-libname-prefix option but a
dnl --with-package-prefix option. Several libraries can come from the same
dnl package. This declaration must occur before an AC_LIB_LINKFLAGS or similar
dnl macro call that searches for libname.
AC_DEFUN([AC_LIB_FROMPACKAGE],
[
  pushdef([NAME],[m4_translit([$1],[abcdefghijklmnopqrstuvwxyz./+-],
                                   [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])
  define([acl_frompackage_]NAME, [$2])
  popdef([NAME])
  pushdef([PACK],[$2])
  pushdef([PACKUP],[m4_translit(PACK,[abcdefghijklmnopqrstuvwxyz./+-],
                                     [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])
  define([acl_libsinpackage_]PACKUP,
    m4_ifdef([acl_libsinpackage_]PACKUP, [m4_defn([acl_libsinpackage_]PACKUP)[, ]],)[lib$1])
  popdef([PACKUP])
  popdef([PACK])
])

dnl AC_LIB_LINKFLAGS_BODY(name [, dependencies]) searches for libname and
dnl the libraries corresponding to explicit and implicit dependencies.
dnl Sets the LIB${NAME}, LTLIB${NAME} and INC${NAME} variables.
dnl Also, sets the LIB${NAME}_PREFIX variable to nonempty if libname was found
dnl in ${LIB${NAME}_PREFIX}/$acl_libdirstem.
AC_DEFUN([AC_LIB_LINKFLAGS_BODY],
[
  AC_REQUIRE([AC_LIB_PREPARE_MULTILIB])
  pushdef([NAME],[m4_translit([$1],[abcdefghijklmnopqrstuvwxyz./+-],
                                   [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])
  pushdef([PACK],[m4_ifdef([acl_frompackage_]NAME, [acl_frompackage_]NAME, lib[$1])])
  pushdef([PACKUP],[m4_translit(PACK,[abcdefghijklmnopqrstuvwxyz./+-],
                                     [ABCDEFGHIJKLMNOPQRSTUVWXYZ____])])
  pushdef([PACKLIBS],[m4_ifdef([acl_frompackage_]NAME, [acl_libsinpackage_]PACKUP, lib[$1])])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_ARG_WITH(PACK[-prefix],
[[  --with-]]PACK[[-prefix[=DIR]  search for ]PACKLIBS[ in DIR/include and DIR/lib
  --without-]]PACK[[-prefix     don't search for ]PACKLIBS[ in includedir and libdir]],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/$acl_libdirstem"
        if test "$acl_libdirstem2" != "$acl_libdirstem" \
           && test ! -d "$withval/$acl_libdirstem"; then
          additional_libdir="$withval/$acl_libdirstem2"
        fi
      fi
    fi
])
  dnl Search the library and its dependencies in $additional_libdir and
  dnl $LDFLAGS. Using breadth-first-seach.
  LIB[]NAME=
  LTLIB[]NAME=
  INC[]NAME=
  LIB[]NAME[]_PREFIX=
  dnl HAVE_LIB${NAME} is an indicator that LIB${NAME}, LTLIB${NAME} have been
  dnl computed. So it has to be reset here.
  HAVE_LIB[]NAME=
  rpathdirs=
  ltrpathdirs=
  names_already_handled=
  names_next_round='$1 $2'
  while test -n "$names_next_round"; do
    names_this_round="$names_next_round"
    names_next_round=
    for name in $names_this_round; do
      already_handled=
      for n in $names_already_handled; do
        if test "$n" = "$name"; then
          already_handled=yes
          break
        fi
      done
      if test -z "$already_handled"; then
        names_already_handled="$names_already_handled $name"
        dnl See if it was already located by an earlier AC_LIB_LINKFLAGS
        dnl or AC_LIB_HAVE_LINKFLAGS call.
        uppername=`echo "$name" | sed -e 'y|abcdefghijklmnopqrstuvwxyz./+-|ABCDEFGHIJKLMNOPQRSTUVWXYZ____|'`
        eval value=\"\$HAVE_LIB$uppername\"
        if test -n "$value"; then
          if test "$value" = yes; then
            eval value=\"\$LIB$uppername\"
            test -z "$value" || LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$value"
            eval value=\"\$LTLIB$uppername\"
            test -z "$value" || LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$value"
          else
            dnl An earlier call to AC_LIB_HAVE_LINKFLAGS has determined
            dnl that this library doesn't exist. So just drop it.
            :
          fi
        else
          dnl Search the library lib$name in $additional_libdir and $LDFLAGS
          dnl and the already constructed $LIBNAME/$LTLIBNAME.
          found_dir=
          found_la=
          found_so=
          found_a=
          eval libname=\"$acl_libname_spec\"    # typically: libname=lib$name
          if test -n "$acl_shlibext"; then
            shrext=".$acl_shlibext"             # typically: shrext=.so
          else
            shrext=
          fi
          if test $use_additional = yes; then
            dir="$additional_libdir"
            dnl The same code as in the loop below:
            dnl First look for a shared library.
            if test -n "$acl_shlibext"; then
              if test -f "$dir/$libname$shrext"; then
                found_dir="$dir"
                found_so="$dir/$libname$shrext"
              else
                if test "$acl_library_names_spec" = '$libname$shrext$versuffix'; then
                  ver=`(cd "$dir" && \
                        for f in "$libname$shrext".*; do echo "$f"; done \
                        | sed -e "s,^$libname$shrext\\\\.,," \
                        | sort -t '.' -n -r -k1,1 -k2,2 -k3,3 -k4,4 -k5,5 \
                        | sed 1q ) 2>/dev/null`
                  if test -n "$ver" && test -f "$dir/$libname$shrext.$ver"; then
                    found_dir="$dir"
                    found_so="$dir/$libname$shrext.$ver"
                  fi
                else
                  eval library_names=\"$acl_library_names_spec\"
                  for f in $library_names; do
                    if test -f "$dir/$f"; then
                      found_dir="$dir"
                      found_so="$dir/$f"
                      break
                    fi
                  done
                fi
              fi
            fi
            dnl Then look for a static library.
            if test "X$found_dir" = "X"; then
              if test -f "$dir/$libname.$acl_libext"; then
                found_dir="$dir"
                found_a="$dir/$libname.$acl_libext"
              fi
            fi
            if test "X$found_dir" != "X"; then
              if test -f "$dir/$libname.la"; then
                found_la="$dir/$libname.la"
              fi
            fi
          fi
          if test "X$found_dir" = "X"; then
            for x in $LDFLAGS $LTLIB[]NAME; do
              AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
              case "$x" in
                -L*)
                  dir=`echo "X$x" | sed -e 's/^X-L//'`
                  dnl First look for a shared library.
                  if test -n "$acl_shlibext"; then
                    if test -f "$dir/$libname$shrext"; then
                      found_dir="$dir"
                      found_so="$dir/$libname$shrext"
                    else
                      if test "$acl_library_names_spec" = '$libname$shrext$versuffix'; then
                        ver=`(cd "$dir" && \
                              for f in "$libname$shrext".*; do echo "$f"; done \
                              | sed -e "s,^$libname$shrext\\\\.,," \
                              | sort -t '.' -n -r -k1,1 -k2,2 -k3,3 -k4,4 -k5,5 \
                              | sed 1q ) 2>/dev/null`
                        if test -n "$ver" && test -f "$dir/$libname$shrext.$ver"; then
                          found_dir="$dir"
                          found_so="$dir/$libname$shrext.$ver"
                        fi
                      else
                        eval library_names=\"$acl_library_names_spec\"
                        for f in $library_names; do
                          if test -f "$dir/$f"; then
                            found_dir="$dir"
                            found_so="$dir/$f"
                            break
                          fi
                        done
                      fi
                    fi
                  fi
                  dnl Then look for a static library.
                  if test "X$found_dir" = "X"; then
                    if test -f "$dir/$libname.$acl_libext"; then
                      found_dir="$dir"
                      found_a="$dir/$libname.$acl_libext"
                    fi
                  fi
                  if test "X$found_dir" != "X"; then
                    if test -f "$dir/$libname.la"; then
                      found_la="$dir/$libname.la"
                    fi
                  fi
                  ;;
              esac
              if test "X$found_dir" != "X"; then
                break
              fi
            done
          fi
          if test "X$found_dir" != "X"; then
            dnl Found the library.
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$found_dir -l$name"
            if test "X$found_so" != "X"; then
              dnl Linking with a shared library. We attempt to hardcode its
              dnl directory into the executable's runpath, unless it's the
              dnl standard /usr/lib.
              if test "$enable_rpath" = no \
                 || test "X$found_dir" = "X/usr/$acl_libdirstem" \
                 || test "X$found_dir" = "X/usr/$acl_libdirstem2"; then
                dnl No hardcoding is needed.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
              else
                dnl Use an explicit option to hardcode DIR into the resulting
                dnl binary.
                dnl Potentially add DIR to ltrpathdirs.
                dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                haveit=
                for x in $ltrpathdirs; do
                  if test "X$x" = "X$found_dir"; then
                    haveit=yes
                    break
                  fi
                done
                if test -z "$haveit"; then
                  ltrpathdirs="$ltrpathdirs $found_dir"
                fi
                dnl The hardcoding into $LIBNAME is system dependent.
                if test "$acl_hardcode_direct" = yes; then
                  dnl Using DIR/libNAME.so during linking hardcodes DIR into the
                  dnl resulting binary.
                  LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                else
                  if test -n "$acl_hardcode_libdir_flag_spec" && test "$acl_hardcode_minus_L" = no; then
                    dnl Use an explicit option to hardcode DIR into the resulting
                    dnl binary.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    dnl Potentially add DIR to rpathdirs.
                    dnl The rpathdirs will be appended to $LIBNAME at the end.
                    haveit=
                    for x in $rpathdirs; do
                      if test "X$x" = "X$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      rpathdirs="$rpathdirs $found_dir"
                    fi
                  else
                    dnl Rely on "-L$found_dir".
                    dnl But don't add it if it's already contained in the LDFLAGS
                    dnl or the already constructed $LIBNAME
                    haveit=
                    for x in $LDFLAGS $LIB[]NAME; do
                      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                      if test "X$x" = "X-L$found_dir"; then
                        haveit=yes
                        break
                      fi
                    done
                    if test -z "$haveit"; then
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir"
                    fi
                    if test "$acl_hardcode_minus_L" != no; then
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_so"
                    else
                      dnl We cannot use $acl_hardcode_runpath_var and LD_RUN_PATH
                      dnl here, because this doesn't fit in flags passed to the
                      dnl compiler. So give up. No hardcoding. This affects only
                      dnl very old systems.
                      dnl FIXME: Not sure whether we should use
                      dnl "-L$found_dir -l$name" or "-L$found_dir $found_so"
                      dnl here.
                      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
                    fi
                  fi
                fi
              fi
            else
              if test "X$found_a" != "X"; then
                dnl Linking with a static library.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$found_a"
              else
                dnl We shouldn't come here, but anyway it's good to have a
                dnl fallback.
                LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$found_dir -l$name"
              fi
            fi
            dnl Assume the include files are nearby.
            additional_includedir=
            case "$found_dir" in
              */$acl_libdirstem | */$acl_libdirstem/)
                basedir=`echo "X$found_dir" | sed -e 's,^X,,' -e "s,/$acl_libdirstem/"'*$,,'`
                if test "$name" = '$1'; then
                  LIB[]NAME[]_PREFIX="$basedir"
                fi
                additional_includedir="$basedir/include"
                ;;
              */$acl_libdirstem2 | */$acl_libdirstem2/)
                basedir=`echo "X$found_dir" | sed -e 's,^X,,' -e "s,/$acl_libdirstem2/"'*$,,'`
                if test "$name" = '$1'; then
                  LIB[]NAME[]_PREFIX="$basedir"
                fi
                additional_includedir="$basedir/include"
                ;;
            esac
            if test "X$additional_includedir" != "X"; then
              dnl Potentially add $additional_includedir to $INCNAME.
              dnl But don't add it
              dnl   1. if it's the standard /usr/include,
              dnl   2. if it's /usr/local/include and we are using GCC on Linux,
              dnl   3. if it's already present in $CPPFLAGS or the already
              dnl      constructed $INCNAME,
              dnl   4. if it doesn't exist as a directory.
              if test "X$additional_includedir" != "X/usr/include"; then
                haveit=
                if test "X$additional_includedir" = "X/usr/local/include"; then
                  if test -n "$GCC"; then
                    case $host_os in
                      linux* | gnu* | k*bsd*-gnu) haveit=yes;;
                    esac
                  fi
                fi
                if test -z "$haveit"; then
                  for x in $CPPFLAGS $INC[]NAME; do
                    AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                    if test "X$x" = "X-I$additional_includedir"; then
                      haveit=yes
                      break
                    fi
                  done
                  if test -z "$haveit"; then
                    if test -d "$additional_includedir"; then
                      dnl Really add $additional_includedir to $INCNAME.
                      INC[]NAME="${INC[]NAME}${INC[]NAME:+ }-I$additional_includedir"
                    fi
                  fi
                fi
              fi
            fi
            dnl Look for dependencies.
            if test -n "$found_la"; then
              dnl Read the .la file. It defines the variables
              dnl dlname, library_names, old_library, dependency_libs, current,
              dnl age, revision, installed, dlopen, dlpreopen, libdir.
              save_libdir="$libdir"
              case "$found_la" in
                */* | *\\*) . "$found_la" ;;
                *) . "./$found_la" ;;
              esac
              libdir="$save_libdir"
              dnl We use only dependency_libs.
              for dep in $dependency_libs; do
                case "$dep" in
                  -L*)
                    additional_libdir=`echo "X$dep" | sed -e 's/^X-L//'`
                    dnl Potentially add $additional_libdir to $LIBNAME and $LTLIBNAME.
                    dnl But don't add it
                    dnl   1. if it's the standard /usr/lib,
                    dnl   2. if it's /usr/local/lib and we are using GCC on Linux,
                    dnl   3. if it's already present in $LDFLAGS or the already
                    dnl      constructed $LIBNAME,
                    dnl   4. if it doesn't exist as a directory.
                    if test "X$additional_libdir" != "X/usr/$acl_libdirstem" \
                       && test "X$additional_libdir" != "X/usr/$acl_libdirstem2"; then
                      haveit=
                      if test "X$additional_libdir" = "X/usr/local/$acl_libdirstem" \
                         || test "X$additional_libdir" = "X/usr/local/$acl_libdirstem2"; then
                        if test -n "$GCC"; then
                          case $host_os in
                            linux* | gnu* | k*bsd*-gnu) haveit=yes;;
                          esac
                        fi
                      fi
                      if test -z "$haveit"; then
                        haveit=
                        for x in $LDFLAGS $LIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LIBNAME.
                            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                        haveit=
                        for x in $LDFLAGS $LTLIB[]NAME; do
                          AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
                          if test "X$x" = "X-L$additional_libdir"; then
                            haveit=yes
                            break
                          fi
                        done
                        if test -z "$haveit"; then
                          if test -d "$additional_libdir"; then
                            dnl Really add $additional_libdir to $LTLIBNAME.
                            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-L$additional_libdir"
                          fi
                        fi
                      fi
                    fi
                    ;;
                  -R*)
                    dir=`echo "X$dep" | sed -e 's/^X-R//'`
                    if test "$enable_rpath" != no; then
                      dnl Potentially add DIR to rpathdirs.
                      dnl The rpathdirs will be appended to $LIBNAME at the end.
                      haveit=
                      for x in $rpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        rpathdirs="$rpathdirs $dir"
                      fi
                      dnl Potentially add DIR to ltrpathdirs.
                      dnl The ltrpathdirs will be appended to $LTLIBNAME at the end.
                      haveit=
                      for x in $ltrpathdirs; do
                        if test "X$x" = "X$dir"; then
                          haveit=yes
                          break
                        fi
                      done
                      if test -z "$haveit"; then
                        ltrpathdirs="$ltrpathdirs $dir"
                      fi
                    fi
                    ;;
                  -l*)
                    dnl Handle this in the next round.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's/^X-l//'`
                    ;;
                  *.la)
                    dnl Handle this in the next round. Throw away the .la's
                    dnl directory; it is already contained in a preceding -L
                    dnl option.
                    names_next_round="$names_next_round "`echo "X$dep" | sed -e 's,^X.*/,,' -e 's,^lib,,' -e 's,\.la$,,'`
                    ;;
                  *)
                    dnl Most likely an immediate library name.
                    LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$dep"
                    LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }$dep"
                    ;;
                esac
              done
            fi
          else
            dnl Didn't find the library; assume it is in the system directories
            dnl known to the linker and runtime loader. (All the system
            dnl directories known to the linker should also be known to the
            dnl runtime loader, otherwise the system is severely misconfigured.)
            LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }-l$name"
            LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-l$name"
          fi
        fi
      fi
    done
  done
  if test "X$rpathdirs" != "X"; then
    if test -n "$acl_hardcode_libdir_separator"; then
      dnl Weird platform: only the last -rpath option counts, the user must
      dnl pass all path elements in one option. We can arrange that for a
      dnl single library, but not when more than one $LIBNAMEs are used.
      alldirs=
      for found_dir in $rpathdirs; do
        alldirs="${alldirs}${alldirs:+$acl_hardcode_libdir_separator}$found_dir"
      done
      dnl Note: acl_hardcode_libdir_flag_spec uses $libdir and $wl.
      acl_save_libdir="$libdir"
      libdir="$alldirs"
      eval flag=\"$acl_hardcode_libdir_flag_spec\"
      libdir="$acl_save_libdir"
      LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
    else
      dnl The -rpath options are cumulative.
      for found_dir in $rpathdirs; do
        acl_save_libdir="$libdir"
        libdir="$found_dir"
        eval flag=\"$acl_hardcode_libdir_flag_spec\"
        libdir="$acl_save_libdir"
        LIB[]NAME="${LIB[]NAME}${LIB[]NAME:+ }$flag"
      done
    fi
  fi
  if test "X$ltrpathdirs" != "X"; then
    dnl When using libtool, the option that works for both libraries and
    dnl executables is -R. The -R options are cumulative.
    for found_dir in $ltrpathdirs; do
      LTLIB[]NAME="${LTLIB[]NAME}${LTLIB[]NAME:+ }-R$found_dir"
    done
  fi
  popdef([PACKLIBS])
  popdef([PACKUP])
  popdef([PACK])
  popdef([NAME])
])

dnl AC_LIB_APPENDTOVAR(VAR, CONTENTS) appends the elements of CONTENTS to VAR,
dnl unless already present in VAR.
dnl Works only for CPPFLAGS, not for LIB* variables because that sometimes
dnl contains two or three consecutive elements that belong together.
AC_DEFUN([AC_LIB_APPENDTOVAR],
[
  for element in [$2]; do
    haveit=
    for x in $[$1]; do
      AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
      if test "X$x" = "X$element"; then
        haveit=yes
        break
      fi
    done
    if test -z "$haveit"; then
      [$1]="${[$1]}${[$1]:+ }$element"
    fi
  done
])

dnl For those cases where a variable contains several -L and -l options
dnl referring to unknown libraries and directories, this macro determines the
dnl necessary additional linker options for the runtime path.
dnl AC_LIB_LINKFLAGS_FROM_LIBS([LDADDVAR], [LIBSVALUE], [USE-LIBTOOL])
dnl sets LDADDVAR to linker options needed together with LIBSVALUE.
dnl If USE-LIBTOOL evaluates to non-empty, linking with libtool is assumed,
dnl otherwise linking without libtool is assumed.
AC_DEFUN([AC_LIB_LINKFLAGS_FROM_LIBS],
[
  AC_REQUIRE([AC_LIB_RPATH])
  AC_REQUIRE([AC_LIB_PREPARE_MULTILIB])
  $1=
  if test "$enable_rpath" != no; then
    if test -n "$acl_hardcode_libdir_flag_spec" && test "$acl_hardcode_minus_L" = no; then
      dnl Use an explicit option to hardcode directories into the resulting
      dnl binary.
      rpathdirs=
      next=
      for opt in $2; do
        if test -n "$next"; then
          dir="$next"
          dnl No need to hardcode the standard /usr/lib.
          if test "X$dir" != "X/usr/$acl_libdirstem" \
             && test "X$dir" != "X/usr/$acl_libdirstem2"; then
            rpathdirs="$rpathdirs $dir"
          fi
          next=
        else
          case $opt in
            -L) next=yes ;;
            -L*) dir=`echo "X$opt" | sed -e 's,^X-L,,'`
                 dnl No need to hardcode the standard /usr/lib.
                 if test "X$dir" != "X/usr/$acl_libdirstem" \
                    && test "X$dir" != "X/usr/$acl_libdirstem2"; then
                   rpathdirs="$rpathdirs $dir"
                 fi
                 next= ;;
            *) next= ;;
          esac
        fi
      done
      if test "X$rpathdirs" != "X"; then
        if test -n ""$3""; then
          dnl libtool is used for linking. Use -R options.
          for dir in $rpathdirs; do
            $1="${$1}${$1:+ }-R$dir"
          done
        else
          dnl The linker is used for linking directly.
          if test -n "$acl_hardcode_libdir_separator"; then
            dnl Weird platform: only the last -rpath option counts, the user
            dnl must pass all path elements in one option.
            alldirs=
            for dir in $rpathdirs; do
              alldirs="${alldirs}${alldirs:+$acl_hardcode_libdir_separator}$dir"
            done
            acl_save_libdir="$libdir"
            libdir="$alldirs"
            eval flag=\"$acl_hardcode_libdir_flag_spec\"
            libdir="$acl_save_libdir"
            $1="$flag"
          else
            dnl The -rpath options are cumulative.
            for dir in $rpathdirs; do
              acl_save_libdir="$libdir"
              libdir="$dir"
              eval flag=\"$acl_hardcode_libdir_flag_spec\"
              libdir="$acl_save_libdir"
              $1="${$1}${$1:+ }$flag"
            done
          fi
        fi
      fi
    fi
  fi
  AC_SUBST([$1])
])

# lib-prefix.m4 serial 14
dnl Copyright (C) 2001-2005, 2008-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl AC_LIB_PREFIX adds to the CPPFLAGS and LDFLAGS the flags that are needed
dnl to access previously installed libraries. The basic assumption is that
dnl a user will want packages to use other packages he previously installed
dnl with the same --prefix option.
dnl This macro is not needed if only AC_LIB_LINKFLAGS is used to locate
dnl libraries, but is otherwise very convenient.
AC_DEFUN([AC_LIB_PREFIX],
[
  AC_BEFORE([$0], [AC_LIB_LINKFLAGS])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AC_LIB_PREPARE_MULTILIB])
  AC_REQUIRE([AC_LIB_PREPARE_PREFIX])
  dnl By default, look in $includedir and $libdir.
  use_additional=yes
  AC_LIB_WITH_FINAL_PREFIX([
    eval additional_includedir=\"$includedir\"
    eval additional_libdir=\"$libdir\"
  ])
  AC_ARG_WITH([lib-prefix],
[[  --with-lib-prefix[=DIR] search for libraries in DIR/include and DIR/lib
  --without-lib-prefix    don't search for libraries in includedir and libdir]],
[
    if test "X$withval" = "Xno"; then
      use_additional=no
    else
      if test "X$withval" = "X"; then
        AC_LIB_WITH_FINAL_PREFIX([
          eval additional_includedir=\"$includedir\"
          eval additional_libdir=\"$libdir\"
        ])
      else
        additional_includedir="$withval/include"
        additional_libdir="$withval/$acl_libdirstem"
      fi
    fi
])
  if test $use_additional = yes; then
    dnl Potentially add $additional_includedir to $CPPFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/include,
    dnl   2. if it's already present in $CPPFLAGS,
    dnl   3. if it's /usr/local/include and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_includedir" != "X/usr/include"; then
      haveit=
      for x in $CPPFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-I$additional_includedir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_includedir" = "X/usr/local/include"; then
          if test -n "$GCC"; then
            case $host_os in
              linux* | gnu* | k*bsd*-gnu) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_includedir"; then
            dnl Really add $additional_includedir to $CPPFLAGS.
            CPPFLAGS="${CPPFLAGS}${CPPFLAGS:+ }-I$additional_includedir"
          fi
        fi
      fi
    fi
    dnl Potentially add $additional_libdir to $LDFLAGS.
    dnl But don't add it
    dnl   1. if it's the standard /usr/lib,
    dnl   2. if it's already present in $LDFLAGS,
    dnl   3. if it's /usr/local/lib and we are using GCC on Linux,
    dnl   4. if it doesn't exist as a directory.
    if test "X$additional_libdir" != "X/usr/$acl_libdirstem"; then
      haveit=
      for x in $LDFLAGS; do
        AC_LIB_WITH_FINAL_PREFIX([eval x=\"$x\"])
        if test "X$x" = "X-L$additional_libdir"; then
          haveit=yes
          break
        fi
      done
      if test -z "$haveit"; then
        if test "X$additional_libdir" = "X/usr/local/$acl_libdirstem"; then
          if test -n "$GCC"; then
            case $host_os in
              linux*) haveit=yes;;
            esac
          fi
        fi
        if test -z "$haveit"; then
          if test -d "$additional_libdir"; then
            dnl Really add $additional_libdir to $LDFLAGS.
            LDFLAGS="${LDFLAGS}${LDFLAGS:+ }-L$additional_libdir"
          fi
        fi
      fi
    fi
  fi
])

dnl AC_LIB_PREPARE_PREFIX creates variables acl_final_prefix,
dnl acl_final_exec_prefix, containing the values to which $prefix and
dnl $exec_prefix will expand at the end of the configure script.
AC_DEFUN([AC_LIB_PREPARE_PREFIX],
[
  dnl Unfortunately, prefix and exec_prefix get only finally determined
  dnl at the end of configure.
  if test "X$prefix" = "XNONE"; then
    acl_final_prefix="$ac_default_prefix"
  else
    acl_final_prefix="$prefix"
  fi
  if test "X$exec_prefix" = "XNONE"; then
    acl_final_exec_prefix='${prefix}'
  else
    acl_final_exec_prefix="$exec_prefix"
  fi
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  eval acl_final_exec_prefix=\"$acl_final_exec_prefix\"
  prefix="$acl_save_prefix"
])

dnl AC_LIB_WITH_FINAL_PREFIX([statement]) evaluates statement, with the
dnl variables prefix and exec_prefix bound to the values they will have
dnl at the end of the configure script.
AC_DEFUN([AC_LIB_WITH_FINAL_PREFIX],
[
  acl_save_prefix="$prefix"
  prefix="$acl_final_prefix"
  acl_save_exec_prefix="$exec_prefix"
  exec_prefix="$acl_final_exec_prefix"
  $1
  exec_prefix="$acl_save_exec_prefix"
  prefix="$acl_save_prefix"
])

dnl AC_LIB_PREPARE_MULTILIB creates
dnl - a variable acl_libdirstem, containing the basename of the libdir, either
dnl   "lib" or "lib64" or "lib/64",
dnl - a variable acl_libdirstem2, as a secondary possible value for
dnl   acl_libdirstem, either the same as acl_libdirstem or "lib/sparcv9" or
dnl   "lib/amd64".
AC_DEFUN([AC_LIB_PREPARE_MULTILIB],
[
  dnl There is no formal standard regarding lib and lib64.
  dnl On glibc systems, the current practice is that on a system supporting
  dnl 32-bit and 64-bit instruction sets or ABIs, 64-bit libraries go under
  dnl $prefix/lib64 and 32-bit libraries go under $prefix/lib. We determine
  dnl the compiler's default mode by looking at the compiler's library search
  dnl path. If at least one of its elements ends in /lib64 or points to a
  dnl directory whose absolute pathname ends in /lib64, we assume a 64-bit ABI.
  dnl Otherwise we use the default, namely "lib".
  dnl On Solaris systems, the current practice is that on a system supporting
  dnl 32-bit and 64-bit instruction sets or ABIs, 64-bit libraries go under
  dnl $prefix/lib/64 (which is a symlink to either $prefix/lib/sparcv9 or
  dnl $prefix/lib/amd64) and 32-bit libraries go under $prefix/lib.
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_HOST_CPU_C_ABI_32BIT])

  case "$host_os" in
    solaris*)
      AC_CACHE_CHECK([for 64-bit host], [gl_cv_solaris_64bit],
        [AC_COMPILE_IFELSE(
           [AC_LANG_SOURCE(
              [[#ifdef _LP64
                 int ok;
                #else
                 error fail
                #endif
              ]])],
           [gl_cv_solaris_64bit=yes],
           [gl_cv_solaris_64bit=no])
        ]);;
  esac

  dnl Allow the user to override the result by setting acl_cv_libdirstems.
  AC_CACHE_CHECK([for the common suffixes of directories in the library search path],
    [acl_cv_libdirstems],
    [acl_libdirstem=lib
     acl_libdirstem2=
     case "$host_os" in
       solaris*)
         dnl See Solaris 10 Software Developer Collection > Solaris 64-bit Developer's Guide > The Development Environment
         dnl <https://docs.oracle.com/cd/E19253-01/816-5138/dev-env/index.html>.
         dnl "Portable Makefiles should refer to any library directories using the 64 symbolic link."
         dnl But we want to recognize the sparcv9 or amd64 subdirectory also if the
         dnl symlink is missing, so we set acl_libdirstem2 too.
         if test $gl_cv_solaris_64bit = yes; then
           acl_libdirstem=lib/64
           case "$host_cpu" in
             sparc*)        acl_libdirstem2=lib/sparcv9 ;;
             i*86 | x86_64) acl_libdirstem2=lib/amd64 ;;
           esac
         fi
         ;;
       *)
         dnl If $CC generates code for a 32-bit ABI, the libraries are
         dnl surely under $prefix/lib, not $prefix/lib64.
         if test "$HOST_CPU_C_ABI_32BIT" != yes; then
           dnl The result is a property of the system. However, non-system
           dnl compilers sometimes have odd library search paths. Therefore
           dnl prefer asking /usr/bin/gcc, if available, rather than $CC.
           searchpath=`(if test -f /usr/bin/gcc \
                           && LC_ALL=C /usr/bin/gcc -print-search-dirs >/dev/null 2>/dev/null; then \
                          LC_ALL=C /usr/bin/gcc -print-search-dirs; \
                        else \
                          LC_ALL=C $CC -print-search-dirs; \
                        fi) 2>/dev/null \
                       | sed -n -e 's,^libraries: ,,p' | sed -e 's,^=,,'`
           if test -n "$searchpath"; then
             acl_save_IFS="${IFS= 	}"; IFS=":"
             for searchdir in $searchpath; do
               if test -d "$searchdir"; then
                 case "$searchdir" in
                   */lib64/ | */lib64 ) acl_libdirstem=lib64 ;;
                   */../ | */.. )
                     # Better ignore directories of this form. They are misleading.
                     ;;
                   *) searchdir=`cd "$searchdir" && pwd`
                      case "$searchdir" in
                        */lib64 ) acl_libdirstem=lib64 ;;
                      esac ;;
                 esac
               fi
             done
             IFS="$acl_save_IFS"
           fi
         fi
         ;;
     esac
     test -n "$acl_libdirstem2" || acl_libdirstem2="$acl_libdirstem"
     acl_cv_libdirstems="$acl_libdirstem,$acl_libdirstem2"
    ])
  # Decompose acl_cv_libdirstems into acl_libdirstem and acl_libdirstem2.
  acl_libdirstem=`echo "$acl_cv_libdirstems" | sed -e 's/,.*//'`
  acl_libdirstem2=`echo "$acl_cv_libdirstems" | sed -e '/,/s/.*,//'`
])

# nls.m4 serial 5 (gettext-0.18)
dnl Copyright (C) 1995-2003, 2005-2006, 2008-2014, 2016, 2019 Free Software
dnl Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

AC_PREREQ([2.50])

AC_DEFUN([AM_NLS],
[
  AC_MSG_CHECKING([whether NLS is requested])
  dnl Default is enabled NLS
  AC_ARG_ENABLE([nls],
    [  --disable-nls           do not use Native Language Support],
    USE_NLS=$enableval, USE_NLS=yes)
  AC_MSG_RESULT([$USE_NLS])
  AC_SUBST([USE_NLS])
])

# pkg.m4 - Macros to locate and utilise pkg-config.   -*- Autoconf -*-
# serial 12 (pkg-config-0.29.2)

dnl Copyright © 2004 Scott James Remnant <scott@netsplit.com>.
dnl Copyright © 2012-2015 Dan Nicholson <dbn.lists@gmail.com>
dnl
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 2 of the License, or
dnl (at your option) any later version.
dnl
dnl This program is distributed in the hope that it will be useful, but
dnl WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
dnl General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program; if not, write to the Free Software
dnl Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
dnl 02111-1307, USA.
dnl
dnl As a special exception to the GNU General Public License, if you
dnl distribute this file as part of a program that contains a
dnl configuration script generated by Autoconf, you may include it under
dnl the same distribution terms that you use for the rest of that
dnl program.

dnl PKG_PREREQ(MIN-VERSION)
dnl -----------------------
dnl Since: 0.29
dnl
dnl Verify that the version of the pkg-config macros are at least
dnl MIN-VERSION. Unlike PKG_PROG_PKG_CONFIG, which checks the user's
dnl installed version of pkg-config, this checks the developer's version
dnl of pkg.m4 when generating configure.
dnl
dnl To ensure that this macro is defined, also add:
dnl m4_ifndef([PKG_PREREQ],
dnl     [m4_fatal([must install pkg-config 0.29 or later before running autoconf/autogen])])
dnl
dnl See the "Since" comment for each macro you use to see what version
dnl of the macros you require.
m4_defun([PKG_PREREQ],
[m4_define([PKG_MACROS_VERSION], [0.29.2])
m4_if(m4_version_compare(PKG_MACROS_VERSION, [$1]), -1,
    [m4_fatal([pkg.m4 version $1 or higher is required but ]PKG_MACROS_VERSION[ found])])
])dnl PKG_PREREQ

dnl PKG_PROG_PKG_CONFIG([MIN-VERSION])
dnl ----------------------------------
dnl Since: 0.16
dnl
dnl Search for the pkg-config tool and set the PKG_CONFIG variable to
dnl first found in the path. Checks that the version of pkg-config found
dnl is at least MIN-VERSION. If MIN-VERSION is not specified, 0.9.0 is
dnl used since that's the first version where most current features of
dnl pkg-config existed.
AC_DEFUN([PKG_PROG_PKG_CONFIG],
[m4_pattern_forbid([^_?PKG_[A-Z_]+$])
m4_pattern_allow([^PKG_CONFIG(_(PATH|LIBDIR|SYSROOT_DIR|ALLOW_SYSTEM_(CFLAGS|LIBS)))?$])
m4_pattern_allow([^PKG_CONFIG_(DISABLE_UNINSTALLED|TOP_BUILD_DIR|DEBUG_SPEW)$])
AC_ARG_VAR([PKG_CONFIG], [path to pkg-config utility])
AC_ARG_VAR([PKG_CONFIG_PATH], [directories to add to pkg-config's search path])
AC_ARG_VAR([PKG_CONFIG_LIBDIR], [path overriding pkg-config's built-in search path])

if test "x$ac_cv_env_PKG_CONFIG_set" != "xset"; then
	AC_PATH_TOOL([PKG_CONFIG], [pkg-config])
fi
if test -n "$PKG_CONFIG"; then
	_pkg_min_version=m4_default([$1], [0.9.0])
	AC_MSG_CHECKING([pkg-config is at least version $_pkg_min_version])
	if $PKG_CONFIG --atleast-pkgconfig-version $_pkg_min_version; then
		AC_MSG_RESULT([yes])
	else
		AC_MSG_RESULT([no])
		PKG_CONFIG=""
	fi
fi[]dnl
])dnl PKG_PROG_PKG_CONFIG

dnl PKG_CHECK_EXISTS(MODULES, [ACTION-IF-FOUND], [ACTION-IF-NOT-FOUND])
dnl -------------------------------------------------------------------
dnl Since: 0.18
dnl
dnl Check to see whether a particular set of modules exists. Similar to
dnl PKG_CHECK_MODULES(), but does not set variables or print errors.
dnl
dnl Please remember that m4 expands AC_REQUIRE([PKG_PROG_PKG_CONFIG])
dnl only at the first occurence in configure.ac, so if the first place
dnl it's called might be skipped (such as if it is within an "if", you
dnl have to call PKG_CHECK_EXISTS manually
AC_DEFUN([PKG_CHECK_EXISTS],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
if test -n "$PKG_CONFIG" && \
    AC_RUN_LOG([$PKG_CONFIG --exists --print-errors "$1"]); then
  m4_default([$2], [:])
m4_ifvaln([$3], [else
  $3])dnl
fi])

dnl _PKG_CONFIG([VARIABLE], [COMMAND], [MODULES])
dnl ---------------------------------------------
dnl Internal wrapper calling pkg-config via PKG_CONFIG and setting
dnl pkg_failed based on the result.
m4_define([_PKG_CONFIG],
[if test -n "$$1"; then
    pkg_cv_[]$1="$$1"
 elif test -n "$PKG_CONFIG"; then
    PKG_CHECK_EXISTS([$3],
                     [pkg_cv_[]$1=`$PKG_CONFIG --[]$2 "$3" 2>/dev/null`
		      test "x$?" != "x0" && pkg_failed=yes ],
		     [pkg_failed=yes])
 else
    pkg_failed=untried
fi[]dnl
])dnl _PKG_CONFIG

dnl _PKG_SHORT_ERRORS_SUPPORTED
dnl ---------------------------
dnl Internal check to see if pkg-config supports short errors.
AC_DEFUN([_PKG_SHORT_ERRORS_SUPPORTED],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])
if $PKG_CONFIG --atleast-pkgconfig-version 0.20; then
        _pkg_short_errors_supported=yes
else
        _pkg_short_errors_supported=no
fi[]dnl
])dnl _PKG_SHORT_ERRORS_SUPPORTED


dnl PKG_CHECK_MODULES(VARIABLE-PREFIX, MODULES, [ACTION-IF-FOUND],
dnl   [ACTION-IF-NOT-FOUND])
dnl --------------------------------------------------------------
dnl Since: 0.4.0
dnl
dnl Note that if there is a possibility the first call to
dnl PKG_CHECK_MODULES might not happen, you should be sure to include an
dnl explicit call to PKG_PROG_PKG_CONFIG in your configure.ac
AC_DEFUN([PKG_CHECK_MODULES],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
AC_ARG_VAR([$1][_CFLAGS], [C compiler flags for $1, overriding pkg-config])dnl
AC_ARG_VAR([$1][_LIBS], [linker flags for $1, overriding pkg-config])dnl

pkg_failed=no
AC_MSG_CHECKING([for $2])

_PKG_CONFIG([$1][_CFLAGS], [cflags], [$2])
_PKG_CONFIG([$1][_LIBS], [libs], [$2])

m4_define([_PKG_TEXT], [Alternatively, you may set the environment variables $1[]_CFLAGS
and $1[]_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.])

if test $pkg_failed = yes; then
        AC_MSG_RESULT([no])
        _PKG_SHORT_ERRORS_SUPPORTED
        if test $_pkg_short_errors_supported = yes; then
	        $1[]_PKG_ERRORS=`$PKG_CONFIG --short-errors --print-errors --cflags --libs "$2" 2>&1`
        else
	        $1[]_PKG_ERRORS=`$PKG_CONFIG --print-errors --cflags --libs "$2" 2>&1`
        fi
	# Put the nasty error message in config.log where it belongs
	echo "$$1[]_PKG_ERRORS" >&AS_MESSAGE_LOG_FD

	m4_default([$4], [AC_MSG_ERROR(
[Package requirements ($2) were not met:

$$1_PKG_ERRORS

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

_PKG_TEXT])[]dnl
        ])
elif test $pkg_failed = untried; then
        AC_MSG_RESULT([no])
	m4_default([$4], [AC_MSG_FAILURE(
[The pkg-config script could not be found or is too old.  Make sure it
is in your PATH or set the PKG_CONFIG environment variable to the full
path to pkg-config.

_PKG_TEXT

To get pkg-config, see <http://pkg-config.freedesktop.org/>.])[]dnl
        ])
else
	$1[]_CFLAGS=$pkg_cv_[]$1[]_CFLAGS
	$1[]_LIBS=$pkg_cv_[]$1[]_LIBS
        AC_MSG_RESULT([yes])
	$3
fi[]dnl
])dnl PKG_CHECK_MODULES


dnl PKG_CHECK_MODULES_STATIC(VARIABLE-PREFIX, MODULES, [ACTION-IF-FOUND],
dnl   [ACTION-IF-NOT-FOUND])
dnl ---------------------------------------------------------------------
dnl Since: 0.29
dnl
dnl Checks for existence of MODULES and gathers its build flags with
dnl static libraries enabled. Sets VARIABLE-PREFIX_CFLAGS from --cflags
dnl and VARIABLE-PREFIX_LIBS from --libs.
dnl
dnl Note that if there is a possibility the first call to
dnl PKG_CHECK_MODULES_STATIC might not happen, you should be sure to
dnl include an explicit call to PKG_PROG_PKG_CONFIG in your
dnl configure.ac.
AC_DEFUN([PKG_CHECK_MODULES_STATIC],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
_save_PKG_CONFIG=$PKG_CONFIG
PKG_CONFIG="$PKG_CONFIG --static"
PKG_CHECK_MODULES($@)
PKG_CONFIG=$_save_PKG_CONFIG[]dnl
])dnl PKG_CHECK_MODULES_STATIC


dnl PKG_INSTALLDIR([DIRECTORY])
dnl -------------------------
dnl Since: 0.27
dnl
dnl Substitutes the variable pkgconfigdir as the location where a module
dnl should install pkg-config .pc files. By default the directory is
dnl $libdir/pkgconfig, but the default can be changed by passing
dnl DIRECTORY. The user can override through the --with-pkgconfigdir
dnl parameter.
AC_DEFUN([PKG_INSTALLDIR],
[m4_pushdef([pkg_default], [m4_default([$1], ['${libdir}/pkgconfig'])])
m4_pushdef([pkg_description],
    [pkg-config installation directory @<:@]pkg_default[@:>@])
AC_ARG_WITH([pkgconfigdir],
    [AS_HELP_STRING([--with-pkgconfigdir], pkg_description)],,
    [with_pkgconfigdir=]pkg_default)
AC_SUBST([pkgconfigdir], [$with_pkgconfigdir])
m4_popdef([pkg_default])
m4_popdef([pkg_description])
])dnl PKG_INSTALLDIR


dnl PKG_NOARCH_INSTALLDIR([DIRECTORY])
dnl --------------------------------
dnl Since: 0.27
dnl
dnl Substitutes the variable noarch_pkgconfigdir as the location where a
dnl module should install arch-independent pkg-config .pc files. By
dnl default the directory is $datadir/pkgconfig, but the default can be
dnl changed by passing DIRECTORY. The user can override through the
dnl --with-noarch-pkgconfigdir parameter.
AC_DEFUN([PKG_NOARCH_INSTALLDIR],
[m4_pushdef([pkg_default], [m4_default([$1], ['${datadir}/pkgconfig'])])
m4_pushdef([pkg_description],
    [pkg-config arch-independent installation directory @<:@]pkg_default[@:>@])
AC_ARG_WITH([noarch-pkgconfigdir],
    [AS_HELP_STRING([--with-noarch-pkgconfigdir], pkg_description)],,
    [with_noarch_pkgconfigdir=]pkg_default)
AC_SUBST([noarch_pkgconfigdir], [$with_noarch_pkgconfigdir])
m4_popdef([pkg_default])
m4_popdef([pkg_description])
])dnl PKG_NOARCH_INSTALLDIR


dnl PKG_CHECK_VAR(VARIABLE, MODULE, CONFIG-VARIABLE,
dnl [ACTION-IF-FOUND], [ACTION-IF-NOT-FOUND])
dnl -------------------------------------------
dnl Since: 0.28
dnl
dnl Retrieves the value of the pkg-config variable for the given module.
AC_DEFUN([PKG_CHECK_VAR],
[AC_REQUIRE([PKG_PROG_PKG_CONFIG])dnl
AC_ARG_VAR([$1], [value of $3 for $2, overriding pkg-config])dnl

_PKG_CONFIG([$1], [variable="][$3]["], [$2])
AS_VAR_COPY([$1], [pkg_cv_][$1])

AS_VAR_IF([$1], [""], [$5], [$4])dnl
])dnl PKG_CHECK_VAR

# po.m4 serial 30 (gettext-0.20)
dnl Copyright (C) 1995-2014, 2016, 2018-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1995-2000.
dnl   Bruno Haible <haible@clisp.cons.org>, 2000-2003.

AC_PREREQ([2.60])

dnl Checks for all prerequisites of the po subdirectory.
AC_DEFUN([AM_PO_SUBDIRS],
[
  AC_REQUIRE([AC_PROG_MAKE_SET])dnl
  AC_REQUIRE([AC_PROG_INSTALL])dnl
  AC_REQUIRE([AC_PROG_MKDIR_P])dnl
  AC_REQUIRE([AC_PROG_SED])dnl
  AC_REQUIRE([AM_NLS])dnl

  dnl Release version of the gettext macros. This is used to ensure that
  dnl the gettext macros and po/Makefile.in.in are in sync.
  AC_SUBST([GETTEXT_MACRO_VERSION], [0.20])

  dnl Perform the following tests also if --disable-nls has been given,
  dnl because they are needed for "make dist" to work.

  dnl Search for GNU msgfmt in the PATH.
  dnl The first test excludes Solaris msgfmt and early GNU msgfmt versions.
  dnl The second test excludes FreeBSD msgfmt.
  AM_PATH_PROG_WITH_TEST(MSGFMT, msgfmt,
    [$ac_dir/$ac_word --statistics /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1 &&
     (if $ac_dir/$ac_word --statistics /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  AC_PATH_PROG([GMSGFMT], [gmsgfmt], [$MSGFMT])

  dnl Test whether it is GNU msgfmt >= 0.15.
changequote(,)dnl
  case `$GMSGFMT --version | sed 1q | sed -e 's,^[^0-9]*,,'` in
    '' | 0.[0-9] | 0.[0-9].* | 0.1[0-4] | 0.1[0-4].*) GMSGFMT_015=: ;;
    *) GMSGFMT_015=$GMSGFMT ;;
  esac
changequote([,])dnl
  AC_SUBST([GMSGFMT_015])

  dnl Search for GNU xgettext 0.12 or newer in the PATH.
  dnl The first test excludes Solaris xgettext and early GNU xgettext versions.
  dnl The second test excludes FreeBSD xgettext.
  AM_PATH_PROG_WITH_TEST(XGETTEXT, xgettext,
    [$ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1 &&
     (if $ac_dir/$ac_word --omit-header --copyright-holder= --msgid-bugs-address= /dev/null 2>&1 >/dev/null | grep usage >/dev/null; then exit 1; else exit 0; fi)],
    :)
  dnl Remove leftover from FreeBSD xgettext call.
  rm -f messages.po

  dnl Test whether it is GNU xgettext >= 0.15.
changequote(,)dnl
  case `$XGETTEXT --version | sed 1q | sed -e 's,^[^0-9]*,,'` in
    '' | 0.[0-9] | 0.[0-9].* | 0.1[0-4] | 0.1[0-4].*) XGETTEXT_015=: ;;
    *) XGETTEXT_015=$XGETTEXT ;;
  esac
changequote([,])dnl
  AC_SUBST([XGETTEXT_015])

  dnl Search for GNU msgmerge 0.11 or newer in the PATH.
  AM_PATH_PROG_WITH_TEST(MSGMERGE, msgmerge,
    [$ac_dir/$ac_word --update -q /dev/null /dev/null >&]AS_MESSAGE_LOG_FD[ 2>&1], :)

  dnl Test whether it is GNU msgmerge >= 0.20.
  if LC_ALL=C $MSGMERGE --help | grep ' --for-msgfmt ' >/dev/null; then
    MSGMERGE_FOR_MSGFMT_OPTION='--for-msgfmt'
  else
    dnl Test whether it is GNU msgmerge >= 0.12.
    if LC_ALL=C $MSGMERGE --help | grep ' --no-fuzzy-matching ' >/dev/null; then
      MSGMERGE_FOR_MSGFMT_OPTION='--no-fuzzy-matching --no-location --quiet'
    else
      dnl With these old versions, $(MSGMERGE) $(MSGMERGE_FOR_MSGFMT_OPTION) is
      dnl slow. But this is not a big problem, as such old gettext versions are
      dnl hardly in use any more.
      MSGMERGE_FOR_MSGFMT_OPTION='--no-location --quiet'
    fi
  fi
  AC_SUBST([MSGMERGE_FOR_MSGFMT_OPTION])

  dnl Support for AM_XGETTEXT_OPTION.
  test -n "${XGETTEXT_EXTRA_OPTIONS+set}" || XGETTEXT_EXTRA_OPTIONS=
  AC_SUBST([XGETTEXT_EXTRA_OPTIONS])

  AC_CONFIG_COMMANDS([po-directories], [[
    for ac_file in $CONFIG_FILES; do
      # Support "outfile[:infile[:infile...]]"
      case "$ac_file" in
        *:*) ac_file=`echo "$ac_file"|sed 's%:.*%%'` ;;
      esac
      # PO directories have a Makefile.in generated from Makefile.in.in.
      case "$ac_file" in */Makefile.in)
        # Adjust a relative srcdir.
        ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
        ac_dir_suffix=/`echo "$ac_dir"|sed 's%^\./%%'`
        ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
        # In autoconf-2.13 it is called $ac_given_srcdir.
        # In autoconf-2.50 it is called $srcdir.
        test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
        case "$ac_given_srcdir" in
          .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
          /*) top_srcdir="$ac_given_srcdir" ;;
          *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
        esac
        # Treat a directory as a PO directory if and only if it has a
        # POTFILES.in file. This allows packages to have multiple PO
        # directories under different names or in different locations.
        if test -f "$ac_given_srcdir/$ac_dir/POTFILES.in"; then
          rm -f "$ac_dir/POTFILES"
          test -n "$as_me" && echo "$as_me: creating $ac_dir/POTFILES" || echo "creating $ac_dir/POTFILES"
          gt_tab=`printf '\t'`
          cat "$ac_given_srcdir/$ac_dir/POTFILES.in" | sed -e "/^#/d" -e "/^[ ${gt_tab}]*\$/d" -e "s,.*,     $top_srcdir/& \\\\," | sed -e "\$s/\(.*\) \\\\/\1/" > "$ac_dir/POTFILES"
          POMAKEFILEDEPS="POTFILES.in"
          # ALL_LINGUAS, POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES depend
          # on $ac_dir but don't depend on user-specified configuration
          # parameters.
          if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
            # The LINGUAS file contains the set of available languages.
            if test -n "$OBSOLETE_ALL_LINGUAS"; then
              test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
            fi
            ALL_LINGUAS=`sed -e "/^#/d" -e "s/#.*//" "$ac_given_srcdir/$ac_dir/LINGUAS"`
            POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
          else
            # The set of available languages was given in configure.in.
            ALL_LINGUAS=$OBSOLETE_ALL_LINGUAS
          fi
          # Compute POFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
          # Compute UPDATEPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
          # Compute DUMMYPOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
          # Compute GMOFILES
          # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
          case "$ac_given_srcdir" in
            .) srcdirpre= ;;
            *) srcdirpre='$(srcdir)/' ;;
          esac
          POFILES=
          UPDATEPOFILES=
          DUMMYPOFILES=
          GMOFILES=
          for lang in $ALL_LINGUAS; do
            POFILES="$POFILES $srcdirpre$lang.po"
            UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
            DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
            GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
          done
          # CATALOGS depends on both $ac_dir and the user's LINGUAS
          # environment variable.
          INST_LINGUAS=
          if test -n "$ALL_LINGUAS"; then
            for presentlang in $ALL_LINGUAS; do
              useit=no
              if test "%UNSET%" != "$LINGUAS"; then
                desiredlanguages="$LINGUAS"
              else
                desiredlanguages="$ALL_LINGUAS"
              fi
              for desiredlang in $desiredlanguages; do
                # Use the presentlang catalog if desiredlang is
                #   a. equal to presentlang, or
                #   b. a variant of presentlang (because in this case,
                #      presentlang can be used as a fallback for messages
                #      which are not translated in the desiredlang catalog).
                case "$desiredlang" in
                  "$presentlang"*) useit=yes;;
                esac
              done
              if test $useit = yes; then
                INST_LINGUAS="$INST_LINGUAS $presentlang"
              fi
            done
          fi
          CATALOGS=
          if test -n "$INST_LINGUAS"; then
            for lang in $INST_LINGUAS; do
              CATALOGS="$CATALOGS $lang.gmo"
            done
          fi
          test -n "$as_me" && echo "$as_me: creating $ac_dir/Makefile" || echo "creating $ac_dir/Makefile"
          sed -e "/^POTFILES =/r $ac_dir/POTFILES" -e "/^# Makevars/r $ac_given_srcdir/$ac_dir/Makevars" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@POMAKEFILEDEPS@|$POMAKEFILEDEPS|g" "$ac_dir/Makefile.in" > "$ac_dir/Makefile"
          for f in "$ac_given_srcdir/$ac_dir"/Rules-*; do
            if test -f "$f"; then
              case "$f" in
                *.orig | *.bak | *~) ;;
                *) cat "$f" >> "$ac_dir/Makefile" ;;
              esac
            fi
          done
        fi
        ;;
      esac
    done]],
   [# Capture the value of obsolete ALL_LINGUAS because we need it to compute
    # POFILES, UPDATEPOFILES, DUMMYPOFILES, GMOFILES, CATALOGS.
    OBSOLETE_ALL_LINGUAS="$ALL_LINGUAS"
    # Capture the value of LINGUAS because we need it to compute CATALOGS.
    LINGUAS="${LINGUAS-%UNSET%}"
   ])
])

dnl Postprocesses a Makefile in a directory containing PO files.
AC_DEFUN([AM_POSTPROCESS_PO_MAKEFILE],
[
  # When this code is run, in config.status, two variables have already been
  # set:
  # - OBSOLETE_ALL_LINGUAS is the value of LINGUAS set in configure.in,
  # - LINGUAS is the value of the environment variable LINGUAS at configure
  #   time.

changequote(,)dnl
  # Adjust a relative srcdir.
  ac_dir=`echo "$ac_file"|sed 's%/[^/][^/]*$%%'`
  ac_dir_suffix=/`echo "$ac_dir"|sed 's%^\./%%'`
  ac_dots=`echo "$ac_dir_suffix"|sed 's%/[^/]*%../%g'`
  # In autoconf-2.13 it is called $ac_given_srcdir.
  # In autoconf-2.50 it is called $srcdir.
  test -n "$ac_given_srcdir" || ac_given_srcdir="$srcdir"
  case "$ac_given_srcdir" in
    .)  top_srcdir=`echo $ac_dots|sed 's%/$%%'` ;;
    /*) top_srcdir="$ac_given_srcdir" ;;
    *)  top_srcdir="$ac_dots$ac_given_srcdir" ;;
  esac

  # Find a way to echo strings without interpreting backslash.
  if test "X`(echo '\t') 2>/dev/null`" = 'X\t'; then
    gt_echo='echo'
  else
    if test "X`(printf '%s\n' '\t') 2>/dev/null`" = 'X\t'; then
      gt_echo='printf %s\n'
    else
      echo_func () {
        cat <<EOT
$*
EOT
      }
      gt_echo='echo_func'
    fi
  fi

  # A sed script that extracts the value of VARIABLE from a Makefile.
  tab=`printf '\t'`
  sed_x_variable='
# Test if the hold space is empty.
x
s/P/P/
x
ta
# Yes it was empty. Look if we have the expected variable definition.
/^['"${tab}"' ]*VARIABLE['"${tab}"' ]*=/{
  # Seen the first line of the variable definition.
  s/^['"${tab}"' ]*VARIABLE['"${tab}"' ]*=//
  ba
}
bd
:a
# Here we are processing a line from the variable definition.
# Remove comment, more precisely replace it with a space.
s/#.*$/ /
# See if the line ends in a backslash.
tb
:b
s/\\$//
# Print the line, without the trailing backslash.
p
tc
# There was no trailing backslash. The end of the variable definition is
# reached. Clear the hold space.
s/^.*$//
x
bd
:c
# A trailing backslash means that the variable definition continues in the
# next line. Put a nonempty string into the hold space to indicate this.
s/^.*$/P/
x
:d
'
changequote([,])dnl

  # Set POTFILES to the value of the Makefile variable POTFILES.
  sed_x_POTFILES=`$gt_echo "$sed_x_variable" | sed -e '/^ *#/d' -e 's/VARIABLE/POTFILES/g'`
  POTFILES=`sed -n -e "$sed_x_POTFILES" < "$ac_file"`
  # Compute POTFILES_DEPS as
  #   $(foreach file, $(POTFILES), $(top_srcdir)/$(file))
  POTFILES_DEPS=
  for file in $POTFILES; do
    POTFILES_DEPS="$POTFILES_DEPS "'$(top_srcdir)/'"$file"
  done
  POMAKEFILEDEPS=""

  if test -n "$OBSOLETE_ALL_LINGUAS"; then
    test -n "$as_me" && echo "$as_me: setting ALL_LINGUAS in configure.in is obsolete" || echo "setting ALL_LINGUAS in configure.in is obsolete"
  fi
  if test -f "$ac_given_srcdir/$ac_dir/LINGUAS"; then
    # The LINGUAS file contains the set of available languages.
    ALL_LINGUAS=`sed -e "/^#/d" -e "s/#.*//" "$ac_given_srcdir/$ac_dir/LINGUAS"`
    POMAKEFILEDEPS="$POMAKEFILEDEPS LINGUAS"
  else
    # Set ALL_LINGUAS to the value of the Makefile variable LINGUAS.
    sed_x_LINGUAS=`$gt_echo "$sed_x_variable" | sed -e '/^ *#/d' -e 's/VARIABLE/LINGUAS/g'`
    ALL_LINGUAS=`sed -n -e "$sed_x_LINGUAS" < "$ac_file"`
  fi
  # Compute POFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).po)
  # Compute UPDATEPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).po-update)
  # Compute DUMMYPOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(lang).nop)
  # Compute GMOFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).gmo)
  # Compute PROPERTIESFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(DOMAIN)_$(lang).properties)
  # Compute CLASSFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(DOMAIN)_$(lang).class)
  # Compute QMFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(lang).qm)
  # Compute MSGFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang)).msg)
  # Compute RESOURCESDLLFILES
  # as      $(foreach lang, $(ALL_LINGUAS), $(srcdir)/$(frob $(lang))/$(DOMAIN).resources.dll)
  case "$ac_given_srcdir" in
    .) srcdirpre= ;;
    *) srcdirpre='$(srcdir)/' ;;
  esac
  POFILES=
  UPDATEPOFILES=
  DUMMYPOFILES=
  GMOFILES=
  PROPERTIESFILES=
  CLASSFILES=
  QMFILES=
  MSGFILES=
  RESOURCESDLLFILES=
  for lang in $ALL_LINGUAS; do
    POFILES="$POFILES $srcdirpre$lang.po"
    UPDATEPOFILES="$UPDATEPOFILES $lang.po-update"
    DUMMYPOFILES="$DUMMYPOFILES $lang.nop"
    GMOFILES="$GMOFILES $srcdirpre$lang.gmo"
    PROPERTIESFILES="$PROPERTIESFILES \$(srcdir)/\$(DOMAIN)_$lang.properties"
    CLASSFILES="$CLASSFILES \$(srcdir)/\$(DOMAIN)_$lang.class"
    QMFILES="$QMFILES $srcdirpre$lang.qm"
    frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
    MSGFILES="$MSGFILES $srcdirpre$frobbedlang.msg"
    frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
    RESOURCESDLLFILES="$RESOURCESDLLFILES $srcdirpre$frobbedlang/\$(DOMAIN).resources.dll"
  done
  # CATALOGS depends on both $ac_dir and the user's LINGUAS
  # environment variable.
  INST_LINGUAS=
  if test -n "$ALL_LINGUAS"; then
    for presentlang in $ALL_LINGUAS; do
      useit=no
      if test "%UNSET%" != "$LINGUAS"; then
        desiredlanguages="$LINGUAS"
      else
        desiredlanguages="$ALL_LINGUAS"
      fi
      for desiredlang in $desiredlanguages; do
        # Use the presentlang catalog if desiredlang is
        #   a. equal to presentlang, or
        #   b. a variant of presentlang (because in this case,
        #      presentlang can be used as a fallback for messages
        #      which are not translated in the desiredlang catalog).
        case "$desiredlang" in
          "$presentlang"*) useit=yes;;
        esac
      done
      if test $useit = yes; then
        INST_LINGUAS="$INST_LINGUAS $presentlang"
      fi
    done
  fi
  CATALOGS=
  JAVACATALOGS=
  QTCATALOGS=
  TCLCATALOGS=
  CSHARPCATALOGS=
  if test -n "$INST_LINGUAS"; then
    for lang in $INST_LINGUAS; do
      CATALOGS="$CATALOGS $lang.gmo"
      JAVACATALOGS="$JAVACATALOGS \$(DOMAIN)_$lang.properties"
      QTCATALOGS="$QTCATALOGS $lang.qm"
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      TCLCATALOGS="$TCLCATALOGS $frobbedlang.msg"
      frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
      CSHARPCATALOGS="$CSHARPCATALOGS $frobbedlang/\$(DOMAIN).resources.dll"
    done
  fi

  sed -e "s|@POTFILES_DEPS@|$POTFILES_DEPS|g" -e "s|@POFILES@|$POFILES|g" -e "s|@UPDATEPOFILES@|$UPDATEPOFILES|g" -e "s|@DUMMYPOFILES@|$DUMMYPOFILES|g" -e "s|@GMOFILES@|$GMOFILES|g" -e "s|@PROPERTIESFILES@|$PROPERTIESFILES|g" -e "s|@CLASSFILES@|$CLASSFILES|g" -e "s|@QMFILES@|$QMFILES|g" -e "s|@MSGFILES@|$MSGFILES|g" -e "s|@RESOURCESDLLFILES@|$RESOURCESDLLFILES|g" -e "s|@CATALOGS@|$CATALOGS|g" -e "s|@JAVACATALOGS@|$JAVACATALOGS|g" -e "s|@QTCATALOGS@|$QTCATALOGS|g" -e "s|@TCLCATALOGS@|$TCLCATALOGS|g" -e "s|@CSHARPCATALOGS@|$CSHARPCATALOGS|g" -e 's,^#distdir:,distdir:,' < "$ac_file" > "$ac_file.tmp"
  tab=`printf '\t'`
  if grep -l '@TCLCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/\..*$//' -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang.msg: $lang.po
${tab}@echo "\$(MSGFMT) -c --tcl -d \$(srcdir) -l $lang $srcdirpre$lang.po"; \
${tab}\$(MSGFMT) -c --tcl -d "\$(srcdir)" -l $lang $srcdirpre$lang.po || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if grep -l '@CSHARPCATALOGS@' "$ac_file" > /dev/null; then
    # Add dependencies that cannot be formulated as a simple suffix rule.
    for lang in $ALL_LINGUAS; do
      frobbedlang=`echo $lang | sed -e 's/_/-/g' -e 's/^sr-CS/sr-SP/' -e 's/@latin$/-Latn/' -e 's/@cyrillic$/-Cyrl/' -e 's/^sr-SP$/sr-SP-Latn/' -e 's/^uz-UZ$/uz-UZ-Latn/'`
      cat >> "$ac_file.tmp" <<EOF
$frobbedlang/\$(DOMAIN).resources.dll: $lang.po
${tab}@echo "\$(MSGFMT) -c --csharp -d \$(srcdir) -l $lang $srcdirpre$lang.po -r \$(DOMAIN)"; \
${tab}\$(MSGFMT) -c --csharp -d "\$(srcdir)" -l $lang $srcdirpre$lang.po -r "\$(DOMAIN)" || { rm -f "\$(srcdir)/$frobbedlang.msg"; exit 1; }
EOF
    done
  fi
  if test -n "$POMAKEFILEDEPS"; then
    cat >> "$ac_file.tmp" <<EOF
Makefile: $POMAKEFILEDEPS
EOF
  fi
  mv "$ac_file.tmp" "$ac_file"
])

dnl Initializes the accumulator used by AM_XGETTEXT_OPTION.
AC_DEFUN([AM_XGETTEXT_OPTION_INIT],
[
  XGETTEXT_EXTRA_OPTIONS=
])

dnl Registers an option to be passed to xgettext in the po subdirectory.
AC_DEFUN([AM_XGETTEXT_OPTION],
[
  AC_REQUIRE([AM_XGETTEXT_OPTION_INIT])
  XGETTEXT_EXTRA_OPTIONS="$XGETTEXT_EXTRA_OPTIONS $1"
])

# progtest.m4 serial 7 (gettext-0.18.2)
dnl Copyright (C) 1996-2003, 2005, 2008-2019 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Authors:
dnl   Ulrich Drepper <drepper@cygnus.com>, 1996.

AC_PREREQ([2.50])

# Search path for a program which passes the given test.

dnl AM_PATH_PROG_WITH_TEST(VARIABLE, PROG-TO-CHECK-FOR,
dnl   TEST-PERFORMED-ON-FOUND_PROGRAM [, VALUE-IF-NOT-FOUND [, PATH]])
AC_DEFUN([AM_PATH_PROG_WITH_TEST],
[
# Prepare PATH_SEPARATOR.
# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  # Determine PATH_SEPARATOR by trying to find /bin/sh in a PATH which
  # contains only /bin. Note that ksh looks also at the FPATH variable,
  # so we have to set that as well for the test.
  PATH_SEPARATOR=:
  (PATH='/bin;/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 \
    && { (PATH='/bin:/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 \
           || PATH_SEPARATOR=';'
       }
fi

# Find out how to test for executable files. Don't use a zero-byte file,
# as systems may use methods other than mode bits to determine executability.
cat >conf$$.file <<_ASEOF
#! /bin/sh
exit 0
_ASEOF
chmod +x conf$$.file
if test -x conf$$.file >/dev/null 2>&1; then
  ac_executable_p="test -x"
else
  ac_executable_p="test -f"
fi
rm -f conf$$.file

# Extract the first word of "$2", so it can be a program name with args.
set dummy $2; ac_word=[$]2
AC_MSG_CHECKING([for $ac_word])
AC_CACHE_VAL([ac_cv_path_$1],
[case "[$]$1" in
  [[\\/]]* | ?:[[\\/]]*)
    ac_cv_path_$1="[$]$1" # Let the user override the test with a path.
    ;;
  *)
    ac_save_IFS="$IFS"; IFS=$PATH_SEPARATOR
    for ac_dir in ifelse([$5], , $PATH, [$5]); do
      IFS="$ac_save_IFS"
      test -z "$ac_dir" && ac_dir=.
      for ac_exec_ext in '' $ac_executable_extensions; do
        if $ac_executable_p "$ac_dir/$ac_word$ac_exec_ext"; then
          echo "$as_me: trying $ac_dir/$ac_word..." >&AS_MESSAGE_LOG_FD
          if [$3]; then
            ac_cv_path_$1="$ac_dir/$ac_word$ac_exec_ext"
            break 2
          fi
        fi
      done
    done
    IFS="$ac_save_IFS"
dnl If no 4th arg is given, leave the cache variable unset,
dnl so AC_PATH_PROGS will keep looking.
ifelse([$4], , , [  test -z "[$]ac_cv_path_$1" && ac_cv_path_$1="$4"
])dnl
    ;;
esac])dnl
$1="$ac_cv_path_$1"
if test ifelse([$4], , [-n "[$]$1"], ["[$]$1" != "$4"]); then
  AC_MSG_RESULT([$][$1])
else
  AC_MSG_RESULT([no])
fi
AC_SUBST([$1])dnl
])

# 00gnulib.m4 serial 8
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl This file must be named something that sorts before all other
dnl gnulib-provided .m4 files.  It is needed until the clang fix has
dnl been included in Autoconf.

# The following definitions arrange to use a compiler option
# -Werror=implicit-function-declaration in AC_CHECK_DECL, when the
# compiler is clang.  Without it, clang implicitly declares "known"
# library functions in C mode, but not in C++ mode, which would cause
# Gnulib to omit a declaration and thus later produce an error in C++
# mode.  As of clang 9.0, these "known" functions are identified through
# LIBBUILTIN invocations in the LLVM source file
# llvm/tools/clang/include/clang/Basic/Builtins.def.
# It's not possible to AC_REQUIRE the extra tests from AC_CHECK_DECL,
# because AC_CHECK_DECL, like other Autoconf built-ins, is not supposed
# to AC_REQUIRE anything: some configure.ac files have their first
# AC_CHECK_DECL executed conditionally.  Therefore append the extra tests
# to AC_PROG_CC.
AC_DEFUN([gl_COMPILER_CLANG],
[
dnl AC_REQUIRE([AC_PROG_CC])
  AC_CACHE_CHECK([whether the compiler is clang],
    [gl_cv_compiler_clang],
    [dnl Use _AC_COMPILE_IFELSE instead of AC_EGREP_CPP, to avoid error
     dnl "circular dependency of AC_LANG_COMPILER(C)" if AC_PROG_CC has
     dnl not yet been invoked.
     _AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM([[
           #ifdef __clang__
           barfbarf
           #endif
           ]],[[]])
        ],
        [gl_cv_compiler_clang=no],
        [gl_cv_compiler_clang=yes])
    ])
])
AC_DEFUN([gl_COMPILER_PREPARE_CHECK_DECL],
[
dnl AC_REQUIRE([AC_PROG_CC])
dnl AC_REQUIRE([gl_COMPILER_CLANG])
  AC_CACHE_CHECK([for compiler option needed when checking for declarations],
    [gl_cv_compiler_check_decl_option],
    [if test $gl_cv_compiler_clang = yes; then
       dnl Test whether the compiler supports the option
       dnl '-Werror=implicit-function-declaration'.
       save_ac_compile="$ac_compile"
       ac_compile="$ac_compile -Werror=implicit-function-declaration"
       dnl Use _AC_COMPILE_IFELSE instead of AC_COMPILE_IFELSE, to avoid a
       dnl warning "AC_COMPILE_IFELSE was called before AC_USE_SYSTEM_EXTENSIONS".
       _AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[]],[[]])],
         [gl_cv_compiler_check_decl_option='-Werror=implicit-function-declaration'],
         [gl_cv_compiler_check_decl_option=none])
       ac_compile="$save_ac_compile"
     else
       gl_cv_compiler_check_decl_option=none
     fi
    ])
  if test "x$gl_cv_compiler_check_decl_option" != xnone; then
    ac_compile_for_check_decl="$ac_compile $gl_cv_compiler_check_decl_option"
  else
    ac_compile_for_check_decl="$ac_compile"
  fi
])
dnl Redefine _AC_CHECK_DECL_BODY so that it references ac_compile_for_check_decl
dnl instead of ac_compile.  If, for whatever reason, the override of AC_PROG_CC
dnl in zzgnulib.m4 is inactive, use the original ac_compile.
m4_define([_AC_CHECK_DECL_BODY],
[  ac_save_ac_compile="$ac_compile"
  if test -n "$ac_compile_for_check_decl"; then
    ac_compile="$ac_compile_for_check_decl"
  fi]
m4_defn([_AC_CHECK_DECL_BODY])[  ac_compile="$ac_save_ac_compile"
])

# gl_00GNULIB
# -----------
# Witness macro that this file has been included.  Needed to force
# Automake to include this file prior to all other gnulib .m4 files.
AC_DEFUN([gl_00GNULIB])

# Test for __inline keyword
dnl Copyright 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl___INLINE],
[
  AC_CACHE_CHECK([whether the compiler supports the __inline keyword],
    [gl_cv_c___inline],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
         [[typedef int foo_t;
           static __inline foo_t foo (void) { return 0; }]],
         [[return foo ();]])],
       [gl_cv_c___inline=yes],
       [gl_cv_c___inline=no])])
  if test $gl_cv_c___inline = yes; then
    AC_DEFINE([HAVE___INLINE], [1],
      [Define to 1 if the compiler supports the keyword '__inline'.])
  fi
])

# absolute-header.m4 serial 17
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Derek Price.

# gl_ABSOLUTE_HEADER(HEADER1 HEADER2 ...)
# ---------------------------------------
# Find the absolute name of a header file, testing first if the header exists.
# If the header were sys/inttypes.h, this macro would define
# ABSOLUTE_SYS_INTTYPES_H to the '""' quoted absolute name of sys/inttypes.h
# in config.h
# (e.g. '#define ABSOLUTE_SYS_INTTYPES_H "///usr/include/sys/inttypes.h"').
# The three "///" are to pacify Sun C 5.8, which otherwise would say
# "warning: #include of /usr/include/... may be non-portable".
# Use '""', not '<>', so that the /// cannot be confused with a C99 comment.
# Note: This macro assumes that the header file is not empty after
# preprocessing, i.e. it does not only define preprocessor macros but also
# provides some type/enum definitions or function/variable declarations.
AC_DEFUN([gl_ABSOLUTE_HEADER],
[AC_REQUIRE([AC_CANONICAL_HOST])
AC_LANG_PREPROC_REQUIRE()dnl
m4_foreach_w([gl_HEADER_NAME], [$1],
  [AS_VAR_PUSHDEF([gl_absolute_header],
                  [gl_cv_absolute_]m4_defn([gl_HEADER_NAME]))dnl
  AC_CACHE_CHECK([absolute name of <]m4_defn([gl_HEADER_NAME])[>],
    [gl_absolute_header],
    [AS_VAR_PUSHDEF([ac_header_exists],
                    [ac_cv_header_]m4_defn([gl_HEADER_NAME]))dnl
    AC_CHECK_HEADERS_ONCE(m4_defn([gl_HEADER_NAME]))dnl
    if test AS_VAR_GET([ac_header_exists]) = yes; then
      gl_ABSOLUTE_HEADER_ONE(m4_defn([gl_HEADER_NAME]))
    fi
    AS_VAR_POPDEF([ac_header_exists])dnl
    ])dnl
  AC_DEFINE_UNQUOTED(AS_TR_CPP([ABSOLUTE_]m4_defn([gl_HEADER_NAME])),
                     ["AS_VAR_GET([gl_absolute_header])"],
                     [Define this to an absolute name of <]m4_defn([gl_HEADER_NAME])[>.])
  AS_VAR_POPDEF([gl_absolute_header])dnl
])dnl
])# gl_ABSOLUTE_HEADER

# gl_ABSOLUTE_HEADER_ONE(HEADER)
# ------------------------------
# Like gl_ABSOLUTE_HEADER, except that:
#   - it assumes that the header exists,
#   - it uses the current CPPFLAGS,
#   - it does not cache the result,
#   - it is silent.
AC_DEFUN([gl_ABSOLUTE_HEADER_ONE],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_LANG_CONFTEST([AC_LANG_SOURCE([[#include <]]m4_dquote([$1])[[>]])])
  dnl AIX "xlc -E" and "cc -E" omit #line directives for header files
  dnl that contain only a #include of other header files and no
  dnl non-comment tokens of their own. This leads to a failure to
  dnl detect the absolute name of <dirent.h>, <signal.h>, <poll.h>
  dnl and others. The workaround is to force preservation of comments
  dnl through option -C. This ensures all necessary #line directives
  dnl are present. GCC supports option -C as well.
  case "$host_os" in
    aix*) gl_absname_cpp="$ac_cpp -C" ;;
    *)    gl_absname_cpp="$ac_cpp" ;;
  esac
changequote(,)
  case "$host_os" in
    mingw*)
      dnl For the sake of native Windows compilers (excluding gcc),
      dnl treat backslash as a directory separator, like /.
      dnl Actually, these compilers use a double-backslash as
      dnl directory separator, inside the
      dnl   # line "filename"
      dnl directives.
      gl_dirsep_regex='[/\\]'
      ;;
    *)
      gl_dirsep_regex='\/'
      ;;
  esac
  dnl A sed expression that turns a string into a basic regular
  dnl expression, for use within "/.../".
  gl_make_literal_regex_sed='s,[]$^\\.*/[],\\&,g'
  gl_header_literal_regex=`echo '$1' \
                           | sed -e "$gl_make_literal_regex_sed"`
  gl_absolute_header_sed="/${gl_dirsep_regex}${gl_header_literal_regex}/"'{
      s/.*"\(.*'"${gl_dirsep_regex}${gl_header_literal_regex}"'\)".*/\1/
      s|^/[^/]|//&|
      p
      q
    }'
changequote([,])
  dnl eval is necessary to expand gl_absname_cpp.
  dnl Ultrix and Pyramid sh refuse to redirect output of eval,
  dnl so use subshell.
  AS_VAR_SET([gl_cv_absolute_]AS_TR_SH([[$1]]),
[`(eval "$gl_absname_cpp conftest.$ac_ext") 2>&AS_MESSAGE_LOG_FD |
  sed -n "$gl_absolute_header_sed"`])
])

dnl @synopsis AC_DEFINE_DIR(VARNAME, DIR [, DESCRIPTION])
dnl
dnl This macro sets VARNAME to the expansion of the DIR variable,
dnl taking care of fixing up ${prefix} and such.
dnl
dnl VARNAME is then offered as both an output variable and a C
dnl preprocessor symbol.
dnl
dnl Example:
dnl
dnl    AC_DEFINE_DIR([DATADIR], [datadir], [Where data are placed to.])
dnl
dnl @category Misc
dnl @author Stepan Kasal <kasal@ucw.cz>
dnl @author Andreas Schwab <schwab@suse.de>
dnl @author Guido U. Draheim <guidod@gmx.de>
dnl @author Alexandre Oliva
dnl @version 2006-10-13
dnl @license AllPermissive

AC_DEFUN([AC_DEFINE_DIR], [
  prefix_NONE=
  exec_prefix_NONE=
  test "x$prefix" = xNONE && prefix_NONE=yes && prefix=$ac_default_prefix
  test "x$exec_prefix" = xNONE && exec_prefix_NONE=yes && exec_prefix=$prefix
dnl In Autoconf 2.60, ${datadir} refers to ${datarootdir}, which in turn
dnl refers to ${prefix}.  Thus we have to use `eval' twice.
  eval ac_define_dir="\"[$]$2\""
  eval ac_define_dir="\"$ac_define_dir\""
  AC_SUBST($1, "$ac_define_dir")
  AC_DEFINE_UNQUOTED($1, "$ac_define_dir", [$3])
  test "$prefix_NONE" && prefix=NONE
  test "$exec_prefix_NONE" && exec_prefix=NONE
])

# alloca.m4 serial 20
dnl Copyright (C) 2002-2004, 2006-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ALLOCA],
[
  AC_REQUIRE([AC_FUNC_ALLOCA])
  if test $ac_cv_func_alloca_works = no; then
    gl_PREREQ_ALLOCA
  fi

  # Define an additional variable used in the Makefile substitution.
  if test $ac_cv_working_alloca_h = yes; then
    AC_CACHE_CHECK([for alloca as a compiler built-in], [gl_cv_rpl_alloca], [
      AC_EGREP_CPP([Need own alloca], [
#if defined __GNUC__ || defined _AIX || defined _MSC_VER
        Need own alloca
#endif
        ], [gl_cv_rpl_alloca=yes], [gl_cv_rpl_alloca=no])
    ])
    if test $gl_cv_rpl_alloca = yes; then
      dnl OK, alloca can be implemented through a compiler built-in.
      AC_DEFINE([HAVE_ALLOCA], [1],
        [Define to 1 if you have 'alloca' after including <alloca.h>,
         a header that may be supplied by this distribution.])
      ALLOCA_H=alloca.h
    else
      dnl alloca exists as a library function, i.e. it is slow and probably
      dnl a memory leak. Don't define HAVE_ALLOCA in this case.
      ALLOCA_H=
    fi
  else
    ALLOCA_H=alloca.h
  fi
  AC_SUBST([ALLOCA_H])
  AM_CONDITIONAL([GL_GENERATE_ALLOCA_H], [test -n "$ALLOCA_H"])

  if test $ac_cv_working_alloca_h = yes; then
    HAVE_ALLOCA_H=1
  else
    HAVE_ALLOCA_H=0
  fi
  AC_SUBST([HAVE_ALLOCA_H])
])

# Prerequisites of lib/alloca.c.
# STACK_DIRECTION is already handled by AC_FUNC_ALLOCA.
AC_DEFUN([gl_PREREQ_ALLOCA], [:])

m4_version_prereq([2.70], [], [

# This works around a bug in autoconf <= 2.68 and has simplifications
# from 2.70.  See:
# https://lists.gnu.org/r/bug-gnulib/2011-06/msg00277.html
# https://git.savannah.gnu.org/cgit/autoconf.git/commit/?id=6cd9f12520b0d6f76d3230d7565feba1ecf29497
# https://git.savannah.gnu.org/cgit/autoconf.git/commit/?id=15edf7fd8094fd14a89d9891dd72a9624762597a

# _AC_LIBOBJ_ALLOCA
# -----------------
# Set up the LIBOBJ replacement of 'alloca'.  Well, not exactly
# AC_LIBOBJ since we actually set the output variable 'ALLOCA'.
# Nevertheless, for Automake, AC_LIBSOURCES it.
m4_define([_AC_LIBOBJ_ALLOCA],
[# The SVR3 libPW and SVR4 libucb both contain incompatible functions
# that cause trouble.  Some versions do not even contain alloca or
# contain a buggy version.  If you still want to use their alloca,
# use ar to extract alloca.o from them instead of compiling alloca.c.
AC_LIBSOURCES(alloca.c)
AC_SUBST([ALLOCA], [\${LIBOBJDIR}alloca.$ac_objext])dnl
AC_DEFINE(C_ALLOCA, 1, [Define to 1 if using 'alloca.c'.])

AC_CACHE_CHECK([stack direction for C alloca],
               [ac_cv_c_stack_direction],
[AC_RUN_IFELSE([AC_LANG_SOURCE(
[AC_INCLUDES_DEFAULT
int
find_stack_direction (int *addr, int depth)
{
  int dir, dummy = 0;
  if (! addr)
    addr = &dummy;
  *addr = addr < &dummy ? 1 : addr == &dummy ? 0 : -1;
  dir = depth ? find_stack_direction (addr, depth - 1) : 0;
  return dir + dummy;
}

int
main (int argc, char **argv)
{
  return find_stack_direction (0, argc + !argv + 20) < 0;
}])],
               [ac_cv_c_stack_direction=1],
               [ac_cv_c_stack_direction=-1],
               [ac_cv_c_stack_direction=0])])
AH_VERBATIM([STACK_DIRECTION],
[/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
        STACK_DIRECTION > 0 => grows toward higher addresses
        STACK_DIRECTION < 0 => grows toward lower addresses
        STACK_DIRECTION = 0 => direction of growth unknown */
#undef STACK_DIRECTION])dnl
AC_DEFINE_UNQUOTED(STACK_DIRECTION, $ac_cv_c_stack_direction)
])# _AC_LIBOBJ_ALLOCA
])

# ===========================================================================
#   http://www.gnu.org/software/autoconf-archive/ax_check_compile_flag.html
# ===========================================================================
#
# SYNOPSIS
#
#   AX_CHECK_COMPILE_FLAG(FLAG, [ACTION-SUCCESS], [ACTION-FAILURE], [EXTRA-FLAGS], [INPUT])
#
# DESCRIPTION
#
#   Check whether the given FLAG works with the current language's compiler
#   or gives an error.  (Warnings, however, are ignored)
#
#   ACTION-SUCCESS/ACTION-FAILURE are shell commands to execute on
#   success/failure.
#
#   If EXTRA-FLAGS is defined, it is added to the current language's default
#   flags (e.g. CFLAGS) when the check is done.  The check is thus made with
#   the flags: "CFLAGS EXTRA-FLAGS FLAG".  This can for example be used to
#   force the compiler to issue an error when a bad flag is given.
#
#   INPUT gives an alternative input source to AC_COMPILE_IFELSE.
#
#   NOTE: Implementation based on AX_CFLAGS_GCC_OPTION. Please keep this
#   macro in sync with AX_CHECK_{PREPROC,LINK}_FLAG.
#
# LICENSE
#
#   Copyright (c) 2008 Guido U. Draheim <guidod@gmx.de>
#   Copyright (c) 2011 Maarten Bosmans <mkbosmans@gmail.com>
#
#   This program is free software: you can redistribute it and/or modify it
#   under the terms of the GNU General Public License as published by the
#   Free Software Foundation, either version 3 of the License, or (at your
#   option) any later version.
#
#   This program is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
#   Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program. If not, see <http://www.gnu.org/licenses/>.
#
#   As a special exception, the respective Autoconf Macro's copyright owner
#   gives unlimited permission to copy, distribute and modify the configure
#   scripts that are the output of Autoconf when processing the Macro. You
#   need not follow the terms of the GNU General Public License when using
#   or distributing such scripts, even though portions of the text of the
#   Macro appear in them. The GNU General Public License (GPL) does govern
#   all other use of the material that constitutes the Autoconf Macro.
#
#   This special exception to the GPL applies to versions of the Autoconf
#   Macro released by the Autoconf Archive. When you make and distribute a
#   modified version of the Autoconf Macro, you may extend this special
#   exception to the GPL to apply to your modified version as well.

#serial 3

AC_DEFUN([AX_CHECK_COMPILE_FLAG],
[AC_PREREQ(2.59)dnl for _AC_LANG_PREFIX
AS_VAR_PUSHDEF([CACHEVAR],[ax_cv_check_[]_AC_LANG_ABBREV[]flags_$4_$1])dnl
AC_CACHE_CHECK([whether _AC_LANG compiler accepts $1], CACHEVAR, [
  ax_check_save_flags=$[]_AC_LANG_PREFIX[]FLAGS
  _AC_LANG_PREFIX[]FLAGS="$[]_AC_LANG_PREFIX[]FLAGS $4 $1"
  AC_COMPILE_IFELSE([m4_default([$5],[AC_LANG_PROGRAM()])],
    [AS_VAR_SET(CACHEVAR,[yes])],
    [AS_VAR_SET(CACHEVAR,[no])])
  _AC_LANG_PREFIX[]FLAGS=$ax_check_save_flags])
AS_IF([test x"AS_VAR_GET(CACHEVAR)" = xyes],
  [m4_default([$2], :)],
  [m4_default([$3], :)])
AS_VAR_POPDEF([CACHEVAR])dnl
])dnl AX_CHECK_COMPILE_FLAGS

# btowc.m4 serial 12
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_BTOWC],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])

  dnl Check whether <wchar.h> is usable at all, first. Otherwise the test
  dnl program below may lead to an endless loop. See
  dnl <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=42440>.
  AC_REQUIRE([gl_WCHAR_H_INLINE_OK])

  AC_CHECK_FUNCS_ONCE([btowc])
  if test $ac_cv_func_btowc = no; then
    HAVE_BTOWC=0
  else

    AC_REQUIRE([AC_PROG_CC])
    AC_REQUIRE([gt_LOCALE_FR])
    AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

    dnl Cygwin 1.7.2 btowc('\0') is WEOF, not 0.
    AC_CACHE_CHECK([whether btowc(0) is correct],
      [gl_cv_func_btowc_nul],
      [
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <wchar.h>
int main ()
{
  if (btowc ('\0') != 0)
    return 1;
  return 0;
}]])],
          [gl_cv_func_btowc_nul=yes],
          [gl_cv_func_btowc_nul=no],
          [
changequote(,)dnl
           case "$host_os" in
                      # Guess no on Cygwin.
             cygwin*) gl_cv_func_btowc_nul="guessing no" ;;
                      # Guess yes on native Windows.
             mingw*)  gl_cv_func_btowc_nul="guessing yes" ;;
                      # Guess yes otherwise.
             *)       gl_cv_func_btowc_nul="guessing yes" ;;
           esac
changequote([,])dnl
          ])
      ])

    dnl IRIX 6.5 btowc(EOF) is 0xFF, not WEOF.
    AC_CACHE_CHECK([whether btowc(EOF) is correct],
      [gl_cv_func_btowc_eof],
      [
        dnl Initial guess, used when cross-compiling or when no suitable locale
        dnl is present.
changequote(,)dnl
        case "$host_os" in
                  # Guess no on IRIX.
          irix*)  gl_cv_func_btowc_eof="guessing no" ;;
                  # Guess yes on native Windows.
          mingw*) gl_cv_func_btowc_eof="guessing yes" ;;
                  # Guess yes otherwise.
          *)      gl_cv_func_btowc_eof="guessing yes" ;;
        esac
changequote([,])dnl
        if test $LOCALE_FR != none; then
          AC_RUN_IFELSE(
            [AC_LANG_SOURCE([[
#include <locale.h>
#include <stdio.h>
#include <wchar.h>
int main ()
{
  if (setlocale (LC_ALL, "$LOCALE_FR") != NULL)
    {
      if (btowc (EOF) != WEOF)
        return 1;
    }
  return 0;
}]])],
            [gl_cv_func_btowc_eof=yes],
            [gl_cv_func_btowc_eof=no],
            [:])
        fi
      ])

    case "$gl_cv_func_btowc_nul" in
      *yes) ;;
      *) REPLACE_BTOWC=1 ;;
    esac
    case "$gl_cv_func_btowc_eof" in
      *yes) ;;
      *) REPLACE_BTOWC=1 ;;
    esac
  fi
])

# Prerequisites of lib/btowc.c.
AC_DEFUN([gl_PREREQ_BTOWC], [
  :
])

dnl Check for __builtin_expect.

dnl Copyright 2016-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Paul Eggert.

AC_DEFUN([gl___BUILTIN_EXPECT],
[
  AC_CACHE_CHECK([for __builtin_expect],
    [gl_cv___builtin_expect],
    [AC_LINK_IFELSE(
       [AC_LANG_SOURCE([[
         int
         main (int argc, char **argv)
         {
           argc = __builtin_expect (argc, 100);
           return argv[argc != 100][0];
         }]])],
       [gl_cv___builtin_expect=yes],
       [AC_LINK_IFELSE(
          [AC_LANG_SOURCE([[
             #include <builtins.h>
             int
             main (int argc, char **argv)
             {
               argc = __builtin_expect (argc, 100);
               return argv[argc != 100][0];
             }]])],
          [gl_cv___builtin_expect="in <builtins.h>"],
          [gl_cv___builtin_expect=no])])])
  if test "$gl_cv___builtin_expect" = yes; then
    AC_DEFINE([HAVE___BUILTIN_EXPECT], [1])
  elif test "$gl_cv___builtin_expect" = "in <builtins.h>"; then
    AC_DEFINE([HAVE___BUILTIN_EXPECT], [2])
  fi
  AH_VERBATIM([HAVE___BUILTIN_EXPECT],
    [/* Define to 1 if the compiler supports __builtin_expect,
   and to 2 if <builtins.h> does.  */
#undef HAVE___BUILTIN_EXPECT
#ifndef HAVE___BUILTIN_EXPECT
# define __builtin_expect(e, c) (e)
#elif HAVE___BUILTIN_EXPECT == 2
# include <builtins.h>
#endif
    ])
])

# clock_time.m4 serial 10
dnl Copyright (C) 2002-2006, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Check for clock_gettime and clock_settime, and set LIB_CLOCK_GETTIME.
# For a program named, say foo, you should add a line like the following
# in the corresponding Makefile.am file:
# foo_LDADD = $(LDADD) $(LIB_CLOCK_GETTIME)

AC_DEFUN([gl_CLOCK_TIME],
[
  dnl Persuade glibc and Solaris <time.h> to declare these functions.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  # Solaris 2.5.1 needs -lposix4 to get the clock_gettime function.
  # Solaris 7 prefers the library name -lrt to the obsolescent name -lposix4.

  # Save and restore LIBS so e.g., -lrt, isn't added to it.  Otherwise, *all*
  # programs in the package would end up linked with that potentially-shared
  # library, inducing unnecessary run-time overhead.
  LIB_CLOCK_GETTIME=
  AC_SUBST([LIB_CLOCK_GETTIME])
  gl_saved_libs=$LIBS
    AC_SEARCH_LIBS([clock_gettime], [rt posix4],
                   [test "$ac_cv_search_clock_gettime" = "none required" ||
                    LIB_CLOCK_GETTIME=$ac_cv_search_clock_gettime])
    AC_CHECK_FUNCS([clock_gettime clock_settime])
  LIBS=$gl_saved_libs
])

# close.m4 serial 9
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_CLOSE],
[
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
  m4_ifdef([gl_MSVC_INVAL], [
    AC_REQUIRE([gl_MSVC_INVAL])
    if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
      REPLACE_CLOSE=1
    fi
  ])
  m4_ifdef([gl_PREREQ_SYS_H_WINSOCK2], [
    gl_PREREQ_SYS_H_WINSOCK2
    if test $UNISTD_H_HAVE_WINSOCK2_H = 1; then
      dnl Even if the 'socket' module is not used here, another part of the
      dnl application may use it and pass file descriptors that refer to
      dnl sockets to the close() function. So enable the support for sockets.
      REPLACE_CLOSE=1
    fi
  ])
  dnl Replace close() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    if test $REPLACE_CLOSE = 0; then
      gl_TEST_FCHDIR
      if test $HAVE_FCHDIR = 0; then
        REPLACE_CLOSE=1
      fi
    fi
  ])
])

# closedir.m4 serial 6
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_CLOSEDIR],
[
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  AC_CHECK_FUNCS([closedir])
  if test $ac_cv_func_closedir = no; then
    HAVE_CLOSEDIR=0
  fi
  dnl Replace closedir() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    gl_TEST_FCHDIR
    if test $HAVE_FCHDIR = 0; then
      if test $HAVE_CLOSEDIR = 1; then
        REPLACE_CLOSEDIR=1
      fi
    fi
  ])
  dnl Replace closedir() for supporting the gnulib-defined dirfd() function.
  case $host_os,$HAVE_CLOSEDIR in
    os2*,1)
      REPLACE_CLOSEDIR=1;;
  esac
])

# codeset.m4 serial 5 (gettext-0.18.2)
dnl Copyright (C) 2000-2002, 2006, 2008-2014, 2016, 2019-2021 Free Software
dnl Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([AM_LANGINFO_CODESET],
[
  AC_CACHE_CHECK([for nl_langinfo and CODESET], [am_cv_langinfo_codeset],
    [AC_LINK_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <langinfo.h>]],
          [[char* cs = nl_langinfo(CODESET); return !cs;]])],
       [am_cv_langinfo_codeset=yes],
       [am_cv_langinfo_codeset=no])
    ])
  if test $am_cv_langinfo_codeset = yes; then
    AC_DEFINE([HAVE_LANGINFO_CODESET], [1],
      [Define if you have <langinfo.h> and nl_langinfo(CODESET).])
  fi
])

# ctype_h.m4 serial 9
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_CTYPE_H],
[
  AC_REQUIRE([gl_CTYPE_H_DEFAULTS])

  dnl <ctype.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_NEXT_HEADERS([ctype.h])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <ctype.h>
    ]], [isblank])
])

# gl_CTYPE_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_CTYPE_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_CTYPE_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_CTYPE_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_CTYPE_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISBLANK])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_CTYPE_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_CTYPE_H_DEFAULTS])
])

AC_DEFUN([gl_CTYPE_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_ISBLANK=1;   AC_SUBST([HAVE_ISBLANK])
])

# serial 12

dnl From Jim Meyering.
dnl
dnl Check whether struct dirent has a member named d_type.
dnl

# Copyright (C) 1997, 1999-2004, 2006, 2009-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_CHECK_TYPE_STRUCT_DIRENT_D_TYPE],
  [AC_CACHE_CHECK([for d_type member in directory struct],
                  [gl_cv_struct_dirent_d_type],
     [AC_LINK_IFELSE([AC_LANG_PROGRAM([[
#include <sys/types.h>
#include <dirent.h>
         ]],
         [[struct dirent dp; dp.d_type = 0;]])],
       [gl_cv_struct_dirent_d_type=yes],
       [gl_cv_struct_dirent_d_type=no])
     ]
   )
   if test $gl_cv_struct_dirent_d_type = yes; then
     AC_DEFINE([HAVE_STRUCT_DIRENT_D_TYPE], [1],
       [Define if there is a member named d_type in the struct describing
        directory headers.])
   fi
  ]
)

# dirent_h.m4 serial 19
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Bruno Haible.

AC_DEFUN_ONCE([gl_DIRENT_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])

  dnl <dirent.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_CHECK_NEXT_HEADERS([dirent.h])
  if test $ac_cv_header_dirent_h = yes; then
    HAVE_DIRENT_H=1
  else
    HAVE_DIRENT_H=0
  fi
  AC_SUBST([HAVE_DIRENT_H])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <dirent.h>
    ]], [alphasort closedir dirfd fdopendir opendir readdir rewinddir scandir])
])

# gl_DIRENT_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_DIRENT_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_DIRENT_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_DIRENT_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_DIRENT_H_MODULE_INDICATOR_DEFAULTS], [
    gl_UNISTD_H_REQUIRE_DEFAULTS dnl for REPLACE_FCHDIR
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OPENDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_READDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REWINDDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CLOSEDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DIRFD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FDOPENDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SCANDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ALPHASORT])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_DIRENT_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])
])

AC_DEFUN([gl_DIRENT_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_OPENDIR=1;       AC_SUBST([HAVE_OPENDIR])
  HAVE_READDIR=1;       AC_SUBST([HAVE_READDIR])
  HAVE_REWINDDIR=1;     AC_SUBST([HAVE_REWINDDIR])
  HAVE_CLOSEDIR=1;      AC_SUBST([HAVE_CLOSEDIR])
  HAVE_DECL_DIRFD=1;    AC_SUBST([HAVE_DECL_DIRFD])
  HAVE_DECL_FDOPENDIR=1;AC_SUBST([HAVE_DECL_FDOPENDIR])
  HAVE_FDOPENDIR=1;     AC_SUBST([HAVE_FDOPENDIR])
  HAVE_SCANDIR=1;       AC_SUBST([HAVE_SCANDIR])
  HAVE_ALPHASORT=1;     AC_SUBST([HAVE_ALPHASORT])
  REPLACE_OPENDIR=0;    AC_SUBST([REPLACE_OPENDIR])
  REPLACE_CLOSEDIR=0;   AC_SUBST([REPLACE_CLOSEDIR])
  REPLACE_DIRFD=0;      AC_SUBST([REPLACE_DIRFD])
  REPLACE_FDOPENDIR=0;  AC_SUBST([REPLACE_FDOPENDIR])
])

# serial 26   -*- Autoconf -*-

dnl Find out how to get the file descriptor associated with an open DIR*.

# Copyright (C) 2001-2006, 2008-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Jim Meyering

AC_DEFUN([gl_FUNC_DIRFD],
[
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Persuade glibc <dirent.h> to declare dirfd().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_FUNCS([dirfd])
  AC_CHECK_DECLS([dirfd], , ,
    [[#include <sys/types.h>
      #include <dirent.h>]])
  if test $ac_cv_have_decl_dirfd = no; then
    HAVE_DECL_DIRFD=0
  fi

  AC_CACHE_CHECK([whether dirfd is a macro],
    [gl_cv_func_dirfd_macro],
    [AC_EGREP_CPP([dirent_header_defines_dirfd], [
#include <sys/types.h>
#include <dirent.h>
#ifdef dirfd
 dirent_header_defines_dirfd
#endif],
       [gl_cv_func_dirfd_macro=yes],
       [gl_cv_func_dirfd_macro=no])])

  # Use the replacement if we have no function or macro with that name,
  # or if OS/2 kLIBC whose dirfd() does not work.
  # Replace only if the system declares dirfd already.
  case $ac_cv_func_dirfd,$gl_cv_func_dirfd_macro,$host_os,$ac_cv_have_decl_dirfd in
    no,no,*,yes | *,*,os2*,yes)
      REPLACE_DIRFD=1
      AC_DEFINE([REPLACE_DIRFD], [1],
        [Define to 1 if gnulib's dirfd() replacement is used.]);;
  esac
])

dnl Prerequisites of lib/dirfd.c.
AC_DEFUN([gl_PREREQ_DIRFD],
[
  AC_CACHE_CHECK([how to get the file descriptor associated with an open DIR*],
                 [gl_cv_sys_dir_fd_member_name],
    [
      dirfd_save_CFLAGS=$CFLAGS
      for ac_expr in d_fd dd_fd; do

        CFLAGS="$CFLAGS -DDIR_FD_MEMBER_NAME=$ac_expr"
        AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
           #include <sys/types.h>
           #include <dirent.h>]],
          [[DIR *dir_p = opendir("."); (void) dir_p->DIR_FD_MEMBER_NAME;]])],
          [dir_fd_found=yes]
        )
        CFLAGS=$dirfd_save_CFLAGS
        test "$dir_fd_found" = yes && break
      done
      test "$dir_fd_found" = yes || ac_expr=no_such_member

      gl_cv_sys_dir_fd_member_name=$ac_expr
    ]
  )
  if test $gl_cv_sys_dir_fd_member_name != no_such_member; then
    AC_DEFINE_UNQUOTED([DIR_FD_MEMBER_NAME],
      [$gl_cv_sys_dir_fd_member_name],
      [the name of the file descriptor member of DIR])
  fi
  AH_VERBATIM([DIR_TO_FD],
              [#ifdef DIR_FD_MEMBER_NAME
# define DIR_TO_FD(Dir_p) ((Dir_p)->DIR_FD_MEMBER_NAME)
#else
# define DIR_TO_FD(Dir_p) -1
#endif
])
])

# double-slash-root.m4 serial 4   -*- Autoconf -*-
dnl Copyright (C) 2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_DOUBLE_SLASH_ROOT],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether // is distinct from /], [gl_cv_double_slash_root],
    [ if test x"$cross_compiling" = xyes ; then
        # When cross-compiling, there is no way to tell whether // is special
        # short of a list of hosts.  However, the only known hosts to date
        # that have a distinct // are Apollo DomainOS (too old to port to),
        # Cygwin, and z/OS.  If anyone knows of another system for which // has
        # special semantics and is distinct from /, please report it to
        # <bug-gnulib@gnu.org>.
        case $host in
          *-cygwin | i370-ibm-openedition)
            gl_cv_double_slash_root=yes ;;
          *)
            # Be optimistic and assume that / and // are the same when we
            # don't know.
            gl_cv_double_slash_root='unknown, assuming no' ;;
        esac
      else
        set x `ls -di / // 2>/dev/null`
        if test "$[2]" = "$[4]" && wc //dev/null >/dev/null 2>&1; then
          gl_cv_double_slash_root=no
        else
          gl_cv_double_slash_root=yes
        fi
      fi])
  if test "$gl_cv_double_slash_root" = yes; then
    AC_DEFINE([DOUBLE_SLASH_IS_DISTINCT_ROOT], [1],
      [Define to 1 if // is a file system root distinct from /.])
  fi
])

#serial 27
dnl Copyright (C) 2002, 2005, 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_DUP2],
[
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether dup2 works], [gl_cv_func_dup2_works],
    [AC_RUN_IFELSE([
       AC_LANG_PROGRAM(
         [[#include <errno.h>
           #include <fcntl.h>
           #include <limits.h>
           #include <sys/resource.h>
           #include <unistd.h>
           ]GL_MDA_DEFINES[
           #ifndef RLIM_SAVED_CUR
           # define RLIM_SAVED_CUR RLIM_INFINITY
           #endif
           #ifndef RLIM_SAVED_MAX
           # define RLIM_SAVED_MAX RLIM_INFINITY
           #endif
         ]],
         [[int result = 0;
           int bad_fd = INT_MAX;
           struct rlimit rlim;
           if (getrlimit (RLIMIT_NOFILE, &rlim) == 0
               && 0 <= rlim.rlim_cur && rlim.rlim_cur <= INT_MAX
               && rlim.rlim_cur != RLIM_INFINITY
               && rlim.rlim_cur != RLIM_SAVED_MAX
               && rlim.rlim_cur != RLIM_SAVED_CUR)
             bad_fd = rlim.rlim_cur;
           #ifdef FD_CLOEXEC
             if (fcntl (1, F_SETFD, FD_CLOEXEC) == -1)
               result |= 1;
           #endif
           if (dup2 (1, 1) != 1)
             result |= 2;
           #ifdef FD_CLOEXEC
             if (fcntl (1, F_GETFD) != FD_CLOEXEC)
               result |= 4;
           #endif
           close (0);
           if (dup2 (0, 0) != -1)
             result |= 8;
           /* Many gnulib modules require POSIX conformance of EBADF.  */
           if (dup2 (2, bad_fd) == -1 && errno != EBADF)
             result |= 16;
           /* Flush out some cygwin core dumps.  */
           if (dup2 (2, -1) != -1 || errno != EBADF)
             result |= 32;
           dup2 (2, 255);
           dup2 (2, 256);
           /* On OS/2 kLIBC, dup2() does not work on a directory fd.  */
           {
             int fd = open (".", O_RDONLY);
             if (fd == -1)
               result |= 64;
             else if (dup2 (fd, fd + 1) == -1)
               result |= 128;
             close (fd);
           }
           return result;]])
      ],
      [gl_cv_func_dup2_works=yes], [gl_cv_func_dup2_works=no],
      [case "$host_os" in
         mingw*) # on this platform, dup2 always returns 0 for success
           gl_cv_func_dup2_works="guessing no" ;;
         cygwin*) # on cygwin 1.5.x, dup2(1,1) returns 0
           gl_cv_func_dup2_works="guessing no" ;;
         aix* | freebsd*)
                 # on AIX 7.1 and FreeBSD 6.1, dup2 (1,toobig) gives EMFILE,
                 # not EBADF.
           gl_cv_func_dup2_works="guessing no" ;;
         haiku*) # on Haiku alpha 2, dup2(1, 1) resets FD_CLOEXEC.
           gl_cv_func_dup2_works="guessing no" ;;
         *-android*) # implemented using dup3(), which fails if oldfd == newfd
           gl_cv_func_dup2_works="guessing no" ;;
         os2*) # on OS/2 kLIBC, dup2() does not work on a directory fd.
           gl_cv_func_dup2_works="guessing no" ;;
         *) gl_cv_func_dup2_works="guessing yes" ;;
       esac])
    ])
  case "$gl_cv_func_dup2_works" in
    *yes) ;;
    *)
      REPLACE_DUP2=1
      AC_CHECK_FUNCS([setdtablesize])
      ;;
  esac
  dnl Replace dup2() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    gl_TEST_FCHDIR
    if test $HAVE_FCHDIR = 0; then
      REPLACE_DUP2=1
    fi
  ])
])

# Prerequisites of lib/dup2.c.
AC_DEFUN([gl_PREREQ_DUP2], [])

# eealloc.m4 serial 3
dnl Copyright (C) 2003, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_EEALLOC],
[
  AC_REQUIRE([gl_EEMALLOC])
  AC_REQUIRE([gl_EEREALLOC])
])

AC_DEFUN([gl_EEMALLOC],
[
  _AC_FUNC_MALLOC_IF(
    [gl_cv_func_malloc_0_nonnull=1],
    [gl_cv_func_malloc_0_nonnull=0])
  AC_DEFINE_UNQUOTED([MALLOC_0_IS_NONNULL], [$gl_cv_func_malloc_0_nonnull],
    [If malloc(0) is != NULL, define this to 1.  Otherwise define this
     to 0.])
])

AC_DEFUN([gl_EEREALLOC],
[
  _AC_FUNC_REALLOC_IF(
    [gl_cv_func_realloc_0_nonnull=1],
    [gl_cv_func_realloc_0_nonnull=0])
  AC_DEFINE_UNQUOTED([REALLOC_0_IS_NONNULL], [$gl_cv_func_realloc_0_nonnull],
    [If realloc(NULL,0) is != NULL, define this to 1.  Otherwise define this
     to 0.])
])

# errno_h.m4 serial 13
dnl Copyright (C) 2004, 2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_PREREQ([2.61])

AC_DEFUN_ONCE([gl_HEADER_ERRNO_H],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_CACHE_CHECK([for complete errno.h], [gl_cv_header_errno_h_complete], [
    AC_EGREP_CPP([booboo],[
#include <errno.h>
#if !defined ETXTBSY
booboo
#endif
#if !defined ENOMSG
booboo
#endif
#if !defined EIDRM
booboo
#endif
#if !defined ENOLINK
booboo
#endif
#if !defined EPROTO
booboo
#endif
#if !defined EMULTIHOP
booboo
#endif
#if !defined EBADMSG
booboo
#endif
#if !defined EOVERFLOW
booboo
#endif
#if !defined ENOTSUP
booboo
#endif
#if !defined ENETRESET
booboo
#endif
#if !defined ECONNABORTED
booboo
#endif
#if !defined ESTALE
booboo
#endif
#if !defined EDQUOT
booboo
#endif
#if !defined ECANCELED
booboo
#endif
#if !defined EOWNERDEAD
booboo
#endif
#if !defined ENOTRECOVERABLE
booboo
#endif
#if !defined EILSEQ
booboo
#endif
      ],
      [gl_cv_header_errno_h_complete=no],
      [gl_cv_header_errno_h_complete=yes])
  ])
  if test $gl_cv_header_errno_h_complete = yes; then
    ERRNO_H=''
  else
    gl_NEXT_HEADERS([errno.h])
    ERRNO_H='errno.h'
  fi
  AC_SUBST([ERRNO_H])
  AM_CONDITIONAL([GL_GENERATE_ERRNO_H], [test -n "$ERRNO_H"])
  gl_REPLACE_ERRNO_VALUE([EMULTIHOP])
  gl_REPLACE_ERRNO_VALUE([ENOLINK])
  gl_REPLACE_ERRNO_VALUE([EOVERFLOW])
])

# Assuming $1 = EOVERFLOW.
# The EOVERFLOW errno value ought to be defined in <errno.h>, according to
# POSIX.  But some systems (like OpenBSD 4.0 or AIX 3) don't define it, and
# some systems (like OSF/1) define it when _XOPEN_SOURCE_EXTENDED is defined.
# Check for the value of EOVERFLOW.
# Set the variables EOVERFLOW_HIDDEN and EOVERFLOW_VALUE.
AC_DEFUN([gl_REPLACE_ERRNO_VALUE],
[
  if test -n "$ERRNO_H"; then
    AC_CACHE_CHECK([for ]$1[ value], [gl_cv_header_errno_h_]$1, [
      AC_EGREP_CPP([yes],[
#include <errno.h>
#ifdef ]$1[
yes
#endif
      ],
      [gl_cv_header_errno_h_]$1[=yes],
      [gl_cv_header_errno_h_]$1[=no])
      if test $gl_cv_header_errno_h_]$1[ = no; then
        AC_EGREP_CPP([yes],[
#define _XOPEN_SOURCE_EXTENDED 1
#include <errno.h>
#ifdef ]$1[
yes
#endif
          ], [gl_cv_header_errno_h_]$1[=hidden])
        if test $gl_cv_header_errno_h_]$1[ = hidden; then
          dnl The macro exists but is hidden.
          dnl Define it to the same value.
          AC_COMPUTE_INT([gl_cv_header_errno_h_]$1, $1, [
#define _XOPEN_SOURCE_EXTENDED 1
#include <errno.h>
/* The following two lines are a workaround against an autoconf-2.52 bug.  */
#include <stdio.h>
#include <stdlib.h>
])
        fi
      fi
    ])
    case $gl_cv_header_errno_h_]$1[ in
      yes | no)
        ]$1[_HIDDEN=0; ]$1[_VALUE=
        ;;
      *)
        ]$1[_HIDDEN=1; ]$1[_VALUE="$gl_cv_header_errno_h_]$1["
        ;;
    esac
    AC_SUBST($1[_HIDDEN])
    AC_SUBST($1[_VALUE])
  fi
])

# exponentd.m4 serial 3
dnl Copyright (C) 2007-2008, 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
AC_DEFUN([gl_DOUBLE_EXPONENT_LOCATION],
[
  AC_CACHE_CHECK([where to find the exponent in a 'double'],
    [gl_cv_cc_double_expbit0],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#define NWORDS \
  ((sizeof (double) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { double value; unsigned int word[NWORDS]; } memory_double;
static unsigned int ored_words[NWORDS];
static unsigned int anded_words[NWORDS];
static void add_to_ored_words (double x)
{
  memory_double m;
  size_t i;
  /* Clear it first, in case sizeof (double) < sizeof (memory_double).  */
  memset (&m, 0, sizeof (memory_double));
  m.value = x;
  for (i = 0; i < NWORDS; i++)
    {
      ored_words[i] |= m.word[i];
      anded_words[i] &= m.word[i];
    }
}
int main ()
{
  size_t j;
  FILE *fp = fopen ("conftest.out", "w");
  if (fp == NULL)
    return 1;
  for (j = 0; j < NWORDS; j++)
    anded_words[j] = ~ (unsigned int) 0;
  add_to_ored_words (0.25);
  add_to_ored_words (0.5);
  add_to_ored_words (1.0);
  add_to_ored_words (2.0);
  add_to_ored_words (4.0);
  /* Remove bits that are common (e.g. if representation of the first mantissa
     bit is explicit).  */
  for (j = 0; j < NWORDS; j++)
    ored_words[j] &= ~anded_words[j];
  /* Now find the nonzero word.  */
  for (j = 0; j < NWORDS; j++)
    if (ored_words[j] != 0)
      break;
  if (j < NWORDS)
    {
      size_t i;
      for (i = j + 1; i < NWORDS; i++)
        if (ored_words[i] != 0)
          {
            fprintf (fp, "unknown");
            return (fclose (fp) != 0);
          }
      for (i = 0; ; i++)
        if ((ored_words[j] >> i) & 1)
          {
            fprintf (fp, "word %d bit %d", (int) j, (int) i);
            return (fclose (fp) != 0);
          }
    }
  fprintf (fp, "unknown");
  return (fclose (fp) != 0);
}
        ]])],
        [gl_cv_cc_double_expbit0=`cat conftest.out`],
        [gl_cv_cc_double_expbit0="unknown"],
        [
          dnl On ARM, there are two 'double' floating-point formats, used by
          dnl different sets of instructions: The older FPA instructions assume
          dnl that they are stored in big-endian word order, while the words
          dnl (like integer types) are stored in little-endian byte order.
          dnl The newer VFP instructions assume little-endian order
          dnl consistently.
          AC_EGREP_CPP([mixed_endianness], [
#if defined arm || defined __arm || defined __arm__
  mixed_endianness
#endif
            ],
            [gl_cv_cc_double_expbit0="unknown"],
            [
              pushdef([AC_MSG_CHECKING],[:])dnl
              pushdef([AC_MSG_RESULT],[:])dnl
              pushdef([AC_MSG_RESULT_UNQUOTED],[:])dnl
              AC_C_BIGENDIAN(
                [gl_cv_cc_double_expbit0="word 0 bit 20"],
                [gl_cv_cc_double_expbit0="word 1 bit 20"],
                [gl_cv_cc_double_expbit0="unknown"])
              popdef([AC_MSG_RESULT_UNQUOTED])dnl
              popdef([AC_MSG_RESULT])dnl
              popdef([AC_MSG_CHECKING])dnl
            ])
        ])
      rm -f conftest.out
    ])
  case "$gl_cv_cc_double_expbit0" in
    word*bit*)
      word=`echo "$gl_cv_cc_double_expbit0" | sed -e 's/word //' -e 's/ bit.*//'`
      bit=`echo "$gl_cv_cc_double_expbit0" | sed -e 's/word.*bit //'`
      AC_DEFINE_UNQUOTED([DBL_EXPBIT0_WORD], [$word],
        [Define as the word index where to find the exponent of 'double'.])
      AC_DEFINE_UNQUOTED([DBL_EXPBIT0_BIT], [$bit],
        [Define as the bit index in the word where to find bit 0 of the exponent of 'double'.])
      ;;
  esac
])

# exponentf.m4 serial 2
dnl Copyright (C) 2007-2008, 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
AC_DEFUN([gl_FLOAT_EXPONENT_LOCATION],
[
  AC_CACHE_CHECK([where to find the exponent in a 'float'],
    [gl_cv_cc_float_expbit0],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#define NWORDS \
  ((sizeof (float) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { float value; unsigned int word[NWORDS]; } memory_float;
static unsigned int ored_words[NWORDS];
static unsigned int anded_words[NWORDS];
static void add_to_ored_words (float x)
{
  memory_float m;
  size_t i;
  /* Clear it first, in case
     sizeof (float) < sizeof (memory_float).  */
  memset (&m, 0, sizeof (memory_float));
  m.value = x;
  for (i = 0; i < NWORDS; i++)
    {
      ored_words[i] |= m.word[i];
      anded_words[i] &= m.word[i];
    }
}
int main ()
{
  size_t j;
  FILE *fp = fopen ("conftest.out", "w");
  if (fp == NULL)
    return 1;
  for (j = 0; j < NWORDS; j++)
    anded_words[j] = ~ (unsigned int) 0;
  add_to_ored_words (0.25f);
  add_to_ored_words (0.5f);
  add_to_ored_words (1.0f);
  add_to_ored_words (2.0f);
  add_to_ored_words (4.0f);
  /* Remove bits that are common (e.g. if representation of the first mantissa
     bit is explicit).  */
  for (j = 0; j < NWORDS; j++)
    ored_words[j] &= ~anded_words[j];
  /* Now find the nonzero word.  */
  for (j = 0; j < NWORDS; j++)
    if (ored_words[j] != 0)
      break;
  if (j < NWORDS)
    {
      size_t i;
      for (i = j + 1; i < NWORDS; i++)
        if (ored_words[i] != 0)
          {
            fprintf (fp, "unknown");
            return (fclose (fp) != 0);
          }
      for (i = 0; ; i++)
        if ((ored_words[j] >> i) & 1)
          {
            fprintf (fp, "word %d bit %d", (int) j, (int) i);
            return (fclose (fp) != 0);
          }
    }
  fprintf (fp, "unknown");
  return (fclose (fp) != 0);
}
        ]])],
        [gl_cv_cc_float_expbit0=`cat conftest.out`],
        [gl_cv_cc_float_expbit0="unknown"],
        [gl_cv_cc_float_expbit0="word 0 bit 23"])
      rm -f conftest.out
    ])
  case "$gl_cv_cc_float_expbit0" in
    word*bit*)
      word=`echo "$gl_cv_cc_float_expbit0" | sed -e 's/word //' -e 's/ bit.*//'`
      bit=`echo "$gl_cv_cc_float_expbit0" | sed -e 's/word.*bit //'`
      AC_DEFINE_UNQUOTED([FLT_EXPBIT0_WORD], [$word],
        [Define as the word index where to find the exponent of 'float'.])
      AC_DEFINE_UNQUOTED([FLT_EXPBIT0_BIT], [$bit],
        [Define as the bit index in the word where to find bit 0 of the exponent of 'float'.])
      ;;
  esac
])

# exponentl.m4 serial 5
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
AC_DEFUN([gl_LONG_DOUBLE_EXPONENT_LOCATION],
[
  AC_REQUIRE([gl_BIGENDIAN])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([where to find the exponent in a 'long double'],
    [gl_cv_cc_long_double_expbit0],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#define NWORDS \
  ((sizeof (long double) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { long double value; unsigned int word[NWORDS]; }
        memory_long_double;
static unsigned int ored_words[NWORDS];
static unsigned int anded_words[NWORDS];
static void add_to_ored_words (long double *x)
{
  memory_long_double m;
  size_t i;
  /* Clear it first, in case
     sizeof (long double) < sizeof (memory_long_double).  */
  memset (&m, 0, sizeof (memory_long_double));
  m.value = *x;
  for (i = 0; i < NWORDS; i++)
    {
      ored_words[i] |= m.word[i];
      anded_words[i] &= m.word[i];
    }
}
int main ()
{
  static long double samples[5] = { 0.25L, 0.5L, 1.0L, 2.0L, 4.0L };
  size_t j;
  FILE *fp = fopen ("conftest.out", "w");
  if (fp == NULL)
    return 1;
  for (j = 0; j < NWORDS; j++)
    anded_words[j] = ~ (unsigned int) 0;
  for (j = 0; j < 5; j++)
    add_to_ored_words (&samples[j]);
  /* Remove bits that are common (e.g. if representation of the first mantissa
     bit is explicit).  */
  for (j = 0; j < NWORDS; j++)
    ored_words[j] &= ~anded_words[j];
  /* Now find the nonzero word.  */
  for (j = 0; j < NWORDS; j++)
    if (ored_words[j] != 0)
      break;
  if (j < NWORDS)
    {
      size_t i;
      for (i = j + 1; i < NWORDS; i++)
        if (ored_words[i] != 0)
          {
            fprintf (fp, "unknown");
            return (fclose (fp) != 0);
          }
      for (i = 0; ; i++)
        if ((ored_words[j] >> i) & 1)
          {
            fprintf (fp, "word %d bit %d", (int) j, (int) i);
            return (fclose (fp) != 0);
          }
    }
  fprintf (fp, "unknown");
  return (fclose (fp) != 0);
}
        ]])],
        [gl_cv_cc_long_double_expbit0=`cat conftest.out`],
        [gl_cv_cc_long_double_expbit0="unknown"],
        [
          dnl When cross-compiling, in general we don't know. It depends on the
          dnl ABI and compiler version. There are too many cases.
          gl_cv_cc_long_double_expbit0="unknown"
          case "$host_os" in
            mingw*) # On native Windows (little-endian), we know the result
                    # in two cases: mingw, MSVC.
              AC_EGREP_CPP([Known], [
#ifdef __MINGW32__
 Known
#endif
                ], [gl_cv_cc_long_double_expbit0="word 2 bit 0"])
              AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                ], [gl_cv_cc_long_double_expbit0="word 1 bit 20"])
              ;;
          esac
        ])
      rm -f conftest.out
    ])
  case "$gl_cv_cc_long_double_expbit0" in
    word*bit*)
      word=`echo "$gl_cv_cc_long_double_expbit0" | sed -e 's/word //' -e 's/ bit.*//'`
      bit=`echo "$gl_cv_cc_long_double_expbit0" | sed -e 's/word.*bit //'`
      AC_DEFINE_UNQUOTED([LDBL_EXPBIT0_WORD], [$word],
        [Define as the word index where to find the exponent of 'long double'.])
      AC_DEFINE_UNQUOTED([LDBL_EXPBIT0_BIT], [$bit],
        [Define as the bit index in the word where to find bit 0 of the exponent of 'long double'.])
      ;;
  esac
])

# serial 22  -*- Autoconf -*-
# Enable extensions on systems that normally disable them.

# Copyright (C) 2003, 2006-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl Define to empty for the benefit of Autoconf 2.69 and earlier, so that
dnl AC_USE_SYSTEM_EXTENSIONS (below) can be used unchanged from Autoconf 2.70+.
m4_ifndef([AC_CHECK_INCLUDES_DEFAULT],
  [AC_DEFUN([AC_CHECK_INCLUDES_DEFAULT], [])])

# This definition of AC_USE_SYSTEM_EXTENSIONS is stolen from git
# Autoconf.  Perhaps we can remove this once we can assume Autoconf
# is recent-enough everywhere, but since Autoconf mutates rapidly
# enough in this area it's likely we'll need to redefine
# AC_USE_SYSTEM_EXTENSIONS for quite some time.

# If autoconf reports a warning
#     warning: AC_COMPILE_IFELSE was called before AC_USE_SYSTEM_EXTENSIONS
# or  warning: AC_RUN_IFELSE was called before AC_USE_SYSTEM_EXTENSIONS
# the fix is
#   1) to ensure that AC_USE_SYSTEM_EXTENSIONS is never directly invoked
#      but always AC_REQUIREd,
#   2) to ensure that for each occurrence of
#        AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])
#      or
#        AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
#      the corresponding gnulib module description has 'extensions' among
#      its dependencies. This will ensure that the gl_USE_SYSTEM_EXTENSIONS
#      invocation occurs in gl_EARLY, not in gl_INIT.

m4_version_prereq([2.70.1], [], [

# AC_USE_SYSTEM_EXTENSIONS
# ------------------------
# Enable extensions on systems that normally disable them,
# typically due to standards-conformance issues.
# We unconditionally define as many of the known feature-enabling
# as possible, reserving conditional behavior for macros that are
# known to cause problems on some platforms (such as __EXTENSIONS__).
AC_DEFUN_ONCE([AC_USE_SYSTEM_EXTENSIONS],
[AC_BEFORE([$0], [AC_PREPROC_IFELSE])dnl
AC_BEFORE([$0], [AC_COMPILE_IFELSE])dnl
AC_BEFORE([$0], [AC_LINK_IFELSE])dnl
AC_BEFORE([$0], [AC_RUN_IFELSE])dnl
AC_BEFORE([$0], [AC_CHECK_INCLUDES_DEFAULT])dnl
dnl #undef in AH_VERBATIM gets replaced with #define by AC_DEFINE.
dnl Use a different key than __EXTENSIONS__, as that name broke existing
dnl configure.ac when using autoheader 2.62.
dnl The macros below are in alphabetical order ignoring leading _ or __
dnl prefixes.
AH_VERBATIM([USE_SYSTEM_EXTENSIONS],
[/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif
/* Enable general extensions on macOS.  */
#ifndef _DARWIN_C_SOURCE
# undef _DARWIN_C_SOURCE
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# undef __EXTENSIONS__
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# undef _GNU_SOURCE
#endif
/* Enable X/Open compliant socket functions that do not require linking
   with -lxnet on HP-UX 11.11.  */
#ifndef _HPUX_ALT_XOPEN_SOCKET_API
# undef _HPUX_ALT_XOPEN_SOCKET_API
#endif
/* Identify the host operating system as Minix.
   This macro does not affect the system headers' behavior.
   A future release of Autoconf may stop defining this macro.  */
#ifndef _MINIX
# undef _MINIX
#endif
/* Enable general extensions on NetBSD.
   Enable NetBSD compatibility extensions on Minix.  */
#ifndef _NETBSD_SOURCE
# undef _NETBSD_SOURCE
#endif
/* Enable OpenBSD compatibility extensions on NetBSD.
   Oddly enough, this does nothing on OpenBSD.  */
#ifndef _OPENBSD_SOURCE
# undef _OPENBSD_SOURCE
#endif
/* Define to 1 if needed for POSIX-compatible behavior.  */
#ifndef _POSIX_SOURCE
# undef _POSIX_SOURCE
#endif
/* Define to 2 if needed for POSIX-compatible behavior.  */
#ifndef _POSIX_1_SOURCE
# undef _POSIX_1_SOURCE
#endif
/* Enable POSIX-compatible threading on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# undef _POSIX_PTHREAD_SEMANTICS
#endif
/* Enable extensions specified by ISO/IEC TS 18661-5:2014.  */
#ifndef __STDC_WANT_IEC_60559_ATTRIBS_EXT__
# undef __STDC_WANT_IEC_60559_ATTRIBS_EXT__
#endif
/* Enable extensions specified by ISO/IEC TS 18661-1:2014.  */
#ifndef __STDC_WANT_IEC_60559_BFP_EXT__
# undef __STDC_WANT_IEC_60559_BFP_EXT__
#endif
/* Enable extensions specified by ISO/IEC TS 18661-2:2015.  */
#ifndef __STDC_WANT_IEC_60559_DFP_EXT__
# undef __STDC_WANT_IEC_60559_DFP_EXT__
#endif
/* Enable extensions specified by ISO/IEC TS 18661-4:2015.  */
#ifndef __STDC_WANT_IEC_60559_FUNCS_EXT__
# undef __STDC_WANT_IEC_60559_FUNCS_EXT__
#endif
/* Enable extensions specified by ISO/IEC TS 18661-3:2015.  */
#ifndef __STDC_WANT_IEC_60559_TYPES_EXT__
# undef __STDC_WANT_IEC_60559_TYPES_EXT__
#endif
/* Enable extensions specified by ISO/IEC TR 24731-2:2010.  */
#ifndef __STDC_WANT_LIB_EXT2__
# undef __STDC_WANT_LIB_EXT2__
#endif
/* Enable extensions specified by ISO/IEC 24747:2009.  */
#ifndef __STDC_WANT_MATH_SPEC_FUNCS__
# undef __STDC_WANT_MATH_SPEC_FUNCS__
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# undef _TANDEM_SOURCE
#endif
/* Enable X/Open extensions.  Define to 500 only if necessary
   to make mbstate_t available.  */
#ifndef _XOPEN_SOURCE
# undef _XOPEN_SOURCE
#endif
])dnl

  AC_REQUIRE([AC_CHECK_INCLUDES_DEFAULT])dnl
  _AC_CHECK_HEADER_ONCE([wchar.h])
  _AC_CHECK_HEADER_ONCE([minix/config.h])

dnl Defining __EXTENSIONS__ may break the system headers on some systems.
dnl (FIXME: Which ones?)
  AC_CACHE_CHECK([whether it is safe to define __EXTENSIONS__],
    [ac_cv_safe_to_define___extensions__],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM([[
#         define __EXTENSIONS__ 1
          ]AC_INCLUDES_DEFAULT])],
       [ac_cv_safe_to_define___extensions__=yes],
       [ac_cv_safe_to_define___extensions__=no])])

dnl HP-UX 11.11 defines mbstate_t only if _XOPEN_SOURCE is defined to
dnl 500, regardless of whether compiling with -Ae or -D_HPUX_SOURCE=1.
dnl But defining _XOPEN_SOURCE may turn *off* extensions on platforms
dnl not covered by turn-on-extensions macros (notably Dragonfly, Free,
dnl and OpenBSD, which don't have any equivalent of _NETBSD_SOURCE) so
dnl it should only be defined when necessary.
  AC_CACHE_CHECK([whether _XOPEN_SOURCE should be defined],
    [ac_cv_should_define__xopen_source],
    [ac_cv_should_define__xopen_source=no
    AS_IF([test $ac_cv_header_wchar_h = yes],
      [AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM([[
          #include <wchar.h>
          mbstate_t x;]])],
        [],
        [AC_COMPILE_IFELSE(
          [AC_LANG_PROGRAM([[
            #define _XOPEN_SOURCE 500
            #include <wchar.h>
            mbstate_t x;]])],
          [ac_cv_should_define__xopen_source=yes])])])])

  AC_DEFINE([_ALL_SOURCE])
  AC_DEFINE([_DARWIN_C_SOURCE])
  AC_DEFINE([_GNU_SOURCE])
  AC_DEFINE([_HPUX_ALT_XOPEN_SOCKET_API])
  AC_DEFINE([_NETBSD_SOURCE])
  AC_DEFINE([_OPENBSD_SOURCE])
  AC_DEFINE([_POSIX_PTHREAD_SEMANTICS])
  AC_DEFINE([__STDC_WANT_IEC_60559_ATTRIBS_EXT__])
  AC_DEFINE([__STDC_WANT_IEC_60559_BFP_EXT__])
  AC_DEFINE([__STDC_WANT_IEC_60559_DFP_EXT__])
  AC_DEFINE([__STDC_WANT_IEC_60559_FUNCS_EXT__])
  AC_DEFINE([__STDC_WANT_IEC_60559_TYPES_EXT__])
  AC_DEFINE([__STDC_WANT_LIB_EXT2__])
  AC_DEFINE([__STDC_WANT_MATH_SPEC_FUNCS__])
  AC_DEFINE([_TANDEM_SOURCE])
  AS_IF([test $ac_cv_header_minix_config_h = yes],
    [MINIX=yes
    AC_DEFINE([_MINIX])
    AC_DEFINE([_POSIX_SOURCE])
    AC_DEFINE([_POSIX_1_SOURCE], [2])],
    [MINIX=])
  AS_IF([test $ac_cv_safe_to_define___extensions__ = yes],
    [AC_DEFINE([__EXTENSIONS__])])
  AS_IF([test $ac_cv_should_define__xopen_source = yes],
    [AC_DEFINE([_XOPEN_SOURCE], [500])])
])# AC_USE_SYSTEM_EXTENSIONS
])

# gl_USE_SYSTEM_EXTENSIONS
# ------------------------
# Enable extensions on systems that normally disable them,
# typically due to standards-conformance issues.
AC_DEFUN_ONCE([gl_USE_SYSTEM_EXTENSIONS],
[
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  dnl On OpenBSD 6.8 with GCC, the include files contain a couple of
  dnl definitions that are only activated with an explicit -D_ISOC11_SOURCE.
  dnl That's because this version of GCC (4.2.1) supports the option
  dnl '-std=gnu99' but not the option '-std=gnu11'.
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    openbsd*)
      AC_DEFINE([_ISOC11_SOURCE], [1],
        [Define to enable the declarations of ISO C 11 types and functions.])
      ;;
  esac
])

dnl 'extern inline' a la ISO C99.

dnl Copyright 2012-2013 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_EXTERN_INLINE],
[
  AH_VERBATIM([extern_inline],
[/* Please see the Gnulib manual for how to use these macros.

   Suppress extern inline with HP-UX cc, as it appears to be broken; see
   <http://lists.gnu.org/archive/html/bug-texinfo/2013-02/msg00030.html>.

   Suppress extern inline with Sun C in standards-conformance mode, as it
   mishandles inline functions that call each other.  E.g., for 'inline void f
   (void) { } inline void g (void) { f (); }', c99 incorrectly complains
   'reference to static identifier "f" in extern inline function'.
   This bug was observed with Sun C 5.12 SunOS_i386 2011/11/16.

   Suppress the use of extern inline on Apple's platforms, as Libc at least
   through Libc-825.26 (2013-04-09) is incompatible with it; see, e.g.,
   <http://lists.gnu.org/archive/html/bug-gnulib/2012-12/msg00023.html>.
   Perhaps Apple will fix this some day.  */
#if ((__GNUC__ \
      ? defined __GNUC_STDC_INLINE__ && __GNUC_STDC_INLINE__ \
      : (199901L <= __STDC_VERSION__ \
         && !defined __HP_cc \
         && !(defined __SUNPRO_C && __STDC__))) \
     && !defined __APPLE__)
# define _GL_INLINE inline
# define _GL_EXTERN_INLINE extern inline
#elif (2 < __GNUC__ + (7 <= __GNUC_MINOR__) && !defined __STRICT_ANSI__ \
       && !defined __APPLE__)
# if __GNUC_GNU_INLINE__
   /* __gnu_inline__ suppresses a GCC 4.2 diagnostic.  */
#  define _GL_INLINE extern inline __attribute__ ((__gnu_inline__))
# else
#  define _GL_INLINE extern inline
# endif
# define _GL_EXTERN_INLINE extern
#else
# define _GL_INLINE static _GL_UNUSED
# define _GL_EXTERN_INLINE static _GL_UNUSED
#endif

#if 4 < __GNUC__ + (6 <= __GNUC_MINOR__)
# if defined __GNUC_STDC_INLINE__ && __GNUC_STDC_INLINE__
#  define _GL_INLINE_HEADER_CONST_PRAGMA
# else
#  define _GL_INLINE_HEADER_CONST_PRAGMA \
     _Pragma ("GCC diagnostic ignored \"-Wsuggest-attribute=const\"")
# endif
  /* Suppress GCC's bogus "no previous prototype for 'FOO'"
     and "no previous declaration for 'FOO'"  diagnostics,
     when FOO is an inline function in the header; see
     <http://gcc.gnu.org/bugzilla/show_bug.cgi?id=54113>.  */
# define _GL_INLINE_HEADER_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wmissing-prototypes\"") \
    _Pragma ("GCC diagnostic ignored \"-Wmissing-declarations\"") \
    _GL_INLINE_HEADER_CONST_PRAGMA
# define _GL_INLINE_HEADER_END \
    _Pragma ("GCC diagnostic pop")
#else
# define _GL_INLINE_HEADER_BEGIN
# define _GL_INLINE_HEADER_END
#endif])
])

# fcntl-o.m4 serial 7
dnl Copyright (C) 2006, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Paul Eggert.

AC_PREREQ([2.60])

# Test whether the flags O_NOATIME and O_NOFOLLOW actually work.
# Define HAVE_WORKING_O_NOATIME to 1 if O_NOATIME works, or to 0 otherwise.
# Define HAVE_WORKING_O_NOFOLLOW to 1 if O_NOFOLLOW works, or to 0 otherwise.
AC_DEFUN([gl_FCNTL_O_FLAGS],
[
  dnl Persuade glibc <fcntl.h> to define O_NOATIME and O_NOFOLLOW.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CHECK_HEADERS_ONCE([unistd.h])
  AC_CHECK_FUNCS_ONCE([symlink])
  AC_CACHE_CHECK([for working fcntl.h], [gl_cv_header_working_fcntl_h],
    [AC_RUN_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <sys/types.h>
           #include <sys/stat.h>
           #if HAVE_UNISTD_H
           # include <unistd.h>
           #else /* on Windows with MSVC */
           # include <io.h>
           # include <stdlib.h>
           # defined sleep(n) _sleep ((n) * 1000)
           #endif
           #include <fcntl.h>
           ]GL_MDA_DEFINES[
           #ifndef O_NOATIME
            #define O_NOATIME 0
           #endif
           #ifndef O_NOFOLLOW
            #define O_NOFOLLOW 0
           #endif
           static int const constants[] =
            {
              O_CREAT, O_EXCL, O_NOCTTY, O_TRUNC, O_APPEND,
              O_NONBLOCK, O_SYNC, O_ACCMODE, O_RDONLY, O_RDWR, O_WRONLY
            };
          ]],
          [[
            int result = !constants;
            #if HAVE_SYMLINK
            {
              static char const sym[] = "conftest.sym";
              if (symlink ("/dev/null", sym) != 0)
                result |= 2;
              else
                {
                  int fd = open (sym, O_WRONLY | O_NOFOLLOW | O_CREAT, 0);
                  if (fd >= 0)
                    {
                      close (fd);
                      result |= 4;
                    }
                }
              if (unlink (sym) != 0 || symlink (".", sym) != 0)
                result |= 2;
              else
                {
                  int fd = open (sym, O_RDONLY | O_NOFOLLOW);
                  if (fd >= 0)
                    {
                      close (fd);
                      result |= 4;
                    }
                }
              unlink (sym);
            }
            #endif
            {
              static char const file[] = "confdefs.h";
              int fd = open (file, O_RDONLY | O_NOATIME);
              if (fd < 0)
                result |= 8;
              else
                {
                  struct stat st0;
                  if (fstat (fd, &st0) != 0)
                    result |= 16;
                  else
                    {
                      char c;
                      sleep (1);
                      if (read (fd, &c, 1) != 1)
                        result |= 24;
                      else
                        {
                          if (close (fd) != 0)
                            result |= 32;
                          else
                            {
                              struct stat st1;
                              if (stat (file, &st1) != 0)
                                result |= 40;
                              else
                                if (st0.st_atime != st1.st_atime)
                                  result |= 64;
                            }
                        }
                    }
                }
            }
            return result;]])],
       [gl_cv_header_working_fcntl_h=yes],
       [case $? in #(
        4) gl_cv_header_working_fcntl_h='no (bad O_NOFOLLOW)';; #(
        64) gl_cv_header_working_fcntl_h='no (bad O_NOATIME)';; #(
        68) gl_cv_header_working_fcntl_h='no (bad O_NOATIME, O_NOFOLLOW)';; #(
         *) gl_cv_header_working_fcntl_h='no';;
        esac],
       [case "$host_os" in
                  # Guess 'no' on native Windows.
          mingw*) gl_cv_header_working_fcntl_h='no' ;;
          *)      gl_cv_header_working_fcntl_h=cross-compiling ;;
        esac
       ])
    ])

  case $gl_cv_header_working_fcntl_h in #(
  *O_NOATIME* | no | cross-compiling) ac_val=0;; #(
  *) ac_val=1;;
  esac
  AC_DEFINE_UNQUOTED([HAVE_WORKING_O_NOATIME], [$ac_val],
    [Define to 1 if O_NOATIME works.])

  case $gl_cv_header_working_fcntl_h in #(
  *O_NOFOLLOW* | no | cross-compiling) ac_val=0;; #(
  *) ac_val=1;;
  esac
  AC_DEFINE_UNQUOTED([HAVE_WORKING_O_NOFOLLOW], [$ac_val],
    [Define to 1 if O_NOFOLLOW works.])
])

# fcntl.m4 serial 11
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# For now, this module ensures that fcntl()
# - supports F_DUPFD correctly
# - supports or emulates F_DUPFD_CLOEXEC
# - supports F_GETFD
# Still to be ported to mingw:
# - F_SETFD
# - F_GETFL, F_SETFL
# - F_GETOWN, F_SETOWN
# - F_GETLK, F_SETLK, F_SETLKW
AC_DEFUN([gl_FUNC_FCNTL],
[
  dnl Persuade glibc to expose F_DUPFD_CLOEXEC.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_FCNTL_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS_ONCE([fcntl])
  if test $ac_cv_func_fcntl = no; then
    gl_REPLACE_FCNTL
  else
    dnl cygwin 1.5.x F_DUPFD has wrong errno, and allows negative target
    dnl haiku alpha 2 F_DUPFD has wrong errno
    AC_CACHE_CHECK([whether fcntl handles F_DUPFD correctly],
      [gl_cv_func_fcntl_f_dupfd_works],
      [AC_RUN_IFELSE(
         [AC_LANG_PROGRAM(
            [[#include <errno.h>
              #include <fcntl.h>
              #include <limits.h>
              #include <sys/resource.h>
              #include <unistd.h>
              ]GL_MDA_DEFINES[
              #ifndef RLIM_SAVED_CUR
              # define RLIM_SAVED_CUR RLIM_INFINITY
              #endif
              #ifndef RLIM_SAVED_MAX
              # define RLIM_SAVED_MAX RLIM_INFINITY
              #endif
            ]],
            [[int result = 0;
              int bad_fd = INT_MAX;
              struct rlimit rlim;
              if (getrlimit (RLIMIT_NOFILE, &rlim) == 0
                  && 0 <= rlim.rlim_cur && rlim.rlim_cur <= INT_MAX
                  && rlim.rlim_cur != RLIM_INFINITY
                  && rlim.rlim_cur != RLIM_SAVED_MAX
                  && rlim.rlim_cur != RLIM_SAVED_CUR)
                bad_fd = rlim.rlim_cur;
              if (fcntl (0, F_DUPFD, -1) != -1) result |= 1;
              if (errno != EINVAL) result |= 2;
              if (fcntl (0, F_DUPFD, bad_fd) != -1) result |= 4;
              if (errno != EINVAL) result |= 8;
              /* On OS/2 kLIBC, F_DUPFD does not work on a directory fd */
              {
                int fd;
                fd = open (".", O_RDONLY);
                if (fd == -1)
                  result |= 16;
                else if (fcntl (fd, F_DUPFD, STDERR_FILENO + 1) == -1)
                  result |= 32;

                close (fd);
              }
              return result;]])],
         [gl_cv_func_fcntl_f_dupfd_works=yes],
         [gl_cv_func_fcntl_f_dupfd_works=no],
         [case $host_os in
            aix* | cygwin* | haiku*)
               gl_cv_func_fcntl_f_dupfd_works="guessing no" ;;
            *) gl_cv_func_fcntl_f_dupfd_works="guessing yes" ;;
          esac])])
    case $gl_cv_func_fcntl_f_dupfd_works in
      *yes) ;;
      *) gl_REPLACE_FCNTL
        AC_DEFINE([FCNTL_DUPFD_BUGGY], [1], [Define this to 1 if F_DUPFD
          behavior does not match POSIX]) ;;
    esac

    dnl Many systems lack F_DUPFD_CLOEXEC.
    dnl NetBSD 9.0 declares F_DUPFD_CLOEXEC but it works only like F_DUPFD.
    AC_CACHE_CHECK([whether fcntl understands F_DUPFD_CLOEXEC],
      [gl_cv_func_fcntl_f_dupfd_cloexec],
      [AC_RUN_IFELSE(
         [AC_LANG_SOURCE(
            [[#include <fcntl.h>
              #include <unistd.h>
              int main (int argc, char *argv[])
              {
                if (argc == 1)
                  /* parent process */
                  {
                    if (fcntl (1, F_DUPFD_CLOEXEC, 10) < 0)
                      return 1;
                    return execl ("./conftest", "./conftest", "child", NULL);
                  }
                else
                  /* child process */
                  return (fcntl (10, F_GETFL) < 0 ? 0 : 42);
              }
            ]])
         ],
         [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
#ifdef __linux__
/* The Linux kernel only added F_DUPFD_CLOEXEC in 2.6.24, so we always replace
   it to support the semantics on older kernels that failed with EINVAL.  */
choke me
#endif
           ]])],
           [gl_cv_func_fcntl_f_dupfd_cloexec=yes],
           [gl_cv_func_fcntl_f_dupfd_cloexec="needs runtime check"])
         ],
         [gl_cv_func_fcntl_f_dupfd_cloexec=no],
         [case "$host_os" in
                     # Guess no on NetBSD.
            netbsd*) gl_cv_func_fcntl_f_dupfd_cloexec="guessing no" ;;
            *)       gl_cv_func_fcntl_f_dupfd_cloexec="$gl_cross_guess_normal" ;;
          esac
         ])
      ])
    case "$gl_cv_func_fcntl_f_dupfd_cloexec" in
      *yes) ;;
      *)    gl_REPLACE_FCNTL
            dnl No witness macro needed for this bug.
            ;;
    esac
  fi
  dnl Replace fcntl() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    gl_TEST_FCHDIR
    if test $HAVE_FCHDIR = 0; then
      gl_REPLACE_FCNTL
    fi
  ])
])

AC_DEFUN([gl_REPLACE_FCNTL],
[
  AC_REQUIRE([gl_FCNTL_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([fcntl])
  if test $ac_cv_func_fcntl = no; then
    HAVE_FCNTL=0
  else
    REPLACE_FCNTL=1
  fi
])

# serial 20
# Configure fcntl.h.
dnl Copyright (C) 2006-2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Paul Eggert.

AC_DEFUN_ONCE([gl_FCNTL_H],
[
  AC_REQUIRE([gl_FCNTL_H_DEFAULTS])
  AC_REQUIRE([gl_FCNTL_O_FLAGS])
  gl_NEXT_HEADERS([fcntl.h])

  dnl Ensure the type pid_t gets defined.
  AC_REQUIRE([AC_TYPE_PID_T])

  dnl Ensure the type mode_t gets defined.
  AC_REQUIRE([AC_TYPE_MODE_T])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use, if it is not common
  dnl enough to be declared everywhere.
  gl_WARN_ON_USE_PREPARE([[#include <fcntl.h>
    ]], [fcntl openat])
])

# gl_FCNTL_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_FCNTL_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_FCNTL_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_FCNTL_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_FCNTL_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CREAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FCNTL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_NONBLOCKING])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OPEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OPENAT])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_CREAT], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_OPEN], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_FCNTL_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_FCNTL_H_DEFAULTS])
])

AC_DEFUN([gl_FCNTL_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_FCNTL=1;          AC_SUBST([HAVE_FCNTL])
  HAVE_OPENAT=1;         AC_SUBST([HAVE_OPENAT])
  REPLACE_CREAT=0;       AC_SUBST([REPLACE_CREAT])
  REPLACE_FCNTL=0;       AC_SUBST([REPLACE_FCNTL])
  REPLACE_OPEN=0;        AC_SUBST([REPLACE_OPEN])
  REPLACE_OPENAT=0;      AC_SUBST([REPLACE_OPENAT])
])

# serial 5
# Check for flexible array member support.

# Copyright (C) 2006, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Written by Paul Eggert.

AC_DEFUN([AC_C_FLEXIBLE_ARRAY_MEMBER],
[
  AC_CACHE_CHECK([for flexible array member],
    ac_cv_c_flexmember,
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdlib.h>
            #include <stdio.h>
            #include <stddef.h>
            struct m { struct m *next, **list; char name[]; };
            struct s { struct s *p; struct m *m; int n; double d[]; };]],
          [[int m = getchar ();
            size_t nbytes = offsetof (struct s, d) + m * sizeof (double);
            nbytes += sizeof (struct s) - 1;
            nbytes -= nbytes % sizeof (struct s);
            struct s *p = malloc (nbytes);
            p->p = p;
            p->m = NULL;
            p->d[0] = 0.0;
            return p->d != (double *) NULL;]])],
       [ac_cv_c_flexmember=yes],
       [ac_cv_c_flexmember=no])])
  if test $ac_cv_c_flexmember = yes; then
    AC_DEFINE([FLEXIBLE_ARRAY_MEMBER], [],
      [Define to nothing if C supports flexible array members, and to
       1 if it does not.  That way, with a declaration like 'struct s
       { int n; short d@<:@FLEXIBLE_ARRAY_MEMBER@:>@; };', the struct hack
       can be used with pre-C99 compilers.
       Use 'FLEXSIZEOF (struct s, d, N * sizeof (short))' to calculate
       the size in bytes of such a struct containing an N-element array.])
  else
    AC_DEFINE([FLEXIBLE_ARRAY_MEMBER], [1])
  fi
])

# float_h.m4 serial 12
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FLOAT_H],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  FLOAT_H=
  REPLACE_FLOAT_LDBL=0
  case "$host_os" in
    aix* | beos* | openbsd* | mirbsd* | irix*)
      FLOAT_H=float.h
      ;;
    freebsd* | dragonfly*)
      case "$host_cpu" in
changequote(,)dnl
        i[34567]86 )
changequote([,])dnl
          FLOAT_H=float.h
          ;;
        x86_64 )
          # On x86_64 systems, the C compiler may still be generating
          # 32-bit code.
          AC_COMPILE_IFELSE(
            [AC_LANG_SOURCE(
               [[#if defined __LP64__ || defined __x86_64__ || defined __amd64__
                  int ok;
                 #else
                  error fail
                 #endif
               ]])],
            [],
            [FLOAT_H=float.h])
          ;;
      esac
      ;;
    linux*)
      case "$host_cpu" in
        powerpc*)
          FLOAT_H=float.h
          ;;
      esac
      ;;
  esac
  case "$host_os" in
    aix* | freebsd* | dragonfly* | linux*)
      if test -n "$FLOAT_H"; then
        REPLACE_FLOAT_LDBL=1
      fi
      ;;
  esac

  dnl Test against glibc-2.7 Linux/SPARC64 bug.
  REPLACE_ITOLD=0
  AC_CACHE_CHECK([whether conversion from 'int' to 'long double' works],
    [gl_cv_func_itold_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
int i = -1;
volatile long double ld;
int main ()
{
  ld += i * 1.0L;
  if (ld > 0)
    return 1;
  return 0;
}]])],
        [gl_cv_func_itold_works=yes],
        [gl_cv_func_itold_works=no],
        [case "$host" in
           sparc*-*-linux*)
             AC_COMPILE_IFELSE(
               [AC_LANG_SOURCE(
                 [[#if defined __LP64__ || defined __arch64__
                    int ok;
                   #else
                    error fail
                   #endif
                 ]])],
               [gl_cv_func_itold_works="guessing no"],
               [gl_cv_func_itold_works="guessing yes"])
             ;;
                   # Guess yes on native Windows.
           mingw*) gl_cv_func_itold_works="guessing yes" ;;
           *)      gl_cv_func_itold_works="guessing yes" ;;
         esac
        ])
    ])
  case "$gl_cv_func_itold_works" in
    *no)
      REPLACE_ITOLD=1
      dnl We add the workaround to <float.h> but also to <math.h>,
      dnl to increase the chances that the fix function gets pulled in.
      FLOAT_H=float.h
      ;;
  esac

  if test -n "$FLOAT_H"; then
    gl_NEXT_HEADERS([float.h])
  fi
  AC_SUBST([FLOAT_H])
  AM_CONDITIONAL([GL_GENERATE_FLOAT_H], [test -n "$FLOAT_H"])
  AC_SUBST([REPLACE_ITOLD])
])

# Check for fnmatch - serial 15.  -*- coding: utf-8 -*-

# Copyright (C) 2000-2007, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Autoconf defines AC_FUNC_FNMATCH, but that is obsolescent.
# New applications should use the macros below instead.

# Request a POSIX compliant fnmatch function.
AC_DEFUN([gl_FUNC_FNMATCH_POSIX],
[
  m4_divert_text([DEFAULTS], [gl_fnmatch_required=POSIX])

  AC_REQUIRE([gl_FNMATCH_H])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  gl_fnmatch_required_lowercase=`
    echo $gl_fnmatch_required | LC_ALL=C tr '[[A-Z]]' '[[a-z]]'
  `
  AC_CHECK_FUNCS_ONCE([fnmatch])
  if test $ac_cv_func_fnmatch = no; then
    HAVE_FNMATCH=0
  else
    gl_fnmatch_cache_var="gl_cv_func_fnmatch_${gl_fnmatch_required_lowercase}"
    AC_CACHE_CHECK([for working $gl_fnmatch_required fnmatch],
      [$gl_fnmatch_cache_var],
      [dnl Some versions of Solaris, SCO, and the GNU C Library
       dnl have a broken or incompatible fnmatch.
       dnl So we run a test program.  If we are cross-compiling, take no chance.
       dnl Thanks to John Oleynick, François Pinard, and Paul Eggert for this
       dnl test.
       if test $gl_fnmatch_required = GNU; then
         gl_fnmatch_gnu_start=
         gl_fnmatch_gnu_end=
       else
         gl_fnmatch_gnu_start='#if 0'
         gl_fnmatch_gnu_end='#endif'
       fi
       AC_RUN_IFELSE(
         [AC_LANG_PROGRAM(
            [[#include <fnmatch.h>
              static int
              y (char const *pattern, char const *string, int flags)
              {
                return fnmatch (pattern, string, flags) == 0;
              }
              static int
              n (char const *pattern, char const *string, int flags)
              {
                return fnmatch (pattern, string, flags) == FNM_NOMATCH;
              }
            ]],
            [[char const *Apat = 'A' < '\\\\' ? "[A-\\\\\\\\]" : "[\\\\\\\\-A]";
              char const *apat = 'a' < '\\\\' ? "[a-\\\\\\\\]" : "[\\\\\\\\-a]";
              static char const A_1[] = { 'A' - 1, 0 };
              static char const A01[] = { 'A' + 1, 0 };
              static char const a_1[] = { 'a' - 1, 0 };
              static char const a01[] = { 'a' + 1, 0 };
              static char const bs_1[] = { '\\\\' - 1, 0 };
              static char const bs01[] = { '\\\\' + 1, 0 };
              int result = 0;
              if (!n ("a*", "", 0))
                return 1;
              if (!y ("a*", "abc", 0))
                return 1;
              if (!y ("[/b", "[/b", 0)) /*"]]"*/ /* glibc Bugzilla bug 12378 */
                return 1;
              if (!n ("d*/*1", "d/s/1", FNM_PATHNAME))
                return 2;
              if (!y ("a\\\\bc", "abc", 0))
                return 3;
              if (!n ("a\\\\bc", "abc", FNM_NOESCAPE))
                return 3;
              if (!y ("*x", ".x", 0))
                return 4;
              if (!n ("*x", ".x", FNM_PERIOD))
                return 4;
              if (!y (Apat, "\\\\", 0))
                return 5;
              if (!y (Apat, "A", 0))
                return 5;
              if (!y (apat, "\\\\", 0))
                return 5;
              if (!y (apat, "a", 0))
                return 5;
              if (!(n (Apat, A_1, 0) == ('A' < '\\\\')))
                return 5;
              if (!(n (apat, a_1, 0) == ('a' < '\\\\')))
                return 5;
              if (!(y (Apat, A01, 0) == ('A' < '\\\\')))
                return 5;
              if (!(y (apat, a01, 0) == ('a' < '\\\\')))
                return 5;
              if (!(y (Apat, bs_1, 0) == ('A' < '\\\\')))
                return 5;
              if (!(y (apat, bs_1, 0) == ('a' < '\\\\')))
                return 5;
              if (!(n (Apat, bs01, 0) == ('A' < '\\\\')))
                return 5;
              if (!(n (apat, bs01, 0) == ('a' < '\\\\')))
                return 5;
              $gl_fnmatch_gnu_start
              if (!y ("xxXX", "xXxX", FNM_CASEFOLD))
                result |= 8;
              if (!y ("a++(x|yy)b", "a+xyyyyxb", FNM_EXTMATCH))
                result |= 16;
              if (!n ("d*/*1", "d/s/1", FNM_FILE_NAME))
                result |= 32;
              if (!y ("*", "x", FNM_FILE_NAME | FNM_LEADING_DIR))
                result |= 64;
              if (!y ("x*", "x/y/z", FNM_FILE_NAME | FNM_LEADING_DIR))
                result |= 64;
              if (!y ("*c*", "c/x", FNM_FILE_NAME | FNM_LEADING_DIR))
                result |= 64;
              $gl_fnmatch_gnu_end
              return result;
            ]])],
         [eval "$gl_fnmatch_cache_var=yes"],
         [eval "$gl_fnmatch_cache_var=no"],
         [case "$host_os" in
                     # Guess yes on musl systems.
            *-musl*) eval "$gl_fnmatch_cache_var=\"guessing yes\"" ;;
                     # Guess no otherwise, even on glibc systems.
            *)       eval "$gl_fnmatch_cache_var=\"guessing no\"" ;;
          esac
         ])
      ])
    eval "gl_fnmatch_result=\"\$$gl_fnmatch_cache_var\""
    case "$gl_fnmatch_result" in
      *yes) ;;
      *) REPLACE_FNMATCH=1 ;;
    esac
  fi
  if test $HAVE_FNMATCH = 0 || test $REPLACE_FNMATCH = 1; then
    gl_REPLACE_FNMATCH_H
  fi
])

# Request a POSIX compliant fnmatch function with GNU extensions.
AC_DEFUN([gl_FUNC_FNMATCH_GNU],
[
  m4_divert_text([INIT_PREPARE], [gl_fnmatch_required=GNU])

  AC_REQUIRE([gl_FUNC_FNMATCH_POSIX])
])

AC_DEFUN([gl_PREREQ_FNMATCH],
[
  dnl Prerequisites of lib/fnmatch.c.
  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  AC_CHECK_FUNCS_ONCE([mbsrtowcs])
])

# fnmatch_h.m4 serial 7
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN_ONCE([gl_FNMATCH_H],
[
  AC_REQUIRE([gl_FNMATCH_H_DEFAULTS])
  m4_ifdef([gl_ANSI_CXX], [AC_REQUIRE([gl_ANSI_CXX])])
  AC_CHECK_HEADERS_ONCE([fnmatch.h])
  gl_CHECK_NEXT_HEADERS([fnmatch.h])

  dnl Persuade glibc <fnmatch.h> to declare FNM_CASEFOLD etc.
  dnl This is only needed if gl_fnmatch_required = GNU. It would be possible
  dnl to avoid this dependency for gl_FUNC_FNMATCH_POSIX by putting
  dnl gl_FUNC_FNMATCH_GNU into a separate .m4 file.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  if test $ac_cv_header_fnmatch_h = yes; then
    HAVE_FNMATCH_H=1
  else
    HAVE_FNMATCH_H=0
  fi
  AC_SUBST([HAVE_FNMATCH_H])

  m4_ifdef([gl_POSIXCHECK],
    [FNMATCH_H=fnmatch.h],
    [FNMATCH_H=''
     if m4_ifdef([gl_ANSI_CXX], [test "$CXX" != no], [false]); then
       dnl Override <fnmatch.h> always, to support the C++ GNULIB_NAMESPACE.
       FNMATCH_H=fnmatch.h
     else
       if test $ac_cv_header_fnmatch_h != yes; then
         dnl Provide a substitute <fnmatch.h> file.
         FNMATCH_H=fnmatch.h
       fi
     fi
    ])
  AC_SUBST([FNMATCH_H])
  AM_CONDITIONAL([GL_GENERATE_FNMATCH_H], [test -n "$FNMATCH_H"])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <fnmatch.h>
    ]],
    [fnmatch])
])

dnl Unconditionally enables the replacement of <fnmatch.h>.
AC_DEFUN([gl_REPLACE_FNMATCH_H],
[
  gl_FNMATCH_H_REQUIRE_DEFAULTS
  FNMATCH_H='fnmatch.h'
  AM_CONDITIONAL([GL_GENERATE_FNMATCH_H], [test -n "$FNMATCH_H"])
])

# gl_FNMATCH_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_FNMATCH_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_FNMATCH_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_FNMATCH_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_FNMATCH_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FNMATCH])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_FNMATCH_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_FNMATCH_H_DEFAULTS])
])

AC_DEFUN([gl_FNMATCH_H_DEFAULTS],
[
  dnl Assume POSIX behavior unless another module says otherwise.
  HAVE_FNMATCH=1;            AC_SUBST([HAVE_FNMATCH])
  REPLACE_FNMATCH=0;         AC_SUBST([REPLACE_FNMATCH])
])

# fpieee.m4 serial 2  -*- coding: utf-8 -*-
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl IEEE 754 standardized three items:
dnl - The formats of single-float and double-float - nowadays commonly
dnl   available as 'float' and 'double' in C and C++.
dnl   No autoconf test needed.
dnl - The overflow and division by zero behaviour: The result are values
dnl   '±Inf' and 'NaN', rather than exceptions as it was before.
dnl   This file provides an autoconf macro for ensuring this behaviour of
dnl   floating-point operations.
dnl - A set of conditions (overflow, underflow, inexact, etc.) which can
dnl   be configured to trigger an exception.
dnl   This cannot be done in a portable way: it depends on the compiler,
dnl   libc, kernel, and CPU.  No autoconf macro is provided for this.

dnl Ensure non-trapping behaviour of floating-point overflow and
dnl floating-point division by zero.
dnl (For integer overflow, see gcc's -ftrapv option; for integer division by
dnl zero, see the autoconf macro in intdiv0.m4.)

AC_DEFUN([gl_FP_IEEE],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  # IEEE behaviour is the default on all CPUs except Alpha and SH
  # (according to the test results of Bruno Haible's ieeefp/fenv_default.m4
  # and the GCC 4.1.2 manual).
  case "$host_cpu" in
    alpha*)
      # On Alpha systems, a compiler option provides the behaviour.
      # See the ieee(3) manual page, also available at
      # <https://backdrift.org/man/tru64/man3/ieee.3.html>
      if test -n "$GCC"; then
        # GCC has the option -mieee.
        # For full IEEE compliance (rarely needed), use option -mieee-with-inexact.
        CPPFLAGS="$CPPFLAGS -mieee"
      else
        # Compaq (ex-DEC) C has the option -ieee, equivalent to -ieee_with_no_inexact.
        # For full IEEE compliance (rarely needed), use option -ieee_with_inexact.
        CPPFLAGS="$CPPFLAGS -ieee"
      fi
      ;;
    sh*)
      if test -n "$GCC"; then
        # GCC has the option -mieee.
        CPPFLAGS="$CPPFLAGS -mieee"
      fi
      ;;
  esac
])

# free.m4 serial 6
# Copyright (C) 2003-2005, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Written by Paul Eggert and Bruno Haible.

AC_DEFUN([gl_FUNC_FREE],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])

  dnl In the next release of POSIX, free must preserve errno.
  dnl https://www.austingroupbugs.net/view.php?id=385
  dnl https://sourceware.org/bugzilla/show_bug.cgi?id=17924
  dnl So far, we know of three platforms that do this:
  dnl * glibc >= 2.33, thanks to the fix for this bug:
  dnl   <https://sourceware.org/bugzilla/show_bug.cgi?id=17924>
  dnl * OpenBSD >= 4.5, thanks to this commit:
  dnl   <https://cvsweb.openbsd.org/cgi-bin/cvsweb/src/lib/libc/stdlib/malloc.c.diff?r1=1.100&r2=1.101&f=h>
  dnl * Solaris, because its malloc() implementation is based on brk(),
  dnl   not mmap(); hence its free() implementation makes no system calls.
  dnl For other platforms, you can only be sure if they state it in their
  dnl documentation, or by code inspection of the free() implementation in libc.
  AC_CACHE_CHECK([whether free is known to preserve errno],
    [gl_cv_func_free_preserves_errno],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdlib.h>
          ]],
          [[#if 2 < __GLIBC__ + (33 <= __GLIBC_MINOR__)
            #elif defined __OpenBSD__
            #elif defined __sun
            #else
              #error "'free' is not known to preserve errno"
            #endif
          ]])],
       [gl_cv_func_free_preserves_errno=yes],
       [gl_cv_func_free_preserves_errno=no])
    ])

  case $gl_cv_func_free_preserves_errno in
   *yes)
    AC_DEFINE([HAVE_FREE_POSIX], [1],
      [Define if the 'free' function is guaranteed to preserve errno.])
    ;;
   *) REPLACE_FREE=1 ;;
  esac
])

# Prerequisites of lib/free.c.
AC_DEFUN([gl_PREREQ_FREE], [:])

# frexp.m4 serial 16
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_FREXP],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_FREXP_NO_LIBM])
  FREXP_LIBM=
  if test $gl_cv_func_frexp_no_libm = no; then
    AC_CACHE_CHECK([whether frexp() can be used with libm],
      [gl_cv_func_frexp_in_libm],
      [
        save_LIBS="$LIBS"
        LIBS="$LIBS -lm"
        AC_LINK_IFELSE(
          [AC_LANG_PROGRAM(
             [[#include <math.h>
               double x;]],
             [[int e; return frexp (x, &e) > 0;]])],
          [gl_cv_func_frexp_in_libm=yes],
          [gl_cv_func_frexp_in_libm=no])
        LIBS="$save_LIBS"
      ])
    if test $gl_cv_func_frexp_in_libm = yes; then
      FREXP_LIBM=-lm
    fi
  fi
  if test $gl_cv_func_frexp_no_libm = yes \
     || test $gl_cv_func_frexp_in_libm = yes; then
    save_LIBS="$LIBS"
    LIBS="$LIBS $FREXP_LIBM"
    gl_FUNC_FREXP_WORKS
    LIBS="$save_LIBS"
    case "$gl_cv_func_frexp_works" in
      *yes) gl_func_frexp=yes ;;
      *)    gl_func_frexp=no; REPLACE_FREXP=1; FREXP_LIBM= ;;
    esac
  else
    gl_func_frexp=no
  fi
  if test $gl_func_frexp = yes; then
    AC_DEFINE([HAVE_FREXP], [1],
      [Define if the frexp() function is available and works.])
  fi
  AC_SUBST([FREXP_LIBM])
])

AC_DEFUN([gl_FUNC_FREXP_NO_LIBM],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_FREXP_NO_LIBM])
  if test $gl_cv_func_frexp_no_libm = yes; then
    gl_FUNC_FREXP_WORKS
    case "$gl_cv_func_frexp_works" in
      *yes) gl_func_frexp_no_libm=yes ;;
      *)    gl_func_frexp_no_libm=no; REPLACE_FREXP=1 ;;
    esac
  else
    gl_func_frexp_no_libm=no
    dnl Set REPLACE_FREXP here because the system may have frexp in libm.
    REPLACE_FREXP=1
  fi
  if test $gl_func_frexp_no_libm = yes; then
    AC_DEFINE([HAVE_FREXP_IN_LIBC], [1],
      [Define if the frexp() function is available in libc.])
  fi
])

dnl Test whether frexp() can be used without linking with libm.
dnl Set gl_cv_func_frexp_no_libm to 'yes' or 'no' accordingly.
AC_DEFUN([gl_CHECK_FREXP_NO_LIBM],
[
  AC_CACHE_CHECK([whether frexp() can be used without linking with libm],
    [gl_cv_func_frexp_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             double x;]],
           [[int e; return frexp (x, &e) > 0;]])],
        [gl_cv_func_frexp_no_libm=yes],
        [gl_cv_func_frexp_no_libm=no])
    ])
])

dnl Test whether frexp() works also on denormalized numbers (this fails e.g. on
dnl NetBSD 3.0), on infinite numbers (this fails e.g. on IRIX 6.5 and mingw),
dnl and on negative zero (this fails e.g. on NetBSD 4.99 and mingw).
AC_DEFUN([gl_FUNC_FREXP_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CHECK_DECLS_ONCE([alarm])
  AC_CACHE_CHECK([whether frexp works], [gl_cv_func_frexp_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <math.h>
#include <string.h>
#if HAVE_DECL_ALARM
# include <signal.h>
# include <unistd.h>
#endif
/* HP cc on HP-UX 10.20 has a bug with the constant expression -0.0.
   ICC 10.0 has a bug when optimizing the expression -zero.
   The expression -DBL_MIN * DBL_MIN does not work when cross-compiling
   to PowerPC on Mac OS X 10.5.  */
#if defined __hpux || defined __sgi || defined __ICC
static double
compute_minus_zero (void)
{
  return -DBL_MIN * DBL_MIN;
}
# define minus_zero compute_minus_zero ()
#else
double minus_zero = -0.0;
#endif
int main()
{
  int result = 0;
  int i;
  volatile double x;
  double zero = 0.0;
#if HAVE_DECL_ALARM
  /* NeXTstep 3.3 frexp() runs into an endless loop when called on an infinite
     number.  Let the test fail in this case.  */
  signal (SIGALRM, SIG_DFL);
  alarm (5);
#endif
  /* Test on denormalized numbers.  */
  for (i = 1, x = 1.0; i >= DBL_MIN_EXP; i--, x *= 0.5)
    ;
  if (x > 0.0)
    {
      int exp;
      double y = frexp (x, &exp);
      /* On machines with IEEE754 arithmetic: x = 1.11254e-308, exp = -1022.
         On NetBSD: y = 0.75. Correct: y = 0.5.  */
      if (y != 0.5)
        result |= 1;
    }
  /* Test on infinite numbers.  */
  x = 1.0 / zero;
  {
    int exp;
    double y = frexp (x, &exp);
    if (y != x)
      result |= 2;
  }
  /* Test on negative zero.  */
  x = minus_zero;
  {
    int exp;
    double y = frexp (x, &exp);
    if (memcmp (&y, &x, sizeof x))
      result |= 4;
  }
  return result;
}]])],
        [gl_cv_func_frexp_works=yes],
        [gl_cv_func_frexp_works=no],
        [case "$host_os" in
           netbsd* | irix*) gl_cv_func_frexp_works="guessing no" ;;
           mingw*) # Guess yes with MSVC, no with mingw.
             AC_EGREP_CPP([Good], [
#ifdef _MSC_VER
 Good
#endif
               ],
               [gl_cv_func_frexp_works="guessing yes"],
               [gl_cv_func_frexp_works="guessing no"])
             ;;
           *) gl_cv_func_frexp_works="guessing yes" ;;
         esac
        ])
    ])
])

# frexpl.m4 serial 22
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_FREXPL],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])

  dnl Persuade glibc <math.h> to declare frexpl().
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  dnl Check whether it's declared.
  dnl Mac OS X 10.3 has frexpl() in libc but doesn't declare it in <math.h>.
  AC_CHECK_DECL([frexpl], , [HAVE_DECL_FREXPL=0], [[#include <math.h>]])

  FREXPL_LIBM=
  if test $HAVE_DECL_FREXPL = 1; then
    gl_CHECK_FREXPL_NO_LIBM
    if test $gl_cv_func_frexpl_no_libm = no; then
      AC_CACHE_CHECK([whether frexpl() can be used with libm],
        [gl_cv_func_frexpl_in_libm],
        [
          save_LIBS="$LIBS"
          LIBS="$LIBS -lm"
          AC_LINK_IFELSE(
            [AC_LANG_PROGRAM(
               [[#include <math.h>
                 long double x;]],
               [[int e; return frexpl (x, &e) > 0;]])],
            [gl_cv_func_frexpl_in_libm=yes],
            [gl_cv_func_frexpl_in_libm=no])
          LIBS="$save_LIBS"
        ])
      if test $gl_cv_func_frexpl_in_libm = yes; then
        FREXPL_LIBM=-lm
      fi
    fi
    if test $gl_cv_func_frexpl_no_libm = yes \
       || test $gl_cv_func_frexpl_in_libm = yes; then
      save_LIBS="$LIBS"
      LIBS="$LIBS $FREXPL_LIBM"
      gl_FUNC_FREXPL_WORKS
      LIBS="$save_LIBS"
      case "$gl_cv_func_frexpl_works" in
        *yes) gl_func_frexpl=yes ;;
        *)    gl_func_frexpl=no; REPLACE_FREXPL=1 ;;
      esac
    else
      gl_func_frexpl=no
    fi
    if test $gl_func_frexpl = yes; then
      AC_DEFINE([HAVE_FREXPL], [1],
        [Define if the frexpl() function is available.])
    fi
  fi
  if test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl = no; then
    dnl Find libraries needed to link lib/frexpl.c.
    if test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 1; then
      AC_REQUIRE([gl_FUNC_FREXP])
      FREXPL_LIBM="$FREXP_LIBM"
    else
      FREXPL_LIBM=
    fi
  fi
  AC_SUBST([FREXPL_LIBM])
])

AC_DEFUN([gl_FUNC_FREXPL_NO_LIBM],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])
  dnl Check whether it's declared.
  dnl Mac OS X 10.3 has frexpl() in libc but doesn't declare it in <math.h>.
  AC_CHECK_DECL([frexpl], , [HAVE_DECL_FREXPL=0], [[#include <math.h>]])
  if test $HAVE_DECL_FREXPL = 1; then
    gl_CHECK_FREXPL_NO_LIBM
    if test $gl_cv_func_frexpl_no_libm = yes; then
      gl_FUNC_FREXPL_WORKS
      case "$gl_cv_func_frexpl_works" in
        *yes) gl_func_frexpl_no_libm=yes ;;
        *)    gl_func_frexpl_no_libm=no; REPLACE_FREXPL=1 ;;
      esac
    else
      gl_func_frexpl_no_libm=no
      dnl Set REPLACE_FREXPL here because the system may have frexpl in libm.
      REPLACE_FREXPL=1
    fi
    if test $gl_func_frexpl_no_libm = yes; then
      AC_DEFINE([HAVE_FREXPL_IN_LIBC], [1],
        [Define if the frexpl() function is available in libc.])
    fi
  fi
])

dnl Test whether frexpl() can be used without linking with libm.
dnl Set gl_cv_func_frexpl_no_libm to 'yes' or 'no' accordingly.
AC_DEFUN([gl_CHECK_FREXPL_NO_LIBM],
[
  AC_CACHE_CHECK([whether frexpl() can be used without linking with libm],
    [gl_cv_func_frexpl_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             long double x;]],
           [[int e; return frexpl (x, &e) > 0;]])],
        [gl_cv_func_frexpl_no_libm=yes],
        [gl_cv_func_frexpl_no_libm=no])
    ])
])

dnl Test whether frexpl() works on finite numbers (this fails on
dnl Mac OS X 10.4/PowerPC, on AIX 5.1, and on BeOS), on denormalized numbers
dnl (this fails on Mac OS X 10.5/i386), and also on infinite numbers (this
dnl fails e.g. on IRIX 6.5 and mingw).
AC_DEFUN([gl_FUNC_FREXPL_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether frexpl works], [gl_cv_func_frexpl_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <math.h>
/* Override the values of <float.h>, like done in float.in.h.  */
#if defined __i386__ && (defined __BEOS__ || defined __OpenBSD__)
# undef LDBL_MIN_EXP
# define LDBL_MIN_EXP    (-16381)
#endif
#if defined __i386__ && (defined __FreeBSD__ || defined __DragonFly__)
# undef LDBL_MIN_EXP
# define LDBL_MIN_EXP    (-16381)
#endif
#if (defined _ARCH_PPC || defined _POWER) && defined _AIX && (LDBL_MANT_DIG == 106) && defined __GNUC__
# undef LDBL_MIN_EXP
# define LDBL_MIN_EXP DBL_MIN_EXP
#endif
#if defined __sgi && (LDBL_MANT_DIG >= 106)
# if defined __GNUC__
#  undef LDBL_MIN_EXP
#  define LDBL_MIN_EXP DBL_MIN_EXP
# endif
#endif
extern
#ifdef __cplusplus
"C"
#endif
long double frexpl (long double, int *);
long double zero = 0.0L;
int main()
{
  int result = 0;
  volatile long double x;
  /* Test on finite numbers that fails on AIX 5.1.  */
  x = 16.0L;
  {
    int exp = -9999;
    frexpl (x, &exp);
    if (exp != 5)
      result |= 1;
  }
  /* Test on finite numbers that fails on Mac OS X 10.4, because its frexpl
     function returns an invalid (incorrectly normalized) value: it returns
               y = { 0x3fe028f5, 0xc28f5c28, 0x3c9eb851, 0xeb851eb8 }
     but the correct result is
          0.505L = { 0x3fe028f5, 0xc28f5c29, 0xbc547ae1, 0x47ae1480 }  */
  x = 1.01L;
  {
    int exp = -9999;
    long double y = frexpl (x, &exp);
    if (!(exp == 1 && y == 0.505L))
      result |= 2;
  }
  /* Test on large finite numbers.  This fails on BeOS at i = 16322, while
     LDBL_MAX_EXP = 16384.
     In the loop end test, we test x against Infinity, rather than comparing
     i with LDBL_MAX_EXP, because BeOS <float.h> has a wrong LDBL_MAX_EXP.  */
  {
    int i;
    for (i = 1, x = 1.0L; x != x + x; i++, x *= 2.0L)
      {
        int exp = -9999;
        frexpl (x, &exp);
        if (exp != i)
          {
            result |= 4;
            break;
          }
      }
  }
  /* Test on denormalized numbers.  */
  {
    int i;
    for (i = 1, x = 1.0L; i >= LDBL_MIN_EXP; i--, x *= 0.5L)
      ;
    if (x > 0.0L)
      {
        int exp;
        long double y = frexpl (x, &exp);
        /* On machines with IEEE854 arithmetic: x = 1.68105e-4932,
           exp = -16382, y = 0.5.  On Mac OS X 10.5: exp = -16384, y = 0.5.  */
        if (exp != LDBL_MIN_EXP - 1)
          result |= 8;
      }
  }
  /* Test on infinite numbers.  */
  /* The Microsoft MSVC 14 compiler chokes on the expression 1.0 / 0.0.  */
  x = 1.0L / zero;
  {
    int exp;
    long double y = frexpl (x, &exp);
    if (y != x)
      result |= 16;
  }
  return result;
}]])],
        [gl_cv_func_frexpl_works=yes],
        [gl_cv_func_frexpl_works=no],
        [
changequote(,)dnl
         case "$host_os" in
           aix | aix[3-6]* | beos* | darwin* | irix* | mingw* | pw*)
              gl_cv_func_frexpl_works="guessing no";;
           *) gl_cv_func_frexpl_works="guessing yes";;
         esac
changequote([,])dnl
        ])
    ])
])

# fstat.m4 serial 8
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_FSTAT],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])

  case "$host_os" in
    mingw* | solaris*)
      dnl On MinGW, the original stat() returns st_atime, st_mtime,
      dnl st_ctime values that are affected by the time zone.
      dnl Solaris stat can return a negative tv_nsec.
      REPLACE_FSTAT=1
      ;;
  esac

  dnl Replace fstat() for supporting the gnulib-defined open() on directories.
  m4_ifdef([gl_FUNC_FCHDIR], [
    gl_TEST_FCHDIR
    if test $HAVE_FCHDIR = 0; then
      case "$gl_cv_func_open_directory_works" in
        *yes) ;;
        *)
          REPLACE_FSTAT=1
          ;;
      esac
    fi
  ])
])

# Prerequisites of lib/fstat.c and lib/stat-w32.c.
AC_DEFUN([gl_PREREQ_FSTAT], [
  AC_REQUIRE([gl_SYS_STAT_H])
  AC_REQUIRE([gl_PREREQ_STAT_W32])
  :
])

# serial 9
# See if we need to provide futimens replacement.

dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Written by Eric Blake.

AC_DEFUN([gl_FUNC_FUTIMENS],
[
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_CHECK_FUNCS_ONCE([futimens])
  if test $ac_cv_func_futimens = no; then
    HAVE_FUTIMENS=0
  else
    AC_CACHE_CHECK([whether futimens works],
      [gl_cv_func_futimens_works],
      [AC_RUN_IFELSE([AC_LANG_PROGRAM([[
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>
]GL_MDA_DEFINES],
     [[struct timespec ts[2];
      int fd = creat ("conftest.file", 0600);
      struct stat st;
      if (fd < 0) return 1;
      ts[0].tv_sec = 1;
      ts[0].tv_nsec = UTIME_OMIT;
      ts[1].tv_sec = 1;
      ts[1].tv_nsec = UTIME_NOW;
      errno = 0;
      if (futimens (AT_FDCWD, NULL) == 0) return 2;
      if (errno != EBADF) return 3;
      if (futimens (fd, ts)) return 4;
      sleep (1);
      ts[0].tv_nsec = UTIME_NOW;
      ts[1].tv_nsec = UTIME_OMIT;
      if (futimens (fd, ts)) return 5;
      if (fstat (fd, &st)) return 6;
      if (st.st_ctime < st.st_atime) return 7;
      ]])],
         [gl_cv_func_futimens_works=yes],
         [gl_cv_func_futimens_works=no],
         [case "$host_os" in
                           # Guess no on glibc systems.
            *-gnu* | gnu*) gl_cv_func_futimens_works="guessing no" ;;
                           # Guess no on musl systems.
            *-musl*)       gl_cv_func_futimens_works="guessing no" ;;
                           # Guess yes otherwise.
            *)             gl_cv_func_futimens_works="guessing yes" ;;
          esac
         ])
      rm -f conftest.file])
    case "$gl_cv_func_futimens_works" in
      *yes) ;;
      *)
        REPLACE_FUTIMENS=1
        ;;
    esac
  fi
])

# getdelim.m4 serial 15

dnl Copyright (C) 2005-2007, 2009-2021 Free Software Foundation, Inc.
dnl
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_PREREQ([2.59])

AC_DEFUN([gl_FUNC_GETDELIM],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Persuade glibc <stdio.h> to declare getdelim().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_DECLS_ONCE([getdelim])

  AC_CHECK_FUNCS_ONCE([getdelim])
  if test $ac_cv_func_getdelim = yes; then
    HAVE_GETDELIM=1
    dnl Found it in some library.  Verify that it works.
    AC_CACHE_CHECK([for working getdelim function],
      [gl_cv_func_working_getdelim],
      [echo fooNbarN | tr -d '\012' | tr N '\012' > conftest.data
       AC_RUN_IFELSE([AC_LANG_SOURCE([[
#    include <stdio.h>
#    include <stdlib.h>
#    include <string.h>
    int main ()
    {
      FILE *in = fopen ("./conftest.data", "r");
      if (!in)
        return 1;
      {
        /* Test result for a NULL buffer and a zero size.
           Based on a test program from Karl Heuer.  */
        char *line = NULL;
        size_t siz = 0;
        int len = getdelim (&line, &siz, '\n', in);
        if (!(len == 4 && line && strcmp (line, "foo\n") == 0))
          { free (line); fclose (in); return 2; }
        free (line);
      }
      {
        /* Test result for a NULL buffer and a non-zero size.
           This crashes on FreeBSD 8.0.  */
        char *line = NULL;
        size_t siz = (size_t)(~0) / 4;
        if (getdelim (&line, &siz, '\n', in) == -1)
          { fclose (in); return 3; }
        free (line);
      }
      fclose (in);
      return 0;
    }
    ]])],
         [gl_cv_func_working_getdelim=yes],
         [gl_cv_func_working_getdelim=no],
         [dnl We're cross compiling.
          dnl Guess it works on glibc2 systems and musl systems.
          AC_EGREP_CPP([Lucky GNU user],
            [
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if (__GLIBC__ >= 2) && !defined __UCLIBC__
  Lucky GNU user
 #endif
#endif
            ],
            [gl_cv_func_working_getdelim="guessing yes"],
            [case "$host_os" in
               *-musl*) gl_cv_func_working_getdelim="guessing yes" ;;
               *)       gl_cv_func_working_getdelim="$gl_cross_guess_normal" ;;
             esac
            ])
         ])
      ])
    case "$gl_cv_func_working_getdelim" in
      *yes) ;;
      *) REPLACE_GETDELIM=1 ;;
    esac
  else
    HAVE_GETDELIM=0
  fi

  if test $ac_cv_have_decl_getdelim = no; then
    HAVE_DECL_GETDELIM=0
  fi
])

# Prerequisites of lib/getdelim.c.
AC_DEFUN([gl_PREREQ_GETDELIM],
[
  AC_CHECK_FUNCS([flockfile funlockfile])
  AC_CHECK_DECLS([getc_unlocked])
])

# getdtablesize.m4 serial 8
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_GETDTABLESIZE],
[
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS_ONCE([getdtablesize])
  AC_CHECK_DECLS_ONCE([getdtablesize])
  if test $ac_cv_func_getdtablesize = yes &&
     test $ac_cv_have_decl_getdtablesize = yes; then
    AC_CACHE_CHECK([whether getdtablesize works],
      [gl_cv_func_getdtablesize_works],
      [dnl There are two concepts: the "maximum possible file descriptor value + 1"
       dnl and the "maximum number of open file descriptors in a process".
       dnl Per SUSv2 and POSIX, getdtablesize() should return the first one.
       dnl On most platforms, the first and the second concept are the same.
       dnl On OpenVMS, however, they are different and getdtablesize() returns
       dnl the second one; thus the test below fails. But we don't care
       dnl because there's no good way to write a replacement getdtablesize().
       case "$host_os" in
         vms*) gl_cv_func_getdtablesize_works="no (limitation)" ;;
         *)
           dnl Cygwin 1.7.25 automatically increases the RLIMIT_NOFILE soft
           dnl limit up to an unchangeable hard limit; all other platforms
           dnl correctly require setrlimit before getdtablesize() can report
           dnl a larger value.
           AC_RUN_IFELSE([
             AC_LANG_PROGRAM(
               [[#include <unistd.h>]
                GL_MDA_DEFINES
               ],
               [[int size = getdtablesize();
                 if (dup2 (0, getdtablesize()) != -1)
                   return 1;
                 if (size != getdtablesize())
                   return 2;
               ]])],
             [gl_cv_func_getdtablesize_works=yes],
             [gl_cv_func_getdtablesize_works=no],
             [case "$host_os" in
                cygwin*) # on cygwin 1.5.25, getdtablesize() automatically grows
                  gl_cv_func_getdtablesize_works="guessing no" ;;
                *) gl_cv_func_getdtablesize_works="guessing yes" ;;
              esac
             ])
           ;;
       esac
      ])
    case "$gl_cv_func_getdtablesize_works" in
      *yes | "no (limitation)") ;;
      *) REPLACE_GETDTABLESIZE=1 ;;
    esac
  else
    HAVE_GETDTABLESIZE=0
  fi
])

# Prerequisites of lib/getdtablesize.c.
AC_DEFUN([gl_PREREQ_GETDTABLESIZE], [:])

# getline.m4 serial 30

dnl Copyright (C) 1998-2003, 2005-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_PREREQ([2.59])

dnl See if there's a working, system-supplied version of the getline function.
dnl We can't just do AC_REPLACE_FUNCS([getline]) because some systems
dnl have a function by that name in -linet that doesn't have anything
dnl to do with the function we need.
AC_DEFUN([gl_FUNC_GETLINE],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Persuade glibc <stdio.h> to declare getline().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_DECLS_ONCE([getline])

  gl_getline_needs_run_time_check=no
  AC_CHECK_FUNC([getline],
                [dnl Found it in some library.  Verify that it works.
                 gl_getline_needs_run_time_check=yes],
                [am_cv_func_working_getline=no])
  if test $gl_getline_needs_run_time_check = yes; then
    AC_CACHE_CHECK([for working getline function],
      [am_cv_func_working_getline],
      [echo fooNbarN | tr -d '\012' | tr N '\012' > conftest.data
       AC_RUN_IFELSE([AC_LANG_SOURCE([[
#    include <stdio.h>
#    include <stdlib.h>
#    include <string.h>
    int main ()
    {
      FILE *in = fopen ("./conftest.data", "r");
      if (!in)
        return 1;
      {
        /* Test result for a NULL buffer and a zero size.
           Based on a test program from Karl Heuer.  */
        char *line = NULL;
        size_t siz = 0;
        int len = getline (&line, &siz, in);
        if (!(len == 4 && line && strcmp (line, "foo\n") == 0))
          { free (line); fclose (in); return 2; }
        free (line);
      }
      {
        /* Test result for a NULL buffer and a non-zero size.
           This crashes on FreeBSD 8.0.  */
        char *line = NULL;
        size_t siz = (size_t)(~0) / 4;
        if (getline (&line, &siz, in) == -1)
          { fclose (in); return 3; }
        free (line);
      }
      fclose (in);
      return 0;
    }
    ]])],
         [am_cv_func_working_getline=yes],
         [am_cv_func_working_getline=no],
         [dnl We're cross compiling.
          dnl Guess it works on glibc2 systems and musl systems.
          AC_EGREP_CPP([Lucky GNU user],
            [
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if (__GLIBC__ >= 2) && !defined __UCLIBC__
  Lucky GNU user
 #endif
#endif
            ],
            [am_cv_func_working_getline="guessing yes"],
            [case "$host_os" in
               *-musl*) am_cv_func_working_getline="guessing yes" ;;
               *)       am_cv_func_working_getline="$gl_cross_guess_normal" ;;
             esac
            ])
         ])
      ])
  fi

  if test $ac_cv_have_decl_getline = no; then
    HAVE_DECL_GETLINE=0
  fi

  case "$am_cv_func_working_getline" in
    *yes) ;;
    *)
      dnl Set REPLACE_GETLINE always: Even if we have not found the broken
      dnl getline function among $LIBS, it may exist in libinet and the
      dnl executable may be linked with -linet.
      REPLACE_GETLINE=1
      ;;
  esac
])

# Prerequisites of lib/getline.c.
AC_DEFUN([gl_PREREQ_GETLINE],
[
  :
])

# getlogin.m4 serial 5
dnl Copyright (C) 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_GETLOGIN],
[
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
  AC_CHECK_DECLS_ONCE([getlogin])
  if test $ac_cv_have_decl_getlogin = no; then
    HAVE_DECL_GETLOGIN=0
  fi
  AC_CHECK_FUNCS_ONCE([getlogin])
  if test $ac_cv_func_getlogin = no; then
    HAVE_GETLOGIN=0
  fi
])

dnl Determines the library needed by the implementation of the
dnl getlogin and getlogin_r functions.
AC_DEFUN([gl_LIB_GETLOGIN],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  case $host_os in
    mingw*)
      LIB_GETLOGIN='-ladvapi32' ;;
    *)
      LIB_GETLOGIN= ;;
  esac
  AC_SUBST([LIB_GETLOGIN])
])

#serial 13

# Copyright (C) 2005-2007, 2009-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Derek Price
dnl
dnl Provide getlogin_r when the system lacks it.
dnl

AC_DEFUN([gl_FUNC_GETLOGIN_R],
[
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])

  dnl Persuade glibc <unistd.h> to declare getlogin_r().
  dnl Persuade Solaris <unistd.h> to provide the POSIX compliant declaration of
  dnl getlogin_r().
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_DECLS_ONCE([getlogin_r])
  if test $ac_cv_have_decl_getlogin_r = no; then
    HAVE_DECL_GETLOGIN_R=0
  fi

  AC_CHECK_FUNCS_ONCE([getlogin_r])
  if test $ac_cv_func_getlogin_r = no; then
    HAVE_GETLOGIN_R=0
  else
    HAVE_GETLOGIN_R=1
    dnl On Mac OS X 10.13 and OSF/1 5.1, getlogin_r returns a truncated result
    dnl if the buffer is not large enough.
    AC_REQUIRE([AC_CANONICAL_HOST])
    AC_CACHE_CHECK([whether getlogin_r works with small buffers],
      [gl_cv_func_getlogin_r_works],
      [
        dnl Initial guess, used when cross-compiling.
changequote(,)dnl
        case "$host_os" in
                          # Guess no on Mac OS X, OSF/1.
          darwin* | osf*) gl_cv_func_getlogin_r_works="guessing no" ;;
                          # Guess yes otherwise.
          *)              gl_cv_func_getlogin_r_works="guessing yes" ;;
        esac
changequote([,])dnl
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <stddef.h>
#include <string.h>
#include <unistd.h>
#if !HAVE_DECL_GETLOGIN_R
extern
# ifdef __cplusplus
"C"
# endif
int getlogin_r (char *, size_t);
#endif
int
main (void)
{
  int result = 0;
  char buf[100];

  if (getlogin_r (buf, 0) == 0)
    result |= 1;
  if (getlogin_r (buf, 1) == 0)
    result |= 2;
  if (getlogin_r (buf, 100) == 0)
    {
      size_t n = strlen (buf);
      if (getlogin_r (buf, n) == 0)
        result |= 4;
    }
  return result;
}]])],
          [gl_cv_func_getlogin_r_works=yes],
          [gl_cv_func_getlogin_r_works=no],
          [:])
      ])
    case "$gl_cv_func_getlogin_r_works" in
      *yes) ;;
      *) REPLACE_GETLOGIN_R=1 ;;
    esac
  fi
])

AC_DEFUN([gl_PREREQ_GETLOGIN_R],
[
  AC_CHECK_DECLS_ONCE([getlogin])
])

# getopt.m4 serial 47
dnl Copyright (C) 2002-2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Request a POSIX compliant getopt function.
AC_DEFUN([gl_FUNC_GETOPT_POSIX],
[
  m4_divert_text([DEFAULTS], [gl_getopt_required=POSIX])
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
  AC_REQUIRE([gl_GETOPT_CHECK_HEADERS])
  dnl Other modules can request the gnulib implementation of the getopt
  dnl functions unconditionally, by defining gl_REPLACE_GETOPT_ALWAYS.
  dnl argp.m4 does this.
  m4_ifdef([gl_REPLACE_GETOPT_ALWAYS], [
    REPLACE_GETOPT=1
  ], [
    REPLACE_GETOPT=0
    if test -n "$gl_replace_getopt"; then
      REPLACE_GETOPT=1
    fi
  ])
  if test $REPLACE_GETOPT = 1; then
    dnl Arrange for getopt.h to be created.
    gl_GETOPT_SUBSTITUTE_HEADER
  fi
])

# Request a POSIX compliant getopt function with GNU extensions (such as
# options with optional arguments) and the functions getopt_long,
# getopt_long_only.
AC_DEFUN([gl_FUNC_GETOPT_GNU],
[
  dnl Set the variable gl_getopt_required, so that all invocations of
  dnl gl_GETOPT_CHECK_HEADERS in the scope of the current configure file
  dnl will check for getopt with GNU extensions.
  dnl This means that if one gnulib-tool invocation requests getopt-posix
  dnl and another gnulib-tool invocation requests getopt-gnu, it is as if
  dnl both had requested getopt-gnu.
  m4_divert_text([INIT_PREPARE], [gl_getopt_required=GNU])

  dnl No need to invoke gl_FUNC_GETOPT_POSIX here; this is automatically
  dnl done through the module dependency getopt-gnu -> getopt-posix.
])

# Determine whether to replace the entire getopt facility.
AC_DEFUN([gl_GETOPT_CHECK_HEADERS],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([AC_PROG_AWK]) dnl for awk that supports ENVIRON

  dnl Persuade Solaris <unistd.h> to declare optarg, optind, opterr, optopt.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  gl_CHECK_NEXT_HEADERS([getopt.h])
  if test $ac_cv_header_getopt_h = yes; then
    HAVE_GETOPT_H=1
  else
    HAVE_GETOPT_H=0
  fi
  AC_SUBST([HAVE_GETOPT_H])

  gl_replace_getopt=

  dnl Test whether <getopt.h> is available.
  if test -z "$gl_replace_getopt" && test $gl_getopt_required = GNU; then
    AC_CHECK_HEADERS([getopt.h], [], [gl_replace_getopt=yes])
  fi

  dnl Test whether the function getopt_long is available.
  if test -z "$gl_replace_getopt" && test $gl_getopt_required = GNU; then
    AC_CHECK_FUNCS([getopt_long_only], [], [gl_replace_getopt=yes])
  fi

  dnl POSIX 2008 does not specify leading '+' behavior, but see
  dnl http://austingroupbugs.net/view.php?id=191 for a recommendation on
  dnl the next version of POSIX.  For now, we only guarantee leading '+'
  dnl behavior with getopt-gnu.
  if test -z "$gl_replace_getopt"; then
    AC_CACHE_CHECK([whether getopt is POSIX compatible],
      [gl_cv_func_getopt_posix],
      [
        dnl Merging these three different test programs into a single one
        dnl would require a reset mechanism. On BSD systems, it can be done
        dnl through 'optreset'; on some others (glibc), it can be done by
        dnl setting 'optind' to 0; on others again (HP-UX, IRIX, OSF/1,
        dnl Solaris 9, musl libc), there is no such mechanism.
        if test $cross_compiling = no; then
          dnl Sanity check. Succeeds everywhere (except on MSVC,
          dnl which lacks <unistd.h> and getopt() entirely).
          AC_RUN_IFELSE(
            [AC_LANG_SOURCE([[
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int
main ()
{
  static char program[] = "program";
  static char a[] = "-a";
  static char foo[] = "foo";
  static char bar[] = "bar";
  char *argv[] = { program, a, foo, bar, NULL };
  int c;

  c = getopt (4, argv, "ab");
  if (!(c == 'a'))
    return 1;
  c = getopt (4, argv, "ab");
  if (!(c == -1))
    return 2;
  if (!(optind == 2))
    return 3;
  return 0;
}
]])],
            [gl_cv_func_getopt_posix=maybe],
            [gl_cv_func_getopt_posix=no])
          if test $gl_cv_func_getopt_posix = maybe; then
            dnl Sanity check with '+'. Succeeds everywhere (except on MSVC,
            dnl which lacks <unistd.h> and getopt() entirely).
            AC_RUN_IFELSE(
              [AC_LANG_SOURCE([[
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int
main ()
{
  static char program[] = "program";
  static char donald[] = "donald";
  static char p[] = "-p";
  static char billy[] = "billy";
  static char duck[] = "duck";
  static char a[] = "-a";
  static char bar[] = "bar";
  char *argv[] = { program, donald, p, billy, duck, a, bar, NULL };
  int c;

  c = getopt (7, argv, "+abp:q:");
  if (!(c == -1))
    return 4;
  if (!(strcmp (argv[0], "program") == 0))
    return 5;
  if (!(strcmp (argv[1], "donald") == 0))
    return 6;
  if (!(strcmp (argv[2], "-p") == 0))
    return 7;
  if (!(strcmp (argv[3], "billy") == 0))
    return 8;
  if (!(strcmp (argv[4], "duck") == 0))
    return 9;
  if (!(strcmp (argv[5], "-a") == 0))
    return 10;
  if (!(strcmp (argv[6], "bar") == 0))
    return 11;
  if (!(optind == 1))
    return 12;
  return 0;
}
]])],
              [gl_cv_func_getopt_posix=maybe],
              [gl_cv_func_getopt_posix=no])
          fi
          if test $gl_cv_func_getopt_posix = maybe; then
            dnl Detect Mac OS X 10.5, AIX 7.1, mingw bug.
            AC_RUN_IFELSE(
              [AC_LANG_SOURCE([[
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int
main ()
{
  static char program[] = "program";
  static char ab[] = "-ab";
  char *argv[3] = { program, ab, NULL };
  if (getopt (2, argv, "ab:") != 'a')
    return 13;
  if (getopt (2, argv, "ab:") != '?')
    return 14;
  if (optopt != 'b')
    return 15;
  if (optind != 2)
    return 16;
  return 0;
}
]])],
              [gl_cv_func_getopt_posix=yes],
              [gl_cv_func_getopt_posix=no])
          fi
        else
          case "$host_os" in
            darwin* | aix* | mingw*) gl_cv_func_getopt_posix="guessing no";;
            *)                       gl_cv_func_getopt_posix="guessing yes";;
          esac
        fi
      ])
    case "$gl_cv_func_getopt_posix" in
      *no) gl_replace_getopt=yes ;;
    esac
  fi

  if test -z "$gl_replace_getopt" && test $gl_getopt_required = GNU; then
    AC_CACHE_CHECK([for working GNU getopt function], [gl_cv_func_getopt_gnu],
      [# Even with POSIXLY_CORRECT, the GNU extension of leading '-' in the
       # optstring is necessary for programs like m4 that have POSIX-mandated
       # semantics for supporting options interspersed with files.
       # Also, since getopt_long is a GNU extension, we require optind=0.
       # Bash ties 'set -o posix' to a non-exported POSIXLY_CORRECT;
       # so take care to revert to the correct (non-)export state.
dnl GNU Coding Standards currently allow awk but not env; besides, env
dnl is ambiguous with environment values that contain newlines.
       gl_awk_probe='BEGIN { if ("POSIXLY_CORRECT" in ENVIRON) print "x" }'
       case ${POSIXLY_CORRECT+x}`$AWK "$gl_awk_probe" </dev/null` in
         xx) gl_had_POSIXLY_CORRECT=exported ;;
         x)  gl_had_POSIXLY_CORRECT=yes      ;;
         *)  gl_had_POSIXLY_CORRECT=         ;;
       esac
       POSIXLY_CORRECT=1
       export POSIXLY_CORRECT
       AC_RUN_IFELSE(
        [AC_LANG_PROGRAM([[#include <getopt.h>
                           #include <stddef.h>
                           #include <string.h>
           ]GL_NOCRASH[
           ]], [[
             int result = 0;

             nocrash_init();

             /* This code succeeds on glibc 2.8, OpenBSD 4.0, Cygwin, mingw,
                and fails on Mac OS X 10.5, AIX 5.2, HP-UX 11, IRIX 6.5,
                OSF/1 5.1, Solaris 10.  */
             {
               static char conftest[] = "conftest";
               static char plus[] = "-+";
               char *argv[3] = { conftest, plus, NULL };
               opterr = 0;
               if (getopt (2, argv, "+a") != '?')
                 result |= 1;
             }
             /* This code succeeds on glibc 2.8, mingw,
                and fails on Mac OS X 10.5, OpenBSD 4.0, AIX 5.2, HP-UX 11,
                IRIX 6.5, OSF/1 5.1, Solaris 10, Cygwin 1.5.x.  */
             {
               static char program[] = "program";
               static char p[] = "-p";
               static char foo[] = "foo";
               static char bar[] = "bar";
               char *argv[] = { program, p, foo, bar, NULL };

               optind = 1;
               if (getopt (4, argv, "p::") != 'p')
                 result |= 2;
               else if (optarg != NULL)
                 result |= 4;
               else if (getopt (4, argv, "p::") != -1)
                 result |= 6;
               else if (optind != 2)
                 result |= 8;
             }
             /* This code succeeds on glibc 2.8 and fails on Cygwin 1.7.0.  */
             {
               static char program[] = "program";
               static char foo[] = "foo";
               static char p[] = "-p";
               char *argv[] = { program, foo, p, NULL };
               optind = 0;
               if (getopt (3, argv, "-p") != 1)
                 result |= 16;
               else if (getopt (3, argv, "-p") != 'p')
                 result |= 16;
             }
             /* This code fails on glibc 2.11.  */
             {
               static char program[] = "program";
               static char b[] = "-b";
               static char a[] = "-a";
               char *argv[] = { program, b, a, NULL };
               optind = opterr = 0;
               if (getopt (3, argv, "+:a:b") != 'b')
                 result |= 32;
               else if (getopt (3, argv, "+:a:b") != ':')
                 result |= 32;
             }
             /* This code dumps core on glibc 2.14.  */
             {
               static char program[] = "program";
               static char w[] = "-W";
               static char dummy[] = "dummy";
               char *argv[] = { program, w, dummy, NULL };
               optind = opterr = 1;
               if (getopt (3, argv, "W;") != 'W')
                 result |= 64;
             }
             return result;
           ]])],
        [gl_cv_func_getopt_gnu=yes],
        [gl_cv_func_getopt_gnu=no],
        [dnl Cross compiling.
         dnl Assume the worst, even on glibc platforms.
         dnl But obey --enable-cross-guesses.
         gl_cv_func_getopt_gnu="$gl_cross_guess_normal"
        ])
       case $gl_had_POSIXLY_CORRECT in
         exported) ;;
         yes) AS_UNSET([POSIXLY_CORRECT]); POSIXLY_CORRECT=1 ;;
         *) AS_UNSET([POSIXLY_CORRECT]) ;;
       esac
      ])
    if test "$gl_cv_func_getopt_gnu" != yes; then
      gl_replace_getopt=yes
    else
      AC_CACHE_CHECK([for working GNU getopt_long function],
        [gl_cv_func_getopt_long_gnu],
        [AC_RUN_IFELSE(
           [AC_LANG_PROGRAM(
              [[#include <getopt.h>
                #include <stddef.h>
                #include <string.h>
              ]],
              [[static const struct option long_options[] =
                  {
                    { "xtremely-",no_argument,       NULL, 1003 },
                    { "xtra",     no_argument,       NULL, 1001 },
                    { "xtreme",   no_argument,       NULL, 1002 },
                    { "xtremely", no_argument,       NULL, 1003 },
                    { NULL,       0,                 NULL, 0 }
                  };
                /* This code fails on OpenBSD 5.0.  */
                {
                  static char program[] = "program";
                  static char xtremel[] = "--xtremel";
                  char *argv[] = { program, xtremel, NULL };
                  int option_index;
                  optind = 1; opterr = 0;
                  if (getopt_long (2, argv, "", long_options, &option_index) != 1003)
                    return 1;
                }
                return 0;
              ]])],
           [gl_cv_func_getopt_long_gnu=yes],
           [gl_cv_func_getopt_long_gnu=no],
           [dnl Cross compiling. Guess no on OpenBSD, yes otherwise.
            case "$host_os" in
              openbsd*) gl_cv_func_getopt_long_gnu="guessing no";;
              *)        gl_cv_func_getopt_long_gnu="guessing yes";;
            esac
           ])
        ])
      case "$gl_cv_func_getopt_long_gnu" in
        *yes) ;;
        *) gl_replace_getopt=yes ;;
      esac
    fi
  fi
])

AC_DEFUN([gl_GETOPT_SUBSTITUTE_HEADER],
[
  AC_CHECK_HEADERS_ONCE([sys/cdefs.h])
  if test $ac_cv_header_sys_cdefs_h = yes; then
    HAVE_SYS_CDEFS_H=1
  else
    HAVE_SYS_CDEFS_H=0
  fi
  AC_SUBST([HAVE_SYS_CDEFS_H])

  AC_DEFINE([__GETOPT_PREFIX], [[rpl_]],
    [Define to rpl_ if the getopt replacement functions and variables
     should be used.])
  GETOPT_H=getopt.h
  GETOPT_CDEFS_H=getopt-cdefs.h
  AC_SUBST([GETOPT_H])
  AC_SUBST([GETOPT_CDEFS_H])
])

# getrandom.m4 serial 8
dnl Copyright 2020-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Paul Eggert.

AC_DEFUN([gl_FUNC_GETRANDOM],
[
  AC_REQUIRE([gl_SYS_RANDOM_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([getrandom])
  if test "$ac_cv_func_getrandom" != yes; then
    HAVE_GETRANDOM=0
  else
    dnl On Solaris 11.4 the return type is 'int', not 'ssize_t'.
    AC_CACHE_CHECK([whether getrandom is compatible with its GNU+BSD signature],
      [gl_cv_func_getrandom_ok],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[/* Additional includes are needed before <sys/random.h> on uClibc
                 and Mac OS X.  */
              #include <sys/types.h>
              #include <stdlib.h>
              #include <sys/random.h>
              ssize_t getrandom (void *, size_t, unsigned int);
            ]],
            [[]])
         ],
         [gl_cv_func_getrandom_ok=yes],
         [gl_cv_func_getrandom_ok=no])
      ])
    if test $gl_cv_func_getrandom_ok = no; then
      REPLACE_GETRANDOM=1
    fi
  fi

  case "$host_os" in
    mingw*)
      AC_CHECK_HEADERS([bcrypt.h], [], [],
        [[#include <windows.h>
        ]])
      AC_CACHE_CHECK([whether the bcrypt library is guaranteed to be present],
        [gl_cv_lib_assume_bcrypt],
        [AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM(
              [[#include <windows.h>]],
              [[#if !(_WIN32_WINNT >= _WIN32_WINNT_WIN7)
                  cannot assume it
                #endif
              ]])
           ],
           [gl_cv_lib_assume_bcrypt=yes],
           [gl_cv_lib_assume_bcrypt=no])
        ])
      if test $gl_cv_lib_assume_bcrypt = yes; then
        AC_DEFINE([HAVE_LIB_BCRYPT], [1],
          [Define to 1 if the bcrypt library is guaranteed to be present.])
        LIB_GETRANDOM='-lbcrypt'
      else
        LIB_GETRANDOM='-ladvapi32'
      fi
      ;;
    *)
      LIB_GETRANDOM= ;;
  esac
  AC_SUBST([LIB_GETRANDOM])
])

# gettime.m4 serial 9
dnl Copyright (C) 2002, 2004-2006, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_GETTIME],
[
  dnl Prerequisites of lib/gettime.c.
  AC_REQUIRE([gl_CLOCK_TIME])
  AC_REQUIRE([gl_TIMESPEC])
  AC_CHECK_FUNCS_ONCE([gettimeofday])
])

# serial 29

# Copyright (C) 2001-2003, 2005, 2007, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Jim Meyering.

AC_DEFUN([gl_FUNC_GETTIMEOFDAY],
[
  AC_REQUIRE([gl_SYS_TIME_H_DEFAULTS])
  AC_REQUIRE([AC_C_RESTRICT])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_SYS_TIME_H])
  AC_CHECK_FUNCS_ONCE([gettimeofday])

  gl_gettimeofday_timezone=void
  if test $ac_cv_func_gettimeofday != yes; then
    HAVE_GETTIMEOFDAY=0
  else
    AC_CACHE_CHECK([for gettimeofday with POSIX signature],
      [gl_cv_func_gettimeofday_posix_signature],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[#include <sys/time.h>
              struct timeval c;
              int gettimeofday (struct timeval *restrict, void *restrict);
            ]],
            [[/* glibc uses struct timezone * rather than the POSIX void *
                 if _GNU_SOURCE is defined.  However, since the only portable
                 use of gettimeofday uses NULL as the second parameter, and
                 since the glibc definition is actually more typesafe, it is
                 not worth wrapping this to get a compliant signature.  */
              int (*f) (struct timeval *restrict, void *restrict)
                = gettimeofday;
              int x = f (&c, 0);
              return !(x | c.tv_sec | c.tv_usec);
            ]])],
          [gl_cv_func_gettimeofday_posix_signature=yes],
          [AC_COMPILE_IFELSE(
            [AC_LANG_PROGRAM(
              [[#include <sys/time.h>
int gettimeofday (struct timeval *restrict, struct timezone *restrict);
              ]])],
            [gl_cv_func_gettimeofday_posix_signature=almost],
            [gl_cv_func_gettimeofday_posix_signature=no])])])
    if test $gl_cv_func_gettimeofday_posix_signature = almost; then
      gl_gettimeofday_timezone='struct timezone'
    elif test $gl_cv_func_gettimeofday_posix_signature != yes; then
      REPLACE_GETTIMEOFDAY=1
    fi
    dnl If we override 'struct timeval', we also have to override gettimeofday.
    if test $REPLACE_STRUCT_TIMEVAL = 1; then
      REPLACE_GETTIMEOFDAY=1
    fi
    dnl On mingw, the original gettimeofday has only a precision of 15.6
    dnl milliseconds. So override it.
    case "$host_os" in
      mingw*) REPLACE_GETTIMEOFDAY=1 ;;
    esac
  fi
  AC_DEFINE_UNQUOTED([GETTIMEOFDAY_TIMEZONE], [$gl_gettimeofday_timezone],
    [Define this to 'void' or 'struct timezone' to match the system's
     declaration of the second argument to gettimeofday.])
])

# Prerequisites of lib/gettimeofday.c.
AC_DEFUN([gl_PREREQ_GETTIMEOFDAY], [:])

# glob.m4 serial 24
dnl Copyright (C) 2005-2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# The glob module assumes you want GNU glob, with glob_pattern_p etc,
# rather than vanilla POSIX glob.  This means your code should
# always include <glob.h> for the glob prototypes.

AC_DEFUN([gl_GLOB],
[
  AC_REQUIRE([gl_GLOB_H])

  AC_CHECK_FUNCS_ONCE([glob glob_pattern_p])
  if test $ac_cv_func_glob = no; then
    HAVE_GLOB=0
  else

    AC_CACHE_CHECK([for GNU glob interface version 1 or 2],
      [gl_cv_gnu_glob_interface_version_1_2],
[     AC_COMPILE_IFELSE([AC_LANG_SOURCE(
[[#include <gnu-versions.h>
char a[_GNU_GLOB_INTERFACE_VERSION == 1 || _GNU_GLOB_INTERFACE_VERSION == 2 ? 1 : -1];]])],
        [gl_cv_gnu_glob_interface_version_1_2=yes],
        [gl_cv_gnu_glob_interface_version_1_2=no])])
    if test "$gl_cv_gnu_glob_interface_version_1_2" = "no"; then
      REPLACE_GLOB=1
    fi

    if test $REPLACE_GLOB = 0; then
      AC_CACHE_CHECK([whether glob lists broken symlinks],
                     [gl_cv_glob_lists_symlinks],
        [if test $cross_compiling != yes; then
           if ln -s conf-doesntexist conf$$-globtest 2>/dev/null; then
             gl_cv_glob_lists_symlinks=maybe
           else
             # If we can't make a symlink, then we cannot test this issue.  Be
             # pessimistic about this.
             gl_cv_glob_lists_symlinks=no
           fi
           if test $gl_cv_glob_lists_symlinks = maybe; then
             AC_RUN_IFELSE(
               [AC_LANG_PROGRAM(
                  [[#include <stddef.h>
                    #include <glob.h>]],
                  [[glob_t found;
                    if (glob ("conf*-globtest", 0, NULL, &found) == GLOB_NOMATCH)
                      return 1;
                    globfree (&found);
                  ]])],
               [gl_cv_glob_lists_symlinks=yes],
               [gl_cv_glob_lists_symlinks=no],
               [dnl We don't get here.
                :
               ])
           fi
           rm -f conf$$-globtest
         else
           gl_cv_glob_lists_symlinks="$gl_cross_guess_normal"
         fi
        ])
      case "$gl_cv_glob_lists_symlinks" in
        *yes) ;;
        *) REPLACE_GLOB=1 ;;
      esac
    fi

  fi

  if test $ac_cv_func_glob_pattern_p = no; then
    HAVE_GLOB_PATTERN_P=0
  else
    if test $REPLACE_GLOB = 1; then
      REPLACE_GLOB_PATTERN_P=1
    fi
  fi

  if test $HAVE_GLOB = 0 || test $REPLACE_GLOB = 1; then
    gl_REPLACE_GLOB_H
  fi
])

# Prerequisites of lib/glob.c and lib/globfree.c.
AC_DEFUN([gl_PREREQ_GLOB],
[
  AC_REQUIRE([gl_CHECK_TYPE_STRUCT_DIRENT_D_TYPE])
  AC_CHECK_HEADERS_ONCE([unistd.h])
  AC_CHECK_FUNCS_ONCE([getlogin_r getpwnam_r])
])

# glob_h.m4 serial 8
dnl Copyright (C) 2018-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN_ONCE([gl_GLOB_H],
[
  AC_REQUIRE([gl_GLOB_H_DEFAULTS])
  m4_ifdef([gl_ANSI_CXX], [AC_REQUIRE([gl_ANSI_CXX])])
  AC_REQUIRE([AC_C_RESTRICT])
  AC_CHECK_HEADERS_ONCE([glob.h])
  gl_CHECK_NEXT_HEADERS([glob.h])

  if test $ac_cv_header_glob_h = yes; then
    HAVE_GLOB_H=1
  else
    HAVE_GLOB_H=0
  fi
  AC_SUBST([HAVE_GLOB_H])

  m4_ifdef([gl_POSIXCHECK],
    [GLOB_H=glob.h],
    [GLOB_H=''
     if m4_ifdef([gl_ANSI_CXX], [test "$CXX" != no], [false]); then
       dnl Override <glob.h> always, to support the C++ GNULIB_NAMESPACE.
       GLOB_H=glob.h
     else
       if test $ac_cv_header_glob_h != yes; then
         dnl Provide a substitute <glob.h> file.
         GLOB_H=glob.h
       fi
     fi
    ])
  AC_SUBST([GLOB_H])
  AM_CONDITIONAL([GL_GENERATE_GLOB_H], [test -n "$GLOB_H"])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <glob.h>
    ]],
    [glob globfree glob_pattern_p])
])

dnl Unconditionally enables the replacement of <glob.h>.
AC_DEFUN([gl_REPLACE_GLOB_H],
[
  gl_GLOB_H_REQUIRE_DEFAULTS
  GLOB_H='glob.h'
  AM_CONDITIONAL([GL_GENERATE_GLOB_H], [test -n "$GLOB_H"])
])

# gl_GLOB_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_GLOB_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_GLOB_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_GLOB_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_GLOB_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GLOB])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_GLOB_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_GLOB_H_DEFAULTS])
])

AC_DEFUN([gl_GLOB_H_DEFAULTS],
[
  dnl Assume POSIX and GNU behavior unless another module says otherwise.
  HAVE_GLOB=1;               AC_SUBST([HAVE_GLOB])
  HAVE_GLOB_PATTERN_P=1;     AC_SUBST([HAVE_GLOB_PATTERN_P])
  REPLACE_GLOB=0;            AC_SUBST([REPLACE_GLOB])
  REPLACE_GLOB_PATTERN_P=0;  AC_SUBST([REPLACE_GLOB_PATTERN_P])
])

# gnulib-common.m4 serial 67
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_PREREQ([2.62])

# gl_COMMON
# is expanded unconditionally through gnulib-tool magic.
AC_DEFUN([gl_COMMON], [
  dnl Use AC_REQUIRE here, so that the code is expanded once only.
  AC_REQUIRE([gl_00GNULIB])
  AC_REQUIRE([gl_COMMON_BODY])
  AC_REQUIRE([gl_ZZGNULIB])
])
AC_DEFUN([gl_COMMON_BODY], [
  AH_VERBATIM([_GL_GNUC_PREREQ],
[/* True if the compiler says it groks GNU C version MAJOR.MINOR.  */
#if defined __GNUC__ && defined __GNUC_MINOR__
# define _GL_GNUC_PREREQ(major, minor) \
    ((major) < __GNUC__ + ((minor) <= __GNUC_MINOR__))
#else
# define _GL_GNUC_PREREQ(major, minor) 0
#endif
])
  AH_VERBATIM([_Noreturn],
[/* The _Noreturn keyword of C11.  */
#ifndef _Noreturn
# if (defined __cplusplus \
      && ((201103 <= __cplusplus && !(__GNUC__ == 4 && __GNUC_MINOR__ == 7)) \
          || (defined _MSC_VER && 1900 <= _MSC_VER)) \
      && 0)
    /* [[noreturn]] is not practically usable, because with it the syntax
         extern _Noreturn void func (...);
       would not be valid; such a declaration would only be valid with 'extern'
       and '_Noreturn' swapped, or without the 'extern' keyword.  However, some
       AIX system header files and several gnulib header files use precisely
       this syntax with 'extern'.  */
#  define _Noreturn [[noreturn]]
# elif ((!defined __cplusplus || defined __clang__) \
        && (201112 <= (defined __STDC_VERSION__ ? __STDC_VERSION__ : 0) \
            || (!defined __STRICT_ANSI__ \
                && (_GL_GNUC_PREREQ (4, 7) \
                    || (defined __apple_build_version__ \
                        ? 6000000 <= __apple_build_version__ \
                        : 3 < __clang_major__ + (5 <= __clang_minor__))))))
   /* _Noreturn works as-is.  */
# elif _GL_GNUC_PREREQ (2, 8) || defined __clang__ || 0x5110 <= __SUNPRO_C
#  define _Noreturn __attribute__ ((__noreturn__))
# elif 1200 <= (defined _MSC_VER ? _MSC_VER : 0)
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn
# endif
#endif
])
  AH_VERBATIM([isoc99_inline],
[/* Work around a bug in Apple GCC 4.0.1 build 5465: In C99 mode, it supports
   the ISO C 99 semantics of 'extern inline' (unlike the GNU C semantics of
   earlier versions), but does not display it by setting __GNUC_STDC_INLINE__.
   __APPLE__ && __MACH__ test for Mac OS X.
   __APPLE_CC__ tests for the Apple compiler and its version.
   __STDC_VERSION__ tests for the C99 mode.  */
#if defined __APPLE__ && defined __MACH__ && __APPLE_CC__ >= 5465 && !defined __cplusplus && __STDC_VERSION__ >= 199901L && !defined __GNUC_STDC_INLINE__
# define __GNUC_STDC_INLINE__ 1
#endif])
  AH_VERBATIM([attribute],
[/* Attributes.  */
#if (defined __has_attribute \
     && (!defined __clang_minor__ \
         || 3 < __clang_major__ + (5 <= __clang_minor__)))
# define _GL_HAS_ATTRIBUTE(attr) __has_attribute (__##attr##__)
#else
# define _GL_HAS_ATTRIBUTE(attr) _GL_ATTR_##attr
# define _GL_ATTR_alloc_size _GL_GNUC_PREREQ (4, 3)
# define _GL_ATTR_always_inline _GL_GNUC_PREREQ (3, 2)
# define _GL_ATTR_artificial _GL_GNUC_PREREQ (4, 3)
# define _GL_ATTR_cold _GL_GNUC_PREREQ (4, 3)
# define _GL_ATTR_const _GL_GNUC_PREREQ (2, 95)
# define _GL_ATTR_deprecated _GL_GNUC_PREREQ (3, 1)
# define _GL_ATTR_diagnose_if 0
# define _GL_ATTR_error _GL_GNUC_PREREQ (4, 3)
# define _GL_ATTR_externally_visible _GL_GNUC_PREREQ (4, 1)
# define _GL_ATTR_fallthrough _GL_GNUC_PREREQ (7, 0)
# define _GL_ATTR_format _GL_GNUC_PREREQ (2, 7)
# define _GL_ATTR_leaf _GL_GNUC_PREREQ (4, 6)
# define _GL_ATTR_malloc _GL_GNUC_PREREQ (3, 0)
# ifdef _ICC
#  define _GL_ATTR_may_alias 0
# else
#  define _GL_ATTR_may_alias _GL_GNUC_PREREQ (3, 3)
# endif
# define _GL_ATTR_noinline _GL_GNUC_PREREQ (3, 1)
# define _GL_ATTR_nonnull _GL_GNUC_PREREQ (3, 3)
# define _GL_ATTR_nonstring _GL_GNUC_PREREQ (8, 0)
# define _GL_ATTR_nothrow _GL_GNUC_PREREQ (3, 3)
# define _GL_ATTR_packed _GL_GNUC_PREREQ (2, 7)
# define _GL_ATTR_pure _GL_GNUC_PREREQ (2, 96)
# define _GL_ATTR_returns_nonnull _GL_GNUC_PREREQ (4, 9)
# define _GL_ATTR_sentinel _GL_GNUC_PREREQ (4, 0)
# define _GL_ATTR_unused _GL_GNUC_PREREQ (2, 7)
# define _GL_ATTR_warn_unused_result _GL_GNUC_PREREQ (3, 4)
#endif

#ifdef __has_c_attribute
# define _GL_HAS_C_ATTRIBUTE(attr) __has_c_attribute (__##attr##__)
#else
# define _GL_HAS_C_ATTRIBUTE(attr) 0
#endif

]dnl There is no _GL_ATTRIBUTE_ALIGNED; use stdalign's _Alignas instead.
[
/* _GL_ATTRIBUTE_ALLOC_SIZE ((N)) declares that the Nth argument of the function
   is the size of the returned memory block.
   _GL_ATTRIBUTE_ALLOC_SIZE ((M, N)) declares that the Mth argument multiplied
   by the Nth argument of the function is the size of the returned memory block.
 */
/* Applies to: function, pointer to function, function types.  */
#if _GL_HAS_ATTRIBUTE (alloc_size)
# define _GL_ATTRIBUTE_ALLOC_SIZE(args) __attribute__ ((__alloc_size__ args))
#else
# define _GL_ATTRIBUTE_ALLOC_SIZE(args)
#endif

/* _GL_ATTRIBUTE_ALWAYS_INLINE tells that the compiler should always inline the
   function and report an error if it cannot do so.  */
/* Applies to: function.  */
#if _GL_HAS_ATTRIBUTE (always_inline)
# define _GL_ATTRIBUTE_ALWAYS_INLINE __attribute__ ((__always_inline__))
#else
# define _GL_ATTRIBUTE_ALWAYS_INLINE
#endif

/* _GL_ATTRIBUTE_ARTIFICIAL declares that the function is not important to show
    in stack traces when debugging.  The compiler should omit the function from
    stack traces.  */
/* Applies to: function.  */
#if _GL_HAS_ATTRIBUTE (artificial)
# define _GL_ATTRIBUTE_ARTIFICIAL __attribute__ ((__artificial__))
#else
# define _GL_ATTRIBUTE_ARTIFICIAL
#endif

/* _GL_ATTRIBUTE_COLD declares that the function is rarely executed.  */
/* Applies to: functions.  */
/* Avoid __attribute__ ((cold)) on MinGW; see thread starting at
   <https://lists.gnu.org/r/emacs-devel/2019-04/msg01152.html>.
   Also, Oracle Studio 12.6 requires 'cold' not '__cold__'.  */
#if _GL_HAS_ATTRIBUTE (cold) && !defined __MINGW32__
# ifndef __SUNPRO_C
#  define _GL_ATTRIBUTE_COLD __attribute__ ((__cold__))
# else
#  define _GL_ATTRIBUTE_COLD __attribute__ ((cold))
# endif
#else
# define _GL_ATTRIBUTE_COLD
#endif

/* _GL_ATTRIBUTE_CONST declares that it is OK for a compiler to omit duplicate
   calls to the function with the same arguments.
   This attribute is safe for a function that neither depends on nor affects
   observable state, and always returns exactly once - e.g., does not loop
   forever, and does not call longjmp.
   (This attribute is stricter than _GL_ATTRIBUTE_PURE.)  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (const)
# define _GL_ATTRIBUTE_CONST __attribute__ ((__const__))
#else
# define _GL_ATTRIBUTE_CONST
#endif

/* _GL_ATTRIBUTE_DEALLOC (F, I) declares that the function returns pointers
   that can be freed by passing them as the Ith argument to the
   function F.
   _GL_ATTRIBUTE_DEALLOC_FREE declares that the function returns pointers that
   can be freed via 'free'; it can be used only after declaring 'free'.  */
/* Applies to: functions.  Cannot be used on inline functions.  */
#if _GL_GNUC_PREREQ (11, 0)
# define _GL_ATTRIBUTE_DEALLOC(f, i) __attribute__ ((__malloc__ (f, i)))
#else
# define _GL_ATTRIBUTE_DEALLOC(f, i)
#endif
#define _GL_ATTRIBUTE_DEALLOC_FREE _GL_ATTRIBUTE_DEALLOC (free, 1)

/* _GL_ATTRIBUTE_DEPRECATED: Declares that an entity is deprecated.
   The compiler may warn if the entity is used.  */
/* Applies to:
     - function, variable,
     - struct, union, struct/union member,
     - enumeration, enumeration item,
     - typedef,
   in C++ also: namespace, class, template specialization.  */
#if _GL_HAS_C_ATTRIBUTE (deprecated)
# define _GL_ATTRIBUTE_DEPRECATED [[__deprecated__]]
#elif _GL_HAS_ATTRIBUTE (deprecated)
# define _GL_ATTRIBUTE_DEPRECATED __attribute__ ((__deprecated__))
#else
# define _GL_ATTRIBUTE_DEPRECATED
#endif

/* _GL_ATTRIBUTE_ERROR(msg) requests an error if a function is called and
   the function call is not optimized away.
   _GL_ATTRIBUTE_WARNING(msg) requests a warning if a function is called and
   the function call is not optimized away.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (error)
# define _GL_ATTRIBUTE_ERROR(msg) __attribute__ ((__error__ (msg)))
# define _GL_ATTRIBUTE_WARNING(msg) __attribute__ ((__warning__ (msg)))
#elif _GL_HAS_ATTRIBUTE (diagnose_if)
# define _GL_ATTRIBUTE_ERROR(msg) __attribute__ ((__diagnose_if__ (1, msg, "error")))
# define _GL_ATTRIBUTE_WARNING(msg) __attribute__ ((__diagnose_if__ (1, msg, "warning")))
#else
# define _GL_ATTRIBUTE_ERROR(msg)
# define _GL_ATTRIBUTE_WARNING(msg)
#endif

/* _GL_ATTRIBUTE_EXTERNALLY_VISIBLE declares that the entity should remain
   visible to debuggers etc., even with '-fwhole-program'.  */
/* Applies to: functions, variables.  */
#if _GL_HAS_ATTRIBUTE (externally_visible)
# define _GL_ATTRIBUTE_EXTERNALLY_VISIBLE __attribute__ ((externally_visible))
#else
# define _GL_ATTRIBUTE_EXTERNALLY_VISIBLE
#endif

/* _GL_ATTRIBUTE_FALLTHROUGH declares that it is not a programming mistake if
   the control flow falls through to the immediately following 'case' or
   'default' label.  The compiler should not warn in this case.  */
/* Applies to: Empty statement (;), inside a 'switch' statement.  */
/* Always expands to something.  */
#if _GL_HAS_C_ATTRIBUTE (fallthrough)
# define _GL_ATTRIBUTE_FALLTHROUGH [[__fallthrough__]]
#elif _GL_HAS_ATTRIBUTE (fallthrough)
# define _GL_ATTRIBUTE_FALLTHROUGH __attribute__ ((__fallthrough__))
#else
# define _GL_ATTRIBUTE_FALLTHROUGH ((void) 0)
#endif

/* _GL_ATTRIBUTE_FORMAT ((ARCHETYPE, STRING-INDEX, FIRST-TO-CHECK))
   declares that the STRING-INDEXth function argument is a format string of
   style ARCHETYPE, which is one of:
     printf, gnu_printf
     scanf, gnu_scanf,
     strftime, gnu_strftime,
     strfmon,
   or the same thing prefixed and suffixed with '__'.
   If FIRST-TO-CHECK is not 0, arguments starting at FIRST-TO_CHECK
   are suitable for the format string.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (format)
# define _GL_ATTRIBUTE_FORMAT(spec) __attribute__ ((__format__ spec))
#else
# define _GL_ATTRIBUTE_FORMAT(spec)
#endif

/* _GL_ATTRIBUTE_LEAF declares that if the function is called from some other
   compilation unit, it executes code from that unit only by return or by
   exception handling.  This declaration lets the compiler optimize that unit
   more aggressively.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (leaf)
# define _GL_ATTRIBUTE_LEAF __attribute__ ((__leaf__))
#else
# define _GL_ATTRIBUTE_LEAF
#endif

/* _GL_ATTRIBUTE_MALLOC declares that the function returns a pointer to freshly
   allocated memory.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (malloc)
# define _GL_ATTRIBUTE_MALLOC __attribute__ ((__malloc__))
#else
# define _GL_ATTRIBUTE_MALLOC
#endif

/* _GL_ATTRIBUTE_MAY_ALIAS declares that pointers to the type may point to the
   same storage as pointers to other types.  Thus this declaration disables
   strict aliasing optimization.  */
/* Applies to: types.  */
/* Oracle Studio 12.6 mishandles may_alias despite __has_attribute OK.  */
#if _GL_HAS_ATTRIBUTE (may_alias) && !defined __SUNPRO_C
# define _GL_ATTRIBUTE_MAY_ALIAS __attribute__ ((__may_alias__))
#else
# define _GL_ATTRIBUTE_MAY_ALIAS
#endif

/* _GL_ATTRIBUTE_MAYBE_UNUSED declares that it is not a programming mistake if
   the entity is not used.  The compiler should not warn if the entity is not
   used.  */
/* Applies to:
     - function, variable,
     - struct, union, struct/union member,
     - enumeration, enumeration item,
     - typedef,
   in C++ also: class.  */
/* In C++ and C2x, this is spelled [[__maybe_unused__]].
   GCC's syntax is __attribute__ ((__unused__)).
   clang supports both syntaxes.  */
#if _GL_HAS_C_ATTRIBUTE (maybe_unused)
# define _GL_ATTRIBUTE_MAYBE_UNUSED [[__maybe_unused__]]
#else
# define _GL_ATTRIBUTE_MAYBE_UNUSED _GL_ATTRIBUTE_UNUSED
#endif
/* Alternative spelling of this macro, for convenience.  */
#define _GL_UNUSED _GL_ATTRIBUTE_MAYBE_UNUSED
/* Earlier spellings of this macro.  */
#define _UNUSED_PARAMETER_ _GL_ATTRIBUTE_MAYBE_UNUSED

/* _GL_ATTRIBUTE_NODISCARD declares that the caller of the function should not
   discard the return value.  The compiler may warn if the caller does not use
   the return value, unless the caller uses something like ignore_value.  */
/* Applies to: function, enumeration, class.  */
#if _GL_HAS_C_ATTRIBUTE (nodiscard)
# define _GL_ATTRIBUTE_NODISCARD [[__nodiscard__]]
#elif _GL_HAS_ATTRIBUTE (warn_unused_result)
# define _GL_ATTRIBUTE_NODISCARD __attribute__ ((__warn_unused_result__))
#else
# define _GL_ATTRIBUTE_NODISCARD
#endif

/* _GL_ATTRIBUTE_NOINLINE tells that the compiler should not inline the
   function.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (noinline)
# define _GL_ATTRIBUTE_NOINLINE __attribute__ ((__noinline__))
#else
# define _GL_ATTRIBUTE_NOINLINE
#endif

/* _GL_ATTRIBUTE_NONNULL ((N1, N2,...)) declares that the arguments N1, N2,...
   must not be NULL.
   _GL_ATTRIBUTE_NONNULL () declares that all pointer arguments must not be
   null.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (nonnull)
# define _GL_ATTRIBUTE_NONNULL(args) __attribute__ ((__nonnull__ args))
#else
# define _GL_ATTRIBUTE_NONNULL(args)
#endif

/* _GL_ATTRIBUTE_NONSTRING declares that the contents of a character array is
   not meant to be NUL-terminated.  */
/* Applies to: struct/union members and variables that are arrays of element
   type '[[un]signed] char'.  */
#if _GL_HAS_ATTRIBUTE (nonstring)
# define _GL_ATTRIBUTE_NONSTRING __attribute__ ((__nonstring__))
#else
# define _GL_ATTRIBUTE_NONSTRING
#endif

/* There is no _GL_ATTRIBUTE_NORETURN; use _Noreturn instead.  */

/* _GL_ATTRIBUTE_NOTHROW declares that the function does not throw exceptions.
 */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (nothrow) && !defined __cplusplus
# define _GL_ATTRIBUTE_NOTHROW __attribute__ ((__nothrow__))
#else
# define _GL_ATTRIBUTE_NOTHROW
#endif

/* _GL_ATTRIBUTE_PACKED declares:
   For struct members: The member has the smallest possible alignment.
   For struct, union, class: All members have the smallest possible alignment,
   minimizing the memory required.  */
/* Applies to: struct members, struct, union,
   in C++ also: class.  */
#if _GL_HAS_ATTRIBUTE (packed)
# define _GL_ATTRIBUTE_PACKED __attribute__ ((__packed__))
#else
# define _GL_ATTRIBUTE_PACKED
#endif

/* _GL_ATTRIBUTE_PURE declares that It is OK for a compiler to omit duplicate
   calls to the function with the same arguments if observable state is not
   changed between calls.
   This attribute is safe for a function that does not affect
   observable state, and always returns exactly once.
   (This attribute is looser than _GL_ATTRIBUTE_CONST.)  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (pure)
# define _GL_ATTRIBUTE_PURE __attribute__ ((__pure__))
#else
# define _GL_ATTRIBUTE_PURE
#endif

/* _GL_ATTRIBUTE_RETURNS_NONNULL declares that the function's return value is
   a non-NULL pointer.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (returns_nonnull)
# define _GL_ATTRIBUTE_RETURNS_NONNULL __attribute__ ((__returns_nonnull__))
#else
# define _GL_ATTRIBUTE_RETURNS_NONNULL
#endif

/* _GL_ATTRIBUTE_SENTINEL(pos) declares that the variadic function expects a
   trailing NULL argument.
   _GL_ATTRIBUTE_SENTINEL () - The last argument is NULL (requires C99).
   _GL_ATTRIBUTE_SENTINEL ((N)) - The (N+1)st argument from the end is NULL.  */
/* Applies to: functions.  */
#if _GL_HAS_ATTRIBUTE (sentinel)
# define _GL_ATTRIBUTE_SENTINEL(pos) __attribute__ ((__sentinel__ pos))
#else
# define _GL_ATTRIBUTE_SENTINEL(pos)
#endif

/* A helper macro.  Don't use it directly.  */
#if _GL_HAS_ATTRIBUTE (unused)
# define _GL_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
#else
# define _GL_ATTRIBUTE_UNUSED
#endif

]dnl There is no _GL_ATTRIBUTE_VISIBILITY; see m4/visibility.m4 instead.
[
/* _GL_UNUSED_LABEL; declares that it is not a programming mistake if the
   immediately preceding label is not used.  The compiler should not warn
   if the label is not used.  */
/* Applies to: label (both in C and C++).  */
/* Note that g++ < 4.5 does not support the '__attribute__ ((__unused__)) ;'
   syntax.  But clang does.  */
#if !(defined __cplusplus && !_GL_GNUC_PREREQ (4, 5)) || defined __clang__
# define _GL_UNUSED_LABEL _GL_ATTRIBUTE_UNUSED
#else
# define _GL_UNUSED_LABEL
#endif
])
  AH_VERBATIM([async_safe],
[/* The _GL_ASYNC_SAFE marker should be attached to functions that are
   signal handlers (for signals other than SIGABRT, SIGPIPE) or can be
   invoked from such signal handlers.  Such functions have some restrictions:
     * All functions that it calls should be marked _GL_ASYNC_SAFE as well,
       or should be listed as async-signal-safe in POSIX
       <https://pubs.opengroup.org/onlinepubs/9699919799/functions/V2_chap02.html#tag_15_04>
       section 2.4.3.  Note that malloc(), sprintf(), and fwrite(), in
       particular, are NOT async-signal-safe.
     * All memory locations (variables and struct fields) that these functions
       access must be marked 'volatile'.  This holds for both read and write
       accesses.  Otherwise the compiler might optimize away stores to and
       reads from such locations that occur in the program, depending on its
       data flow analysis.  For example, when the program contains a loop
       that is intended to inspect a variable set from within a signal handler
           while (!signal_occurred)
             ;
       the compiler is allowed to transform this into an endless loop if the
       variable 'signal_occurred' is not declared 'volatile'.
   Additionally, recall that:
     * A signal handler should not modify errno (except if it is a handler
       for a fatal signal and ends by raising the same signal again, thus
       provoking the termination of the process).  If it invokes a function
       that may clobber errno, it needs to save and restore the value of
       errno.  */
#define _GL_ASYNC_SAFE
])
  AH_VERBATIM([micro_optimizations],
[/* _GL_CMP (n1, n2) performs a three-valued comparison on n1 vs. n2, where
   n1 and n2 are expressions without side effects, that evaluate to real
   numbers (excluding NaN).
   It returns
     1  if n1 > n2
     0  if n1 == n2
     -1 if n1 < n2
   The naïve code   (n1 > n2 ? 1 : n1 < n2 ? -1 : 0)  produces a conditional
   jump with nearly all GCC versions up to GCC 10.
   This variant     (n1 < n2 ? -1 : n1 > n2)  produces a conditional with many
   GCC versions up to GCC 9.
   The better code  (n1 > n2) - (n1 < n2)  from Hacker's Delight § 2-9
   avoids conditional jumps in all GCC versions >= 3.4.  */
#define _GL_CMP(n1, n2) (((n1) > (n2)) - ((n1) < (n2)))
])
  dnl Hint which direction to take regarding cross-compilation guesses:
  dnl When a user installs a program on a platform they are not intimately
  dnl familiar with, --enable-cross-guesses=conservative is the appropriate
  dnl choice.  It implements the "If we don't know, assume the worst" principle.
  dnl However, when an operating system developer (on a platform which is not
  dnl yet known to gnulib) builds packages for their platform, they want to
  dnl expose, not hide, possible platform bugs; in this case,
  dnl --enable-cross-guesses=risky is the appropriate choice.
  dnl Sets the variables
  dnl gl_cross_guess_normal    (to be used when 'yes' is good and 'no' is bad),
  dnl gl_cross_guess_inverted  (to be used when 'no' is good and 'yes' is bad).
  AC_ARG_ENABLE([cross-guesses],
    [AS_HELP_STRING([--enable-cross-guesses={conservative|risky}],
       [specify policy for cross-compilation guesses])],
    [if test "x$enableval" != xconservative && test "x$enableval" != xrisky; then
       AC_MSG_WARN([invalid argument supplied to --enable-cross-guesses])
       enableval=conservative
     fi
     gl_cross_guesses="$enableval"],
    [gl_cross_guesses=conservative])
  if test $gl_cross_guesses = risky; then
    gl_cross_guess_normal="guessing yes"
    gl_cross_guess_inverted="guessing no"
  else
    gl_cross_guess_normal="guessing no"
    gl_cross_guess_inverted="guessing yes"
  fi
  dnl Preparation for running test programs:
  dnl Tell glibc to write diagnostics from -D_FORTIFY_SOURCE=2 to stderr, not
  dnl to /dev/tty, so they can be redirected to log files.  Such diagnostics
  dnl arise e.g., in the macros gl_PRINTF_DIRECTIVE_N, gl_SNPRINTF_DIRECTIVE_N.
  LIBC_FATAL_STDERR_=1
  export LIBC_FATAL_STDERR_
])

# gl_MODULE_INDICATOR_INIT_VARIABLE([variablename])
# gl_MODULE_INDICATOR_INIT_VARIABLE([variablename], [initialvalue])
# initializes the shell variable that indicates the presence of the given module
# as a C preprocessor expression.
AC_DEFUN([gl_MODULE_INDICATOR_INIT_VARIABLE],
[
  GL_MODULE_INDICATOR_PREFIX[]_[$1]=m4_if([$2], , [0], [$2])
  AC_SUBST(GL_MODULE_INDICATOR_PREFIX[]_[$1])
])

# gl_MODULE_INDICATOR_CONDITION
# expands to a C preprocessor expression that evaluates to 1 or 0, depending
# whether a gnulib module that has been requested shall be considered present
# or not.
m4_define([gl_MODULE_INDICATOR_CONDITION], [1])

# gl_MODULE_INDICATOR_SET_VARIABLE([modulename])
# sets the shell variable that indicates the presence of the given module to
# a C preprocessor expression that will evaluate to 1.
AC_DEFUN([gl_MODULE_INDICATOR_SET_VARIABLE],
[
  gl_MODULE_INDICATOR_SET_VARIABLE_AUX(
    [GL_MODULE_INDICATOR_PREFIX[]_GNULIB_[]m4_translit([[$1]],
                                                       [abcdefghijklmnopqrstuvwxyz./-],
                                                       [ABCDEFGHIJKLMNOPQRSTUVWXYZ___])],
    [gl_MODULE_INDICATOR_CONDITION])
])

# gl_MODULE_INDICATOR_SET_VARIABLE_AUX([variable])
# modifies the shell variable to include the gl_MODULE_INDICATOR_CONDITION.
# The shell variable's value is a C preprocessor expression that evaluates
# to 0 or 1.
AC_DEFUN([gl_MODULE_INDICATOR_SET_VARIABLE_AUX],
[
  m4_if(m4_defn([gl_MODULE_INDICATOR_CONDITION]), [1],
    [
     dnl Simplify the expression VALUE || 1 to 1.
     $1=1
    ],
    [gl_MODULE_INDICATOR_SET_VARIABLE_AUX_OR([$1],
                                             [gl_MODULE_INDICATOR_CONDITION])])
])

# gl_MODULE_INDICATOR_SET_VARIABLE_AUX_OR([variable], [condition])
# modifies the shell variable to include the given condition.  The shell
# variable's value is a C preprocessor expression that evaluates to 0 or 1.
AC_DEFUN([gl_MODULE_INDICATOR_SET_VARIABLE_AUX_OR],
[
  dnl Simplify the expression 1 || CONDITION to 1.
  if test "$[]$1" != 1; then
    dnl Simplify the expression 0 || CONDITION to CONDITION.
    if test "$[]$1" = 0; then
      $1=$2
    else
      $1="($[]$1 || $2)"
    fi
  fi
])

# gl_MODULE_INDICATOR([modulename])
# defines a C macro indicating the presence of the given module
# in a location where it can be used.
#                                             |  Value  |   Value   |
#                                             | in lib/ | in tests/ |
# --------------------------------------------+---------+-----------+
# Module present among main modules:          |    1    |     1     |
# --------------------------------------------+---------+-----------+
# Module present among tests-related modules: |    0    |     1     |
# --------------------------------------------+---------+-----------+
# Module not present at all:                  |    0    |     0     |
# --------------------------------------------+---------+-----------+
AC_DEFUN([gl_MODULE_INDICATOR],
[
  AC_DEFINE_UNQUOTED([GNULIB_]m4_translit([[$1]],
      [abcdefghijklmnopqrstuvwxyz./-],
      [ABCDEFGHIJKLMNOPQRSTUVWXYZ___]),
    [gl_MODULE_INDICATOR_CONDITION],
    [Define to a C preprocessor expression that evaluates to 1 or 0,
     depending whether the gnulib module $1 shall be considered present.])
])

# gl_MODULE_INDICATOR_FOR_TESTS([modulename])
# defines a C macro indicating the presence of the given module
# in lib or tests. This is useful to determine whether the module
# should be tested.
#                                             |  Value  |   Value   |
#                                             | in lib/ | in tests/ |
# --------------------------------------------+---------+-----------+
# Module present among main modules:          |    1    |     1     |
# --------------------------------------------+---------+-----------+
# Module present among tests-related modules: |    1    |     1     |
# --------------------------------------------+---------+-----------+
# Module not present at all:                  |    0    |     0     |
# --------------------------------------------+---------+-----------+
AC_DEFUN([gl_MODULE_INDICATOR_FOR_TESTS],
[
  AC_DEFINE([GNULIB_TEST_]m4_translit([[$1]],
      [abcdefghijklmnopqrstuvwxyz./-],
      [ABCDEFGHIJKLMNOPQRSTUVWXYZ___]), [1],
    [Define to 1 when the gnulib module $1 should be tested.])
])

# gl_ASSERT_NO_GNULIB_POSIXCHECK
# asserts that there will never be a need to #define GNULIB_POSIXCHECK.
# and thereby enables an optimization of configure and config.h.
# Used by Emacs.
AC_DEFUN([gl_ASSERT_NO_GNULIB_POSIXCHECK],
[
  dnl Override gl_WARN_ON_USE_PREPARE.
  dnl But hide this definition from 'aclocal'.
  AC_DEFUN([gl_W][ARN_ON_USE_PREPARE], [])
])

# gl_ASSERT_NO_GNULIB_TESTS
# asserts that there will be no gnulib tests in the scope of the configure.ac
# and thereby enables an optimization of config.h.
# Used by Emacs.
AC_DEFUN([gl_ASSERT_NO_GNULIB_TESTS],
[
  dnl Override gl_MODULE_INDICATOR_FOR_TESTS.
  AC_DEFUN([gl_MODULE_INDICATOR_FOR_TESTS], [])
])

# Test whether <features.h> exists.
# Set HAVE_FEATURES_H.
AC_DEFUN([gl_FEATURES_H],
[
  AC_CHECK_HEADERS_ONCE([features.h])
  if test $ac_cv_header_features_h = yes; then
    HAVE_FEATURES_H=1
  else
    HAVE_FEATURES_H=0
  fi
  AC_SUBST([HAVE_FEATURES_H])
])

# gl_PROG_CC_C99
# Modifies the value of the shell variable CC in an attempt to make $CC
# understand ISO C99 source code.
AC_DEFUN([gl_PROG_CC_C99],
[
  dnl Just use AC_PROG_CC_C99.
  dnl When AC_PROG_CC_C99 and AC_PROG_CC_STDC are used together, the substituted
  dnl value of CC will contain the C99 enabling options twice. But this is only
  dnl a cosmetic problem.
  dnl With Autoconf >= 2.70, use AC_PROG_CC since it implies AC_PROG_CC_C99;
  dnl this avoids a "warning: The macro `AC_PROG_CC_C99' is obsolete."
  m4_version_prereq([2.70],
    [AC_REQUIRE([AC_PROG_CC])],
    [AC_REQUIRE([AC_PROG_CC_C99])])
])

# gl_PROG_AR_RANLIB
# Determines the values for AR, ARFLAGS, RANLIB that fit with the compiler.
# The user can set the variables AR, ARFLAGS, RANLIB if he wants to override
# the values.
AC_DEFUN([gl_PROG_AR_RANLIB],
[
  dnl Minix 3 comes with two toolchains: The Amsterdam Compiler Kit compiler
  dnl as "cc", and GCC as "gcc". They have different object file formats and
  dnl library formats. In particular, the GNU binutils programs ar and ranlib
  dnl produce libraries that work only with gcc, not with cc.
  AC_REQUIRE([AC_PROG_CC])
  dnl The '][' hides this use from 'aclocal'.
  AC_BEFORE([$0], [A][M_PROG_AR])
  AC_CACHE_CHECK([for Minix Amsterdam compiler], [gl_cv_c_amsterdam_compiler],
    [
      AC_EGREP_CPP([Amsterdam],
        [
#ifdef __ACK__
Amsterdam
#endif
        ],
        [gl_cv_c_amsterdam_compiler=yes],
        [gl_cv_c_amsterdam_compiler=no])
    ])

  dnl Don't compete with AM_PROG_AR's decision about AR/ARFLAGS if we are not
  dnl building with __ACK__.
  if test $gl_cv_c_amsterdam_compiler = yes; then
    if test -z "$AR"; then
      AR='cc -c.a'
    fi
    if test -z "$ARFLAGS"; then
      ARFLAGS='-o'
    fi
  else
    dnl AM_PROG_AR was added in automake v1.11.2.  AM_PROG_AR does not AC_SUBST
    dnl ARFLAGS variable (it is filed into Makefile.in directly by automake
    dnl script on-demand, if not specified by ./configure of course).
    dnl Don't AC_REQUIRE the AM_PROG_AR otherwise the code for __ACK__ above
    dnl will be ignored.  Also, pay attention to call AM_PROG_AR in else block
    dnl because AM_PROG_AR is written so it could re-set AR variable even for
    dnl __ACK__.  It may seem like its easier to avoid calling the macro here,
    dnl but we need to AC_SUBST both AR/ARFLAGS (thus those must have some good
    dnl default value and automake should usually know them).
    dnl
    dnl The '][' hides this use from 'aclocal'.
    m4_ifdef([A][M_PROG_AR], [A][M_PROG_AR], [:])
  fi

  dnl In case the code above has not helped with setting AR/ARFLAGS, use
  dnl Automake-documented default values for AR and ARFLAGS, but prefer
  dnl ${host}-ar over ar (useful for cross-compiling).
  AC_CHECK_TOOL([AR], [ar], [ar])
  if test -z "$ARFLAGS"; then
    ARFLAGS='cr'
  fi

  AC_SUBST([AR])
  AC_SUBST([ARFLAGS])
  if test -z "$RANLIB"; then
    if test $gl_cv_c_amsterdam_compiler = yes; then
      RANLIB=':'
    else
      dnl Use the ranlib program if it is available.
      AC_PROG_RANLIB
    fi
  fi
  AC_SUBST([RANLIB])
])

# AC_C_RESTRICT
# This definition is copied from post-2.70 Autoconf and overrides the
# AC_C_RESTRICT macro from autoconf 2.60..2.70.
m4_version_prereq([2.70.1], [], [
AC_DEFUN([AC_C_RESTRICT],
[AC_CACHE_CHECK([for C/C++ restrict keyword], [ac_cv_c_restrict],
  [ac_cv_c_restrict=no
   # Put '__restrict__' first, to avoid problems with glibc and non-GCC; see:
   # https://lists.gnu.org/archive/html/bug-autoconf/2016-02/msg00006.html
   # Put 'restrict' last, because C++ lacks it.
   for ac_kw in __restrict__ __restrict _Restrict restrict; do
     AC_COMPILE_IFELSE(
      [AC_LANG_PROGRAM(
         [[typedef int *int_ptr;
           int foo (int_ptr $ac_kw ip) { return ip[0]; }
           int bar (int [$ac_kw]); /* Catch GCC bug 14050.  */
           int bar (int ip[$ac_kw]) { return ip[0]; }
         ]],
         [[int s[1];
           int *$ac_kw t = s;
           t[0] = 0;
           return foo (t) + bar (t);
         ]])],
      [ac_cv_c_restrict=$ac_kw])
     test "$ac_cv_c_restrict" != no && break
   done
  ])
 AH_VERBATIM([restrict],
[/* Define to the equivalent of the C99 'restrict' keyword, or to
   nothing if this is not supported.  Do not define if restrict is
   supported only directly.  */
#undef restrict
/* Work around a bug in older versions of Sun C++, which did not
   #define __restrict__ or support _Restrict or __restrict__
   even though the corresponding Sun C compiler ended up with
   "#define restrict _Restrict" or "#define restrict __restrict__"
   in the previous line.  This workaround can be removed once
   we assume Oracle Developer Studio 12.5 (2016) or later.  */
#if defined __SUNPRO_CC && !defined __RESTRICT && !defined __restrict__
# define _Restrict
# define __restrict__
#endif])
 case $ac_cv_c_restrict in
   restrict) ;;
   no) AC_DEFINE([restrict], []) ;;
   *)  AC_DEFINE_UNQUOTED([restrict], [$ac_cv_c_restrict]) ;;
 esac
])# AC_C_RESTRICT
])

# gl_BIGENDIAN
# is like AC_C_BIGENDIAN, except that it can be AC_REQUIREd.
# Note that AC_REQUIRE([AC_C_BIGENDIAN]) does not work reliably because some
# macros invoke AC_C_BIGENDIAN with arguments.
AC_DEFUN([gl_BIGENDIAN],
[
  AC_C_BIGENDIAN
])

# A temporary file descriptor.
# Must be less than 10, because dash 0.5.8 does not support redirections
# with multi-digit file descriptors.
m4_define([GL_TMP_FD], 9)

# gl_SILENT(command)
# executes command, but without the normal configure output.
# This is useful when you want to invoke AC_CACHE_CHECK (or AC_CHECK_FUNC etc.)
# inside another AC_CACHE_CHECK.
AC_DEFUN([gl_SILENT],
[
  exec GL_TMP_FD>&AS_MESSAGE_FD AS_MESSAGE_FD>/dev/null
  $1
  exec AS_MESSAGE_FD>&GL_TMP_FD GL_TMP_FD>&-
])

# gl_CACHE_VAL_SILENT(cache-id, command-to-set-it)
# is like AC_CACHE_VAL(cache-id, command-to-set-it), except that it does not
# output a spurious "(cached)" mark in the midst of other configure output.
# This macro should be used instead of AC_CACHE_VAL when it is not surrounded
# by an AC_MSG_CHECKING/AC_MSG_RESULT pair.
AC_DEFUN([gl_CACHE_VAL_SILENT],
[
  gl_SILENT([
    AC_CACHE_VAL([$1], [$2])
  ])
])

# gl_CC_ALLOW_WARNINGS
# sets and substitutes a variable GL_CFLAG_ALLOW_WARNINGS, to a $(CC) option
# that reverts a preceding '-Werror' option, if available.
# This is expected to be '-Wno-error' on gcc, clang (except clang/MSVC), xlclang
# and empty otherwise.
AC_DEFUN([gl_CC_ALLOW_WARNINGS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_CACHE_CHECK([for C compiler option to allow warnings],
    [gl_cv_cc_wallow],
    [rm -f conftest*
     echo 'int dummy;' > conftest.c
     AC_TRY_COMMAND([${CC-cc} $CFLAGS $CPPFLAGS -c conftest.c 2>conftest1.err]) >/dev/null
     AC_TRY_COMMAND([${CC-cc} $CFLAGS $CPPFLAGS -Wno-error -c conftest.c 2>conftest2.err]) >/dev/null
     dnl Test the number of error output lines, because AIX xlc accepts the
     dnl option '-Wno-error', just to produce a warning
     dnl "Option -Wno-error was incorrectly specified. The option will be ignored."
     dnl afterwards.
     if test $? = 0 && test `wc -l < conftest1.err` = `wc -l < conftest2.err`; then
       gl_cv_cc_wallow='-Wno-error'
     else
       gl_cv_cc_wallow=none
     fi
     rm -f conftest*
    ])
  case "$gl_cv_cc_wallow" in
    none) GL_CFLAG_ALLOW_WARNINGS='' ;;
    *)    GL_CFLAG_ALLOW_WARNINGS="$gl_cv_cc_wallow" ;;
  esac
  AC_SUBST([GL_CFLAG_ALLOW_WARNINGS])
])

# gl_CXX_ALLOW_WARNINGS
# sets and substitutes a variable GL_CXXFLAG_ALLOW_WARNINGS, to a $(CC) option
# that reverts a preceding '-Werror' option, if available.
AC_DEFUN([gl_CXX_ALLOW_WARNINGS],
[
  dnl Requires AC_PROG_CXX or gl_PROG_ANSI_CXX.
  if test -n "$CXX" && test "$CXX" != no; then
    AC_CACHE_CHECK([for C++ compiler option to allow warnings],
      [gl_cv_cxx_wallow],
      [rm -f conftest*
       echo 'int dummy;' > conftest.cc
       AC_TRY_COMMAND([${CXX-c++} $CXXFLAGS $CPPFLAGS -c conftest.cc 2>conftest1.err]) >/dev/null
       AC_TRY_COMMAND([${CXX-c++} $CXXFLAGS $CPPFLAGS -Wno-error -c conftest.cc 2>conftest2.err]) >/dev/null
       dnl Test the number of error output lines, because AIX xlC accepts the
       dnl option '-Wno-error', just to produce a warning
       dnl "Option -Wno-error was incorrectly specified. The option will be ignored."
       dnl afterwards.
       if test $? = 0 && test `wc -l < conftest1.err` = `wc -l < conftest2.err`; then
         gl_cv_cxx_wallow='-Wno-error'
       else
         gl_cv_cxx_wallow=none
       fi
       rm -f conftest*
      ])
    case "$gl_cv_cxx_wallow" in
      none) GL_CXXFLAG_ALLOW_WARNINGS='' ;;
      *)    GL_CXXFLAG_ALLOW_WARNINGS="$gl_cv_cxx_wallow" ;;
    esac
  else
    GL_CXXFLAG_ALLOW_WARNINGS=''
  fi
  AC_SUBST([GL_CXXFLAG_ALLOW_WARNINGS])
])

dnl Expands to some code for use in .c programs that, on native Windows, defines
dnl the Microsoft deprecated alias function names to the underscore-prefixed
dnl actual function names. With this macro, these function names are available
dnl without linking with '-loldnames' and without generating warnings.
dnl Usage: Use it after all system header files are included.
dnl          #include <...>
dnl          #include <...>
dnl          ]GL_MDA_DEFINES[
dnl          ...
AC_DEFUN([GL_MDA_DEFINES],[
AC_REQUIRE([_GL_MDA_DEFINES])
[$gl_mda_defines]
])
AC_DEFUN([_GL_MDA_DEFINES],
[gl_mda_defines='
#if defined _WIN32 && !defined __CYGWIN__
#define access    _access
#define chdir     _chdir
#define chmod     _chmod
#define close     _close
#define creat     _creat
#define dup       _dup
#define dup2      _dup2
#define ecvt      _ecvt
#define execl     _execl
#define execle    _execle
#define execlp    _execlp
#define execv     _execv
#define execve    _execve
#define execvp    _execvp
#define execvpe   _execvpe
#define fcloseall _fcloseall
#define fcvt      _fcvt
#define fdopen    _fdopen
#define fileno    _fileno
#define gcvt      _gcvt
#define getcwd    _getcwd
#define getpid    _getpid
#define getw      _getw
#define isatty    _isatty
#define j0        _j0
#define j1        _j1
#define jn        _jn
#define lfind     _lfind
#define lsearch   _lsearch
#define lseek     _lseek
#define memccpy   _memccpy
#define mkdir     _mkdir
#define mktemp    _mktemp
#define open      _open
#define putenv    _putenv
#define putw      _putw
#define read      _read
#define rmdir     _rmdir
#define strdup    _strdup
#define swab      _swab
#define tempnam   _tempnam
#define tzset     _tzset
#define umask     _umask
#define unlink    _unlink
#define utime     _utime
#define wcsdup    _wcsdup
#define write     _write
#define y0        _y0
#define y1        _y1
#define yn        _yn
#endif
'
])

# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2021 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  AC_REQUIRE([AM_PROG_CC_C_O])
  # Code from module absolute-header:
  # Code from module alloca:
  # Code from module alloca-opt:
  # Code from module attribute:
  # Code from module basename-lgpl:
  # Code from module btowc:
  # Code from module builtin-expect:
  # Code from module c99:
  # Code from module clock-time:
  # Code from module cloexec:
  # Code from module close:
  # Code from module closedir:
  # Code from module ctype:
  # Code from module d-type:
  # Code from module dirent:
  # Code from module dirfd:
  # Code from module dirname-lgpl:
  # Code from module double-slash-root:
  # Code from module dup2:
  # Code from module dynarray:
  # Code from module errno:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module fcntl:
  # Code from module fcntl-h:
  # Code from module fd-hook:
  # Code from module filename:
  # Code from module flexmember:
  # Code from module float:
  # Code from module fnmatch:
  # Code from module fnmatch-h:
  # Code from module fpieee:
  AC_REQUIRE([gl_FP_IEEE])
  # Code from module fpucw:
  # Code from module free-posix:
  # Code from module frexp-nolibm:
  # Code from module frexpl-nolibm:
  # Code from module fstat:
  # Code from module futimens:
  # Code from module getdelim:
  # Code from module getdtablesize:
  # Code from module getline:
  # Code from module getlogin_r:
  # Code from module getopt-gnu:
  # Code from module getopt-posix:
  # Code from module getrandom:
  # Code from module gettext-h:
  # Code from module gettime:
  # Code from module gettimeofday:
  # Code from module glob:
  # Code from module glob-h:
  # Code from module hard-locale:
  # Code from module idx:
  # Code from module include_next:
  # Code from module intprops:
  # Code from module inttypes-incomplete:
  # Code from module isblank:
  # Code from module isnand-nolibm:
  # Code from module isnanf-nolibm:
  # Code from module isnanl-nolibm:
  # Code from module iswblank:
  # Code from module langinfo:
  # Code from module largefile:
  AC_REQUIRE([AC_SYS_LARGEFILE])
  AC_REQUIRE([gl_YEAR2038_EARLY])
  # Code from module libc-config:
  # Code from module limits-h:
  # Code from module localcharset:
  # Code from module locale:
  # Code from module localeconv:
  # Code from module lock:
  # Code from module lstat:
  # Code from module malloc-posix:
  # Code from module malloca:
  # Code from module math:
  # Code from module mbrtowc:
  # Code from module mbsinit:
  # Code from module mbsrtowcs:
  # Code from module mbtowc:
  # Code from module memchr:
  # Code from module mempcpy:
  # Code from module minmax:
  # Code from module mkdir:
  # Code from module mkstemps:
  # Code from module msvc-inval:
  # Code from module msvc-nothrow:
  # Code from module multiarch:
  # Code from module nl_langinfo:
  # Code from module nocrash:
  # Code from module open:
  # Code from module opendir:
  # Code from module pathmax:
  # Code from module printf-frexp:
  # Code from module printf-frexpl:
  # Code from module printf-safe:
  # Code from module raise:
  # Code from module readdir:
  # Code from module realloc-posix:
  # Code from module regex:
  # Code from module scratch_buffer:
  # Code from module setlocale-null:
  # Code from module sigaction:
  # Code from module signal-h:
  # Code from module signbit:
  # Code from module sigprocmask:
  # Code from module size_max:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module snprintf:
  # Code from module snprintf-posix:
  # Code from module ssize_t:
  # Code from module stat:
  # Code from module stat-time:
  # Code from module std-gnu11:
  # Code from module stdalign:
  # Code from module stdarg:
  dnl Some compilers (e.g., AIX 5.3 cc) need to be in c99 mode
  dnl for the builtin va_copy to work.  gl_PROG_CC_C99 arranges for this.
  gl_PROG_CC_C99
  # Code from module stdbool:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  # Code from module stdlib:
  # Code from module strcase:
  # Code from module strcasestr-simple:
  # Code from module streq:
  # Code from module string:
  # Code from module strings:
  # Code from module strnlen:
  # Code from module strnlen1:
  # Code from module sys_random:
  # Code from module sys_stat:
  # Code from module sys_time:
  # Code from module sys_types:
  # Code from module sys_wait:
  # Code from module tempname:
  # Code from module threadlib:
  gl_THREADLIB_EARLY
  # Code from module time:
  # Code from module timespec:
  # Code from module unistd:
  # Code from module unitypes:
  # Code from module uniwidth/base:
  # Code from module uniwidth/width:
  # Code from module utime:
  # Code from module utime-h:
  # Code from module utimens:
  # Code from module vararrays:
  # Code from module vasnprintf:
  # Code from module verify:
  # Code from module vsnprintf:
  # Code from module vsnprintf-posix:
  # Code from module wchar:
  # Code from module wcrtomb:
  # Code from module wctype-h:
  # Code from module wcwidth:
  # Code from module windows-mutex:
  # Code from module windows-once:
  # Code from module windows-recmutex:
  # Code from module windows-rwlock:
  # Code from module wmemchr:
  # Code from module wmempcpy:
  # Code from module xalloc-oversized:
  # Code from module xsize:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [false])
  gl_cond_libtool=false
  gl_libdeps=
  gl_ltlibdeps=
  gl_m4_base='m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gl])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='lib'
  gl_FUNC_ALLOCA
  gl_FUNC_BTOWC
  if test $HAVE_BTOWC = 0 || test $REPLACE_BTOWC = 1; then
    AC_LIBOBJ([btowc])
    gl_PREREQ_BTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([btowc])
  gl___BUILTIN_EXPECT
  gl_CLOCK_TIME
  gl_MODULE_INDICATOR_FOR_TESTS([cloexec])
  gl_FUNC_CLOSE
  if test $REPLACE_CLOSE = 1; then
    AC_LIBOBJ([close])
  fi
  gl_UNISTD_MODULE_INDICATOR([close])
  gl_FUNC_CLOSEDIR
  if test $HAVE_CLOSEDIR = 0 || test $REPLACE_CLOSEDIR = 1; then
    AC_LIBOBJ([closedir])
  fi
  gl_DIRENT_MODULE_INDICATOR([closedir])
  gl_CTYPE_H
  gl_CTYPE_H_REQUIRE_DEFAULTS
  gl_CHECK_TYPE_STRUCT_DIRENT_D_TYPE
  gl_DIRENT_H
  gl_DIRENT_H_REQUIRE_DEFAULTS
  gl_FUNC_DIRFD
  if test $ac_cv_func_dirfd = no && test $gl_cv_func_dirfd_macro = no \
     || test $REPLACE_DIRFD = 1; then
    AC_LIBOBJ([dirfd])
    gl_PREREQ_DIRFD
  fi
  gl_DIRENT_MODULE_INDICATOR([dirfd])
  gl_DOUBLE_SLASH_ROOT
  gl_FUNC_DUP2
  if test $REPLACE_DUP2 = 1; then
    AC_LIBOBJ([dup2])
    gl_PREREQ_DUP2
  fi
  gl_UNISTD_MODULE_INDICATOR([dup2])
  AC_PROG_MKDIR_P
  gl_HEADER_ERRNO_H
  AC_REQUIRE([gl_EXTERN_INLINE])
  gl_FUNC_FCNTL
  if test $HAVE_FCNTL = 0 || test $REPLACE_FCNTL = 1; then
    AC_LIBOBJ([fcntl])
  fi
  gl_FCNTL_MODULE_INDICATOR([fcntl])
  gl_FCNTL_H
  gl_FCNTL_H_REQUIRE_DEFAULTS
  AC_C_FLEXIBLE_ARRAY_MEMBER
  gl_FLOAT_H
  if test $REPLACE_FLOAT_LDBL = 1; then
    AC_LIBOBJ([float])
  fi
  if test $REPLACE_ITOLD = 1; then
    AC_LIBOBJ([itold])
  fi
  gl_FUNC_FNMATCH_POSIX
  if test $HAVE_FNMATCH = 0 || test $REPLACE_FNMATCH = 1; then
    AC_LIBOBJ([fnmatch])
    gl_PREREQ_FNMATCH
  fi
  gl_FNMATCH_MODULE_INDICATOR([fnmatch])
  gl_FNMATCH_H
  gl_FNMATCH_H_REQUIRE_DEFAULTS
  gl_FUNC_FREE
  if test $REPLACE_FREE = 1; then
    AC_LIBOBJ([free])
    gl_PREREQ_FREE
  fi
  gl_STDLIB_MODULE_INDICATOR([free-posix])
  gl_FUNC_FREXP_NO_LIBM
  if test $gl_func_frexp_no_libm != yes; then
    AC_LIBOBJ([frexp])
  fi
  gl_MATH_MODULE_INDICATOR([frexp])
  gl_FUNC_FREXPL_NO_LIBM
  if test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; then
    AC_LIBOBJ([frexpl])
  fi
  gl_MATH_MODULE_INDICATOR([frexpl])
  gl_FUNC_FSTAT
  if test $REPLACE_FSTAT = 1; then
    AC_LIBOBJ([fstat])
    case "$host_os" in
      mingw*)
        AC_LIBOBJ([stat-w32])
        ;;
    esac
    gl_PREREQ_FSTAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([fstat])
  gl_FUNC_FUTIMENS
  if test $HAVE_FUTIMENS = 0 || test $REPLACE_FUTIMENS = 1; then
    AC_LIBOBJ([futimens])
  fi
  gl_SYS_STAT_MODULE_INDICATOR([futimens])
  gl_FUNC_GETDELIM
  if test $HAVE_GETDELIM = 0 || test $REPLACE_GETDELIM = 1; then
    AC_LIBOBJ([getdelim])
    gl_PREREQ_GETDELIM
  fi
  gl_STDIO_MODULE_INDICATOR([getdelim])
  gl_FUNC_GETDTABLESIZE
  if test $HAVE_GETDTABLESIZE = 0 || test $REPLACE_GETDTABLESIZE = 1; then
    AC_LIBOBJ([getdtablesize])
    gl_PREREQ_GETDTABLESIZE
  fi
  gl_UNISTD_MODULE_INDICATOR([getdtablesize])
  gl_FUNC_GETLINE
  if test $REPLACE_GETLINE = 1; then
    AC_LIBOBJ([getline])
    gl_PREREQ_GETLINE
  fi
  gl_STDIO_MODULE_INDICATOR([getline])
  gl_FUNC_GETLOGIN_R
  if test $HAVE_GETLOGIN_R = 0 || test $REPLACE_GETLOGIN_R = 1; then
    AC_LIBOBJ([getlogin_r])
    gl_PREREQ_GETLOGIN_R
  fi
  gl_UNISTD_MODULE_INDICATOR([getlogin_r])
  AC_REQUIRE([gl_LIB_GETLOGIN])
  gl_FUNC_GETOPT_GNU
  dnl Because of the way gl_FUNC_GETOPT_GNU is implemented (the gl_getopt_required
  dnl mechanism), there is no need to do any AC_LIBOBJ or AC_SUBST here; they are
  dnl done in the getopt-posix module.
  gl_FUNC_GETOPT_POSIX
  if test $REPLACE_GETOPT = 1; then
    AC_LIBOBJ([getopt])
    AC_LIBOBJ([getopt1])
    dnl Define the substituted variable GNULIB_UNISTD_H_GETOPT to 1.
    gl_UNISTD_H_REQUIRE_DEFAULTS
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNISTD_H_GETOPT], [1])
  fi
  gl_UNISTD_MODULE_INDICATOR([getopt-posix])
  AC_REQUIRE([AC_CANONICAL_HOST])
  gl_FUNC_GETRANDOM
  if test $HAVE_GETRANDOM = 0 || test $REPLACE_GETRANDOM = 1; then
    AC_LIBOBJ([getrandom])
  fi
  gl_SYS_RANDOM_MODULE_INDICATOR([getrandom])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  gl_GETTIME
  gl_FUNC_GETTIMEOFDAY
  if test $HAVE_GETTIMEOFDAY = 0 || test $REPLACE_GETTIMEOFDAY = 1; then
    AC_LIBOBJ([gettimeofday])
    gl_PREREQ_GETTIMEOFDAY
  fi
  gl_SYS_TIME_MODULE_INDICATOR([gettimeofday])
  gl_GLOB
  if test $HAVE_GLOB = 0 || test $REPLACE_GLOB = 1; then
    AC_LIBOBJ([glob])
    AC_LIBOBJ([globfree])
    gl_PREREQ_GLOB
  fi
  if test $HAVE_GLOB_PATTERN_P = 0 || test $REPLACE_GLOB_PATTERN_P = 1; then
    AC_LIBOBJ([glob_pattern_p])
  fi
  gl_GLOB_MODULE_INDICATOR([glob])
  gl_GLOB_H
  gl_GLOB_H_REQUIRE_DEFAULTS
  AC_REQUIRE([gl_FUNC_SETLOCALE_NULL])
  LIB_HARD_LOCALE="$LIB_SETLOCALE_NULL"
  AC_SUBST([LIB_HARD_LOCALE])
  gl_INTTYPES_INCOMPLETE
  gl_INTTYPES_H_REQUIRE_DEFAULTS
  gl_FUNC_ISBLANK
  if test $HAVE_ISBLANK = 0; then
    AC_LIBOBJ([isblank])
  fi
  gl_MODULE_INDICATOR([isblank])
  gl_CTYPE_MODULE_INDICATOR([isblank])
  gl_FUNC_ISNAND_NO_LIBM
  if test $gl_func_isnand_no_libm != yes; then
    AC_LIBOBJ([isnand])
    gl_PREREQ_ISNAND
  fi
  gl_FUNC_ISNANF_NO_LIBM
  if test $gl_func_isnanf_no_libm != yes; then
    AC_LIBOBJ([isnanf])
    gl_PREREQ_ISNANF
  fi
  gl_FUNC_ISNANL_NO_LIBM
  if test $gl_func_isnanl_no_libm != yes; then
    AC_LIBOBJ([isnanl])
    gl_PREREQ_ISNANL
  fi
  gl_FUNC_ISWBLANK
  if test $HAVE_ISWCNTRL = 0 || test $REPLACE_ISWCNTRL = 1; then
    :
  else
    if test $HAVE_ISWBLANK = 0 || test $REPLACE_ISWBLANK = 1; then
      AC_LIBOBJ([iswblank])
    fi
  fi
  gl_WCTYPE_MODULE_INDICATOR([iswblank])
  gl_LANGINFO_H
  gl_LANGINFO_H_REQUIRE_DEFAULTS
  AC_REQUIRE([gl_LARGEFILE])
  gl___INLINE
  gl_LIMITS_H
  gl_LOCALCHARSET
  dnl For backward compatibility. Some packages still use this.
  LOCALCHARSET_TESTS_ENVIRONMENT=
  AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
  gl_LOCALE_H
  gl_LOCALE_H_REQUIRE_DEFAULTS
  gl_FUNC_LOCALECONV
  if test $REPLACE_LOCALECONV = 1; then
    AC_LIBOBJ([localeconv])
    gl_PREREQ_LOCALECONV
  fi
  gl_LOCALE_MODULE_INDICATOR([localeconv])
  gl_LOCK
  gl_MODULE_INDICATOR([lock])
  gl_FUNC_LSTAT
  if test $REPLACE_LSTAT = 1; then
    AC_LIBOBJ([lstat])
    gl_PREREQ_LSTAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([lstat])
  AC_REQUIRE([gl_FUNC_MALLOC_POSIX])
  if test $REPLACE_MALLOC = 1; then
    AC_LIBOBJ([malloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([malloc-posix])
  gl_MALLOCA
  gl_MATH_H
  gl_MATH_H_REQUIRE_DEFAULTS
  gl_FUNC_MBRTOWC
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    AC_LIBOBJ([mbrtowc])
    if test $REPLACE_MBSTATE_T = 1; then
      AC_LIBOBJ([lc-charset-dispatch])
      AC_LIBOBJ([mbtowc-lock])
      gl_PREREQ_MBTOWC_LOCK
    fi
    gl_PREREQ_MBRTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([mbrtowc])
  gl_FUNC_MBSINIT
  if test $HAVE_MBSINIT = 0 || test $REPLACE_MBSINIT = 1; then
    AC_LIBOBJ([mbsinit])
    gl_PREREQ_MBSINIT
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsinit])
  gl_FUNC_MBSRTOWCS
  if test $HAVE_MBSRTOWCS = 0 || test $REPLACE_MBSRTOWCS = 1; then
    AC_LIBOBJ([mbsrtowcs])
    AC_LIBOBJ([mbsrtowcs-state])
    gl_PREREQ_MBSRTOWCS
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsrtowcs])
  gl_FUNC_MBTOWC
  if test $HAVE_MBTOWC = 0 || test $REPLACE_MBTOWC = 1; then
    AC_LIBOBJ([mbtowc])
    gl_PREREQ_MBTOWC
  fi
  gl_STDLIB_MODULE_INDICATOR([mbtowc])
  gl_FUNC_MEMCHR
  if test $REPLACE_MEMCHR = 1; then
    AC_LIBOBJ([memchr])
    gl_PREREQ_MEMCHR
  fi
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_FUNC_MEMPCPY
  if test $HAVE_MEMPCPY = 0; then
    AC_LIBOBJ([mempcpy])
    gl_PREREQ_MEMPCPY
  fi
  gl_STRING_MODULE_INDICATOR([mempcpy])
  gl_MINMAX
  gl_FUNC_MKDIR
  if test $REPLACE_MKDIR = 1; then
    AC_LIBOBJ([mkdir])
  fi
  gl_SYS_STAT_MODULE_INDICATOR([mkdir])
  gl_FUNC_MKSTEMPS
  if test $HAVE_MKSTEMPS = 0; then
    AC_LIBOBJ([mkstemps])
  fi
  gl_MODULE_INDICATOR([mkstemps])
  gl_STDLIB_MODULE_INDICATOR([mkstemps])
  AC_REQUIRE([gl_MSVC_INVAL])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-inval])
  fi
  AC_REQUIRE([gl_MSVC_NOTHROW])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-nothrow])
  fi
  gl_MODULE_INDICATOR([msvc-nothrow])
  gl_MULTIARCH
  gl_FUNC_NL_LANGINFO
  if test $HAVE_NL_LANGINFO = 0 || test $REPLACE_NL_LANGINFO = 1; then
    AC_LIBOBJ([nl_langinfo])
  fi
  if test $REPLACE_NL_LANGINFO = 1 && test $NL_LANGINFO_MTSAFE = 0; then
    AC_LIBOBJ([nl_langinfo-lock])
    gl_PREREQ_NL_LANGINFO_LOCK
  fi
  gl_LANGINFO_MODULE_INDICATOR([nl_langinfo])
  gl_FUNC_OPEN
  if test $REPLACE_OPEN = 1; then
    AC_LIBOBJ([open])
    gl_PREREQ_OPEN
  fi
  gl_FCNTL_MODULE_INDICATOR([open])
  gl_FUNC_OPENDIR
  if test $HAVE_OPENDIR = 0 || test $REPLACE_OPENDIR = 1; then
    AC_LIBOBJ([opendir])
  fi
  gl_DIRENT_MODULE_INDICATOR([opendir])
  gl_PATHMAX
  gl_FUNC_PRINTF_FREXP
  gl_FUNC_PRINTF_FREXPL
  m4_divert_text([INIT_PREPARE], [gl_printf_safe=yes])
  gl_FUNC_RAISE
  if test $HAVE_RAISE = 0 || test $REPLACE_RAISE = 1; then
    AC_LIBOBJ([raise])
    gl_PREREQ_RAISE
  fi
  gl_SIGNAL_MODULE_INDICATOR([raise])
  gl_FUNC_READDIR
  if test $HAVE_READDIR = 0; then
    AC_LIBOBJ([readdir])
  fi
  gl_DIRENT_MODULE_INDICATOR([readdir])
  gl_FUNC_REALLOC_POSIX
  if test $REPLACE_REALLOC = 1; then
    AC_LIBOBJ([realloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([realloc-posix])
  gl_REGEX
  if test $ac_use_included_regex = yes; then
    AC_LIBOBJ([regex])
    gl_PREREQ_REGEX
  fi
  AC_PROG_MKDIR_P
  gl_FUNC_SETLOCALE_NULL
  if test $SETLOCALE_NULL_ALL_MTSAFE = 0 || test $SETLOCALE_NULL_ONE_MTSAFE = 0; then
    AC_LIBOBJ([setlocale-lock])
    gl_PREREQ_SETLOCALE_LOCK
  fi
  gl_LOCALE_MODULE_INDICATOR([setlocale_null])
  gl_SIGACTION
  if test $HAVE_SIGACTION = 0; then
    AC_LIBOBJ([sigaction])
    gl_PREREQ_SIGACTION
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigaction])
  gl_SIGNAL_H
  gl_SIGNAL_H_REQUIRE_DEFAULTS
  gl_SIGNBIT
  if test $REPLACE_SIGNBIT = 1; then
    AC_LIBOBJ([signbitf])
    AC_LIBOBJ([signbitd])
    AC_LIBOBJ([signbitl])
  fi
  gl_MATH_MODULE_INDICATOR([signbit])
  gl_SIGNALBLOCKING
  if test $HAVE_POSIX_SIGNALBLOCKING = 0; then
    AC_LIBOBJ([sigprocmask])
    gl_PREREQ_SIGPROCMASK
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigprocmask])
  gl_SIZE_MAX
  gl_FUNC_SNPRINTF
  gl_STDIO_MODULE_INDICATOR([snprintf])
  gl_MODULE_INDICATOR([snprintf])
  gl_FUNC_SNPRINTF_POSIX
  gt_TYPE_SSIZE_T
  gl_FUNC_STAT
  if test $REPLACE_STAT = 1; then
    AC_LIBOBJ([stat])
    case "$host_os" in
      mingw*)
        AC_LIBOBJ([stat-w32])
        ;;
    esac
    gl_PREREQ_STAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([stat])
  gl_STAT_TIME
  gl_STAT_BIRTHTIME
  gl_STDALIGN_H
  gl_STDARG_H
  AM_STDBOOL_H
  gl_STDDEF_H
  gl_STDDEF_H_REQUIRE_DEFAULTS
  gl_STDINT_H
  gl_STDIO_H
  gl_STDIO_H_REQUIRE_DEFAULTS
  dnl No need to create extra modules for these functions. Everyone who uses
  dnl <stdio.h> likely needs them.
  gl_STDIO_MODULE_INDICATOR([fscanf])
  gl_MODULE_INDICATOR([fscanf])
  gl_STDIO_MODULE_INDICATOR([scanf])
  gl_MODULE_INDICATOR([scanf])
  gl_STDIO_MODULE_INDICATOR([fgetc])
  gl_STDIO_MODULE_INDICATOR([getc])
  gl_STDIO_MODULE_INDICATOR([getchar])
  gl_STDIO_MODULE_INDICATOR([fgets])
  gl_STDIO_MODULE_INDICATOR([fread])
  dnl No need to create extra modules for these functions. Everyone who uses
  dnl <stdio.h> likely needs them.
  gl_STDIO_MODULE_INDICATOR([fprintf])
  gl_STDIO_MODULE_INDICATOR([printf])
  gl_STDIO_MODULE_INDICATOR([vfprintf])
  gl_STDIO_MODULE_INDICATOR([vprintf])
  gl_STDIO_MODULE_INDICATOR([fputc])
  gl_STDIO_MODULE_INDICATOR([putc])
  gl_STDIO_MODULE_INDICATOR([putchar])
  gl_STDIO_MODULE_INDICATOR([fputs])
  gl_STDIO_MODULE_INDICATOR([puts])
  gl_STDIO_MODULE_INDICATOR([fwrite])
  gl_STDLIB_H
  gl_STDLIB_H_REQUIRE_DEFAULTS
  gl_STRCASE
  if test $HAVE_STRCASECMP = 0; then
    AC_LIBOBJ([strcasecmp])
    gl_PREREQ_STRCASECMP
  fi
  if test $HAVE_STRNCASECMP = 0; then
    AC_LIBOBJ([strncasecmp])
    gl_PREREQ_STRNCASECMP
  fi
  gl_FUNC_STRCASESTR_SIMPLE
  if test $HAVE_STRCASESTR = 0 || test $REPLACE_STRCASESTR = 1; then
    AC_LIBOBJ([strcasestr])
    gl_PREREQ_STRCASESTR
  fi
  gl_STRING_MODULE_INDICATOR([strcasestr])
  gl_STRING_H
  gl_STRING_H_REQUIRE_DEFAULTS
  gl_STRINGS_H
  gl_STRINGS_H_REQUIRE_DEFAULTS
  gl_FUNC_STRNLEN
  if test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1; then
    AC_LIBOBJ([strnlen])
    gl_PREREQ_STRNLEN
  fi
  gl_STRING_MODULE_INDICATOR([strnlen])
  gl_SYS_RANDOM_H
  gl_SYS_RANDOM_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_SYS_STAT_H
  gl_SYS_STAT_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_SYS_TIME_H
  gl_SYS_TIME_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_SYS_TYPES_H
  gl_SYS_TYPES_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_SYS_WAIT_H
  gl_SYS_WAIT_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_GEN_TEMPNAME
  gl_MODULE_INDICATOR([tempname])
  AC_REQUIRE([gl_THREADLIB])
  gl_TIME_H
  gl_TIME_H_REQUIRE_DEFAULTS
  gl_TIMESPEC
  gl_UNISTD_H
  gl_UNISTD_H_REQUIRE_DEFAULTS
  gl_LIBUNISTRING_LIBHEADER([0.9.11], [unitypes.h])
  AH_VERBATIM([unitypes_restrict], [
  /* This definition is a duplicate of the one in unitypes.h.
     It is here so that we can cope with an older version of unitypes.h
     that does not contain this definition and that is pre-installed among
     the public header files.  */
  # if defined __restrict \
       || 2 < __GNUC__ + (95 <= __GNUC_MINOR__) \
       || __clang_major__ >= 3
  #  define _UC_RESTRICT __restrict
  # elif 199901L <= __STDC_VERSION__ || defined restrict
  #  define _UC_RESTRICT restrict
  # else
  #  define _UC_RESTRICT
  # endif
  ])
  gl_LIBUNISTRING_LIBHEADER([0.9.11], [uniwidth.h])
  gl_LIBUNISTRING_MODULE([0.9.8], [uniwidth/width])
  gl_FUNC_UTIME
  if test $HAVE_UTIME = 0 || test $REPLACE_UTIME = 1; then
    AC_LIBOBJ([utime])
    gl_PREREQ_UTIME
  fi
  gl_UTIME_MODULE_INDICATOR([utime])
  gl_UTIME_H
  gl_UTIME_H_REQUIRE_DEFAULTS
  gl_UTIMENS
  AC_C_VARARRAYS
  AC_REQUIRE([AC_C_RESTRICT])
  gl_FUNC_VASNPRINTF
  gl_FUNC_VSNPRINTF
  gl_STDIO_MODULE_INDICATOR([vsnprintf])
  gl_FUNC_VSNPRINTF_POSIX
  gl_WCHAR_H
  gl_WCHAR_H_REQUIRE_DEFAULTS
  gl_FUNC_WCRTOMB
  if test $HAVE_WCRTOMB = 0 || test $REPLACE_WCRTOMB = 1; then
    AC_LIBOBJ([wcrtomb])
    gl_PREREQ_WCRTOMB
  fi
  gl_WCHAR_MODULE_INDICATOR([wcrtomb])
  gl_WCTYPE_H
  gl_WCTYPE_H_REQUIRE_DEFAULTS
  gl_FUNC_WCWIDTH
  if test $HAVE_WCWIDTH = 0 || test $REPLACE_WCWIDTH = 1; then
    AC_LIBOBJ([wcwidth])
    gl_PREREQ_WCWIDTH
  fi
  gl_WCHAR_MODULE_INDICATOR([wcwidth])
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_LIBOBJ([windows-mutex])
      ;;
  esac
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_LIBOBJ([windows-once])
      ;;
  esac
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_LIBOBJ([windows-recmutex])
      ;;
  esac
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_LIBOBJ([windows-rwlock])
      ;;
  esac
  gl_FUNC_WMEMCHR
  if test $HAVE_WMEMCHR = 0; then
    AC_LIBOBJ([wmemchr])
  fi
  gl_WCHAR_MODULE_INDICATOR([wmemchr])
  gl_FUNC_WMEMPCPY
  if test $HAVE_WMEMPCPY = 0; then
    AC_LIBOBJ([wmempcpy])
  fi
  gl_WCHAR_MODULE_INDICATOR([wmempcpy])
  gl_XSIZE
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gltests])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
  LIBGNU_LIBDEPS="$gl_libdeps"
  AC_SUBST([LIBGNU_LIBDEPS])
  LIBGNU_LTLIBDEPS="$gl_ltlibdeps"
  AC_SUBST([LIBGNU_LTLIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  lib/_Noreturn.h
  lib/alloca.c
  lib/alloca.in.h
  lib/arg-nonnull.h
  lib/asnprintf.c
  lib/attribute.h
  lib/basename-lgpl.c
  lib/basename-lgpl.h
  lib/btowc.c
  lib/c++defs.h
  lib/cdefs.h
  lib/cloexec.c
  lib/cloexec.h
  lib/close.c
  lib/closedir.c
  lib/ctype.in.h
  lib/dirent-private.h
  lib/dirent.in.h
  lib/dirfd.c
  lib/dirname-lgpl.c
  lib/dirname.h
  lib/dup2.c
  lib/dynarray.h
  lib/errno.in.h
  lib/fcntl.c
  lib/fcntl.in.h
  lib/fd-hook.c
  lib/fd-hook.h
  lib/filename.h
  lib/flexmember.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/fnmatch.c
  lib/fnmatch.in.h
  lib/fnmatch_loop.c
  lib/fpucw.h
  lib/free.c
  lib/frexp.c
  lib/frexpl.c
  lib/fstat.c
  lib/futimens.c
  lib/getdelim.c
  lib/getdtablesize.c
  lib/getline.c
  lib/getlogin_r.c
  lib/getopt-cdefs.in.h
  lib/getopt-core.h
  lib/getopt-ext.h
  lib/getopt-pfx-core.h
  lib/getopt-pfx-ext.h
  lib/getopt.c
  lib/getopt.in.h
  lib/getopt1.c
  lib/getopt_int.h
  lib/getrandom.c
  lib/gettext.h
  lib/gettime.c
  lib/gettimeofday.c
  lib/glob-libc.h
  lib/glob.c
  lib/glob.in.h
  lib/glob_internal.h
  lib/glob_pattern_p.c
  lib/globfree.c
  lib/glthread/lock.c
  lib/glthread/lock.h
  lib/glthread/threadlib.c
  lib/hard-locale.c
  lib/hard-locale.h
  lib/idx.h
  lib/intprops.h
  lib/inttypes.in.h
  lib/isblank.c
  lib/isnan.c
  lib/isnand-nolibm.h
  lib/isnand.c
  lib/isnanf-nolibm.h
  lib/isnanf.c
  lib/isnanl-nolibm.h
  lib/isnanl.c
  lib/iswblank.c
  lib/itold.c
  lib/langinfo.in.h
  lib/lc-charset-dispatch.c
  lib/lc-charset-dispatch.h
  lib/libc-config.h
  lib/limits.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/locale.in.h
  lib/localeconv.c
  lib/lstat.c
  lib/malloc.c
  lib/malloc/dynarray-skeleton.c
  lib/malloc/dynarray.h
  lib/malloc/dynarray_at_failure.c
  lib/malloc/dynarray_emplace_enlarge.c
  lib/malloc/dynarray_finalize.c
  lib/malloc/dynarray_resize.c
  lib/malloc/dynarray_resize_clear.c
  lib/malloc/scratch_buffer.h
  lib/malloc/scratch_buffer_dupfree.c
  lib/malloc/scratch_buffer_grow.c
  lib/malloc/scratch_buffer_grow_preserve.c
  lib/malloc/scratch_buffer_set_array_size.c
  lib/malloca.c
  lib/malloca.h
  lib/math.c
  lib/math.in.h
  lib/mbrtowc-impl-utf8.h
  lib/mbrtowc-impl.h
  lib/mbrtowc.c
  lib/mbsinit.c
  lib/mbsrtowcs-impl.h
  lib/mbsrtowcs-state.c
  lib/mbsrtowcs.c
  lib/mbtowc-impl.h
  lib/mbtowc-lock.c
  lib/mbtowc-lock.h
  lib/mbtowc.c
  lib/memchr.c
  lib/memchr.valgrind
  lib/mempcpy.c
  lib/minmax.h
  lib/mkdir.c
  lib/mkstemps.c
  lib/msvc-inval.c
  lib/msvc-inval.h
  lib/msvc-nothrow.c
  lib/msvc-nothrow.h
  lib/nl_langinfo-lock.c
  lib/nl_langinfo.c
  lib/open.c
  lib/opendir.c
  lib/pathmax.h
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-frexp.c
  lib/printf-frexp.h
  lib/printf-frexpl.c
  lib/printf-frexpl.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/raise.c
  lib/readdir.c
  lib/realloc.c
  lib/regcomp.c
  lib/regex.c
  lib/regex.h
  lib/regex_internal.c
  lib/regex_internal.h
  lib/regexec.c
  lib/scratch_buffer.h
  lib/setlocale-lock.c
  lib/setlocale_null.c
  lib/setlocale_null.h
  lib/sig-handler.c
  lib/sig-handler.h
  lib/sigaction.c
  lib/signal.in.h
  lib/signbitd.c
  lib/signbitf.c
  lib/signbitl.c
  lib/sigprocmask.c
  lib/size_max.h
  lib/snprintf.c
  lib/stat-time.c
  lib/stat-time.h
  lib/stat-w32.c
  lib/stat-w32.h
  lib/stat.c
  lib/stdalign.in.h
  lib/stdarg.in.h
  lib/stdbool.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/str-two-way.h
  lib/strcasecmp.c
  lib/strcasestr.c
  lib/streq.h
  lib/string.in.h
  lib/strings.in.h
  lib/stripslash.c
  lib/strncasecmp.c
  lib/strnlen.c
  lib/strnlen1.c
  lib/strnlen1.h
  lib/sys_random.in.h
  lib/sys_stat.in.h
  lib/sys_time.in.h
  lib/sys_types.in.h
  lib/sys_wait.in.h
  lib/tempname.c
  lib/tempname.h
  lib/time.in.h
  lib/timespec.c
  lib/timespec.h
  lib/unistd.c
  lib/unistd.in.h
  lib/unitypes.in.h
  lib/uniwidth.in.h
  lib/uniwidth/cjk.h
  lib/uniwidth/width.c
  lib/utime.c
  lib/utime.in.h
  lib/utimens.c
  lib/utimens.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/verify.h
  lib/vsnprintf.c
  lib/warn-on-use.h
  lib/wchar.in.h
  lib/wcrtomb.c
  lib/wctype-h.c
  lib/wctype.in.h
  lib/wcwidth.c
  lib/windows-initguard.h
  lib/windows-mutex.c
  lib/windows-mutex.h
  lib/windows-once.c
  lib/windows-once.h
  lib/windows-recmutex.c
  lib/windows-recmutex.h
  lib/windows-rwlock.c
  lib/windows-rwlock.h
  lib/wmemchr-impl.h
  lib/wmemchr.c
  lib/wmempcpy.c
  lib/xalloc-oversized.h
  lib/xsize.c
  lib/xsize.h
  m4/00gnulib.m4
  m4/__inline.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/btowc.m4
  m4/builtin-expect.m4
  m4/clock_time.m4
  m4/close.m4
  m4/closedir.m4
  m4/codeset.m4
  m4/ctype_h.m4
  m4/d-type.m4
  m4/dirent_h.m4
  m4/dirfd.m4
  m4/double-slash-root.m4
  m4/dup2.m4
  m4/eealloc.m4
  m4/errno_h.m4
  m4/exponentd.m4
  m4/exponentf.m4
  m4/exponentl.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/fcntl-o.m4
  m4/fcntl.m4
  m4/fcntl_h.m4
  m4/flexmember.m4
  m4/float_h.m4
  m4/fnmatch.m4
  m4/fnmatch_h.m4
  m4/fpieee.m4
  m4/free.m4
  m4/frexp.m4
  m4/frexpl.m4
  m4/fstat.m4
  m4/futimens.m4
  m4/getdelim.m4
  m4/getdtablesize.m4
  m4/getline.m4
  m4/getlogin.m4
  m4/getlogin_r.m4
  m4/getopt.m4
  m4/getrandom.m4
  m4/gettime.m4
  m4/gettimeofday.m4
  m4/glob.m4
  m4/glob_h.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/intmax_t.m4
  m4/inttypes.m4
  m4/inttypes_h.m4
  m4/isblank.m4
  m4/isnand.m4
  m4/isnanf.m4
  m4/isnanl.m4
  m4/iswblank.m4
  m4/langinfo_h.m4
  m4/largefile.m4
  m4/ldexpl.m4
  m4/libunistring-base.m4
  m4/limits-h.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-zh.m4
  m4/locale_h.m4
  m4/localeconv.m4
  m4/lock.m4
  m4/lstat.m4
  m4/malloc.m4
  m4/malloca.m4
  m4/math_h.m4
  m4/mbrtowc.m4
  m4/mbsinit.m4
  m4/mbsrtowcs.m4
  m4/mbstate_t.m4
  m4/mbtowc.m4
  m4/memchr.m4
  m4/mempcpy.m4
  m4/minmax.m4
  m4/mkdir.m4
  m4/mkstemps.m4
  m4/mmap-anon.m4
  m4/mode_t.m4
  m4/msvc-inval.m4
  m4/msvc-nothrow.m4
  m4/multiarch.m4
  m4/nl_langinfo.m4
  m4/nocrash.m4
  m4/off_t.m4
  m4/open-cloexec.m4
  m4/open-slash.m4
  m4/open.m4
  m4/opendir.m4
  m4/pathmax.m4
  m4/pid_t.m4
  m4/printf-frexp.m4
  m4/printf-frexpl.m4
  m4/printf.m4
  m4/pthread_rwlock_rdlock.m4
  m4/raise.m4
  m4/readdir.m4
  m4/realloc.m4
  m4/regex.m4
  m4/setlocale_null.m4
  m4/sigaction.m4
  m4/signal_h.m4
  m4/signalblocking.m4
  m4/signbit.m4
  m4/size_max.m4
  m4/snprintf-posix.m4
  m4/snprintf.m4
  m4/ssize_t.m4
  m4/stat-time.m4
  m4/stat.m4
  m4/std-gnu11.m4
  m4/stdalign.m4
  m4/stdarg.m4
  m4/stdbool.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/strcase.m4
  m4/strcasestr.m4
  m4/string_h.m4
  m4/strings_h.m4
  m4/strnlen.m4
  m4/sys_random_h.m4
  m4/sys_socket_h.m4
  m4/sys_stat_h.m4
  m4/sys_time_h.m4
  m4/sys_types_h.m4
  m4/sys_wait_h.m4
  m4/tempname.m4
  m4/threadlib.m4
  m4/time_h.m4
  m4/timespec.m4
  m4/unistd_h.m4
  m4/utime.m4
  m4/utime_h.m4
  m4/utimens.m4
  m4/utimes.m4
  m4/vararrays.m4
  m4/vasnprintf.m4
  m4/visibility.m4
  m4/vsnprintf-posix.m4
  m4/vsnprintf.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wcrtomb.m4
  m4/wctype_h.m4
  m4/wcwidth.m4
  m4/wint_t.m4
  m4/wmemchr.m4
  m4/wmempcpy.m4
  m4/xsize.m4
  m4/year2038.m4
  m4/zzgnulib.m4
])

# include_next.m4 serial 26
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert and Derek Price.

dnl Sets INCLUDE_NEXT, INCLUDE_NEXT_AS_FIRST_DIRECTIVE, PRAGMA_SYSTEM_HEADER,
dnl and PRAGMA_COLUMNS.
dnl
dnl INCLUDE_NEXT expands to 'include_next' if the compiler supports it, or to
dnl 'include' otherwise.
dnl
dnl INCLUDE_NEXT_AS_FIRST_DIRECTIVE expands to 'include_next' if the compiler
dnl supports it in the special case that it is the first include directive in
dnl the given file, or to 'include' otherwise.
dnl
dnl PRAGMA_SYSTEM_HEADER can be used in files that contain #include_next,
dnl so as to avoid GCC warnings when the gcc option -pedantic is used.
dnl '#pragma GCC system_header' has the same effect as if the file was found
dnl through the include search path specified with '-isystem' options (as
dnl opposed to the search path specified with '-I' options). Namely, gcc
dnl does not warn about some things, and on some systems (Solaris and Interix)
dnl __STDC__ evaluates to 0 instead of to 1. The latter is an undesired side
dnl effect; we are therefore careful to use 'defined __STDC__' or '1' instead
dnl of plain '__STDC__'.
dnl
dnl PRAGMA_COLUMNS can be used in files that override system header files, so
dnl as to avoid compilation errors on HP NonStop systems when the gnulib file
dnl is included by a system header file that does a "#pragma COLUMNS 80" (which
dnl has the effect of truncating the lines of that file and all files that it
dnl includes to 80 columns) and the gnulib file has lines longer than 80
dnl columns.

AC_DEFUN([gl_INCLUDE_NEXT],
[
  AC_LANG_PREPROC_REQUIRE()
  AC_CACHE_CHECK([whether the preprocessor supports include_next],
    [gl_cv_have_include_next],
    [rm -rf conftestd1a conftestd1b conftestd2
     mkdir conftestd1a conftestd1b conftestd2
     dnl IBM C 9.0, 10.1 (original versions, prior to the 2009-01 updates) on
     dnl AIX 6.1 support include_next when used as first preprocessor directive
     dnl in a file, but not when preceded by another include directive. Check
     dnl for this bug by including <stdio.h>.
     dnl Additionally, with this same compiler, include_next is a no-op when
     dnl used in a header file that was included by specifying its absolute
     dnl file name. Despite these two bugs, include_next is used in the
     dnl compiler's <math.h>. By virtue of the second bug, we need to use
     dnl include_next as well in this case.
     cat <<EOF > conftestd1a/conftest.h
#define DEFINED_IN_CONFTESTD1
#include_next <conftest.h>
#ifdef DEFINED_IN_CONFTESTD2
int foo;
#else
#error "include_next doesn't work"
#endif
EOF
     cat <<EOF > conftestd1b/conftest.h
#define DEFINED_IN_CONFTESTD1
#include <stdio.h>
#include_next <conftest.h>
#ifdef DEFINED_IN_CONFTESTD2
int foo;
#else
#error "include_next doesn't work"
#endif
EOF
     cat <<EOF > conftestd2/conftest.h
#ifndef DEFINED_IN_CONFTESTD1
#error "include_next test doesn't work"
#endif
#define DEFINED_IN_CONFTESTD2
EOF
     gl_save_CPPFLAGS="$CPPFLAGS"
     CPPFLAGS="$gl_save_CPPFLAGS -Iconftestd1b -Iconftestd2"
dnl We intentionally avoid using AC_LANG_SOURCE here.
     AC_COMPILE_IFELSE([AC_LANG_DEFINES_PROVIDED[#include <conftest.h>]],
       [gl_cv_have_include_next=yes],
       [CPPFLAGS="$gl_save_CPPFLAGS -Iconftestd1a -Iconftestd2"
        AC_COMPILE_IFELSE([AC_LANG_DEFINES_PROVIDED[#include <conftest.h>]],
          [gl_cv_have_include_next=buggy],
          [gl_cv_have_include_next=no])
       ])
     CPPFLAGS="$gl_save_CPPFLAGS"
     rm -rf conftestd1a conftestd1b conftestd2
    ])
  PRAGMA_SYSTEM_HEADER=
  if test $gl_cv_have_include_next = yes; then
    INCLUDE_NEXT=include_next
    INCLUDE_NEXT_AS_FIRST_DIRECTIVE=include_next
    if test -n "$GCC"; then
      PRAGMA_SYSTEM_HEADER='#pragma GCC system_header'
    fi
  else
    if test $gl_cv_have_include_next = buggy; then
      INCLUDE_NEXT=include
      INCLUDE_NEXT_AS_FIRST_DIRECTIVE=include_next
    else
      INCLUDE_NEXT=include
      INCLUDE_NEXT_AS_FIRST_DIRECTIVE=include
    fi
  fi
  AC_SUBST([INCLUDE_NEXT])
  AC_SUBST([INCLUDE_NEXT_AS_FIRST_DIRECTIVE])
  AC_SUBST([PRAGMA_SYSTEM_HEADER])

  dnl HP NonStop systems, which define __TANDEM, limit the line length
  dnl after including some system header files.
  AC_CACHE_CHECK([whether source code line length is unlimited],
    [gl_cv_source_line_length_unlimited],
    [AC_EGREP_CPP([choke me],
       [
#ifdef __TANDEM
choke me
#endif
       ],
       [gl_cv_source_line_length_unlimited=no],
       [gl_cv_source_line_length_unlimited=yes])
    ])
  if test $gl_cv_source_line_length_unlimited = no; then
    PRAGMA_COLUMNS="#pragma COLUMNS 10000"
  else
    PRAGMA_COLUMNS=
  fi
  AC_SUBST([PRAGMA_COLUMNS])
])

# gl_CHECK_NEXT_HEADERS(HEADER1 HEADER2 ...)
# ------------------------------------------
# For each arg foo.h, if #include_next works, define NEXT_FOO_H to be
# '<foo.h>'; otherwise define it to be
# '"///usr/include/foo.h"', or whatever other absolute file name is suitable.
# Also, if #include_next works as first preprocessing directive in a file,
# define NEXT_AS_FIRST_DIRECTIVE_FOO_H to be '<foo.h>'; otherwise define it to
# be
# '"///usr/include/foo.h"', or whatever other absolute file name is suitable.
# That way, a header file with the following line:
#       #@INCLUDE_NEXT@ @NEXT_FOO_H@
# or
#       #@INCLUDE_NEXT_AS_FIRST_DIRECTIVE@ @NEXT_AS_FIRST_DIRECTIVE_FOO_H@
# behaves (after sed substitution) as if it contained
#       #include_next <foo.h>
# even if the compiler does not support include_next.
# The three "///" are to pacify Sun C 5.8, which otherwise would say
# "warning: #include of /usr/include/... may be non-portable".
# Use '""', not '<>', so that the /// cannot be confused with a C99 comment.
# Note: This macro assumes that the header file is not empty after
# preprocessing, i.e. it does not only define preprocessor macros but also
# provides some type/enum definitions or function/variable declarations.
#
# This macro also checks whether each header exists, by invoking
# AC_CHECK_HEADERS_ONCE or AC_CHECK_HEADERS on each argument.
AC_DEFUN([gl_CHECK_NEXT_HEADERS],
[
  gl_NEXT_HEADERS_INTERNAL([$1], [check])
])

# gl_NEXT_HEADERS(HEADER1 HEADER2 ...)
# ------------------------------------
# Like gl_CHECK_NEXT_HEADERS, except do not check whether the headers exist.
# This is suitable for headers like <stddef.h> that are standardized by C89
# and therefore can be assumed to exist.
AC_DEFUN([gl_NEXT_HEADERS],
[
  gl_NEXT_HEADERS_INTERNAL([$1], [assume])
])

# The guts of gl_CHECK_NEXT_HEADERS and gl_NEXT_HEADERS.
AC_DEFUN([gl_NEXT_HEADERS_INTERNAL],
[
  AC_REQUIRE([gl_INCLUDE_NEXT])
  AC_REQUIRE([AC_CANONICAL_HOST])

  m4_if([$2], [check],
    [AC_CHECK_HEADERS_ONCE([$1])
    ])

  m4_foreach_w([gl_HEADER_NAME], [$1],
    [AS_VAR_PUSHDEF([gl_next_header],
                    [gl_cv_next_]m4_defn([gl_HEADER_NAME]))
     if test $gl_cv_have_include_next = yes; then
       AS_VAR_SET([gl_next_header], ['<'gl_HEADER_NAME'>'])
     else
       AC_CACHE_CHECK(
         [absolute name of <]m4_defn([gl_HEADER_NAME])[>],
         [gl_next_header],
         [m4_if([$2], [check],
            [AS_VAR_PUSHDEF([gl_header_exists],
                            [ac_cv_header_]m4_defn([gl_HEADER_NAME]))
             if test AS_VAR_GET([gl_header_exists]) = yes; then
             AS_VAR_POPDEF([gl_header_exists])
            ])
           gl_ABSOLUTE_HEADER_ONE(gl_HEADER_NAME)
           AS_VAR_COPY([gl_header], [gl_cv_absolute_]AS_TR_SH(gl_HEADER_NAME))
           AS_VAR_SET([gl_next_header], ['"'$gl_header'"'])
          m4_if([$2], [check],
            [else
               AS_VAR_SET([gl_next_header], ['<'gl_HEADER_NAME'>'])
             fi
            ])
         ])
     fi
     AC_SUBST(
       AS_TR_CPP([NEXT_]m4_defn([gl_HEADER_NAME])),
       [AS_VAR_GET([gl_next_header])])
     if test $gl_cv_have_include_next = yes || test $gl_cv_have_include_next = buggy; then
       # INCLUDE_NEXT_AS_FIRST_DIRECTIVE='include_next'
       gl_next_as_first_directive='<'gl_HEADER_NAME'>'
     else
       # INCLUDE_NEXT_AS_FIRST_DIRECTIVE='include'
       gl_next_as_first_directive=AS_VAR_GET([gl_next_header])
     fi
     AC_SUBST(
       AS_TR_CPP([NEXT_AS_FIRST_DIRECTIVE_]m4_defn([gl_HEADER_NAME])),
       [$gl_next_as_first_directive])
     AS_VAR_POPDEF([gl_next_header])])
])

# Autoconf 2.68 added warnings for our use of AC_COMPILE_IFELSE;
# this fallback is safe for all earlier autoconf versions.
m4_define_default([AC_LANG_DEFINES_PROVIDED])

# intlmacosx.m4 serial 5 (gettext-0.18.2)
dnl Copyright (C) 2004-2013 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl
dnl This file can can be used in projects which are not available under
dnl the GNU General Public License or the GNU Library General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Library General Public License, and the rest of the GNU
dnl gettext package package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl Checks for special options needed on Mac OS X.
dnl Defines INTL_MACOSX_LIBS.
AC_DEFUN([gt_INTL_MACOSX],
[
  dnl Check for API introduced in Mac OS X 10.2.
  AC_CACHE_CHECK([for CFPreferencesCopyAppValue],
    [gt_cv_func_CFPreferencesCopyAppValue],
    [gt_save_LIBS="$LIBS"
     LIBS="$LIBS -Wl,-framework -Wl,CoreFoundation"
     AC_LINK_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <CoreFoundation/CFPreferences.h>]],
          [[CFPreferencesCopyAppValue(NULL, NULL)]])],
       [gt_cv_func_CFPreferencesCopyAppValue=yes],
       [gt_cv_func_CFPreferencesCopyAppValue=no])
     LIBS="$gt_save_LIBS"])
  if test $gt_cv_func_CFPreferencesCopyAppValue = yes; then
    AC_DEFINE([HAVE_CFPREFERENCESCOPYAPPVALUE], [1],
      [Define to 1 if you have the Mac OS X function CFPreferencesCopyAppValue in the CoreFoundation framework.])
  fi
  dnl Check for API introduced in Mac OS X 10.3.
  AC_CACHE_CHECK([for CFLocaleCopyCurrent], [gt_cv_func_CFLocaleCopyCurrent],
    [gt_save_LIBS="$LIBS"
     LIBS="$LIBS -Wl,-framework -Wl,CoreFoundation"
     AC_LINK_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <CoreFoundation/CFLocale.h>]],
          [[CFLocaleCopyCurrent();]])],
       [gt_cv_func_CFLocaleCopyCurrent=yes],
       [gt_cv_func_CFLocaleCopyCurrent=no])
     LIBS="$gt_save_LIBS"])
  if test $gt_cv_func_CFLocaleCopyCurrent = yes; then
    AC_DEFINE([HAVE_CFLOCALECOPYCURRENT], [1],
      [Define to 1 if you have the Mac OS X function CFLocaleCopyCurrent in the CoreFoundation framework.])
  fi
  INTL_MACOSX_LIBS=
  if test $gt_cv_func_CFPreferencesCopyAppValue = yes || test $gt_cv_func_CFLocaleCopyCurrent = yes; then
    INTL_MACOSX_LIBS="-Wl,-framework -Wl,CoreFoundation"
  fi
  AC_SUBST([INTL_MACOSX_LIBS])
])

# intmax_t.m4 serial 9
dnl Copyright (C) 1997-2004, 2006-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

AC_PREREQ([2.53])

# Define intmax_t to 'long' or 'long long'
# if it is not already defined in <stdint.h> or <inttypes.h>.

AC_DEFUN([gl_AC_TYPE_INTMAX_T],
[
  dnl For simplicity, we assume that a header file defines 'intmax_t' if and
  dnl only if it defines 'uintmax_t'.
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  if test $gl_cv_header_inttypes_h = no && test $gl_cv_header_stdint_h = no; then
    AC_DEFINE_UNQUOTED([intmax_t], [long long],
     [Define to long or long long if <inttypes.h> and <stdint.h> don't define.])
  else
    AC_DEFINE([HAVE_INTMAX_T], [1],
      [Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>.])
  fi
])

dnl An alternative would be to explicitly test for 'intmax_t'.

AC_DEFUN([gt_AC_TYPE_INTMAX_T],
[
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  AC_CACHE_CHECK([for intmax_t], [gt_cv_c_intmax_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[
#include <stddef.h>
#include <stdlib.h>
#if HAVE_STDINT_H_WITH_UINTMAX
#include <stdint.h>
#endif
#if HAVE_INTTYPES_H_WITH_UINTMAX
#include <inttypes.h>
#endif
          ]],
          [[intmax_t x = -1; return !x;]])],
       [gt_cv_c_intmax_t=yes],
       [gt_cv_c_intmax_t=no])])
  if test $gt_cv_c_intmax_t = yes; then
    AC_DEFINE([HAVE_INTMAX_T], [1],
      [Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>.])
  else
    AC_DEFINE_UNQUOTED([intmax_t], [long long],
     [Define to long or long long if <stdint.h> and <inttypes.h> don't define.])
  fi
])

# inttypes.m4 serial 35
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Derek Price, Bruno Haible.
dnl Test whether <inttypes.h> is supported or must be substituted.

AC_DEFUN_ONCE([gl_INTTYPES_H],
[
  AC_REQUIRE([gl_INTTYPES_INCOMPLETE])
  gl_INTTYPES_PRI_SCN
])

AC_DEFUN_ONCE([gl_INTTYPES_INCOMPLETE],
[
  AC_REQUIRE([gl_STDINT_H])
  AC_CHECK_HEADERS_ONCE([inttypes.h])

  dnl Override <inttypes.h> always, so that the portability warnings work.
  AC_REQUIRE([gl_INTTYPES_H_DEFAULTS])
  gl_CHECK_NEXT_HEADERS([inttypes.h])

  AC_REQUIRE([gl_MULTIARCH])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <inttypes.h>
    ]], [imaxabs imaxdiv strtoimax strtoumax])

  AC_REQUIRE([AC_C_RESTRICT])
])

# Ensure that the PRI* and SCN* macros are defined appropriately.
AC_DEFUN([gl_INTTYPES_PRI_SCN],
[
  PRIPTR_PREFIX=
  if test -n "$STDINT_H"; then
    dnl Using the gnulib <stdint.h>. It defines intptr_t to 'long' or
    dnl 'long long', depending on _WIN64.
    AC_COMPILE_IFELSE(
      [AC_LANG_PROGRAM([[
         #ifdef _WIN64
         LLP64
         #endif
         ]])
      ],
      [PRIPTR_PREFIX='"l"'],
      [PRIPTR_PREFIX='"ll"'])
  else
    dnl Using the system's <stdint.h>.
    for glpfx in '' l ll I64; do
      case $glpfx in
        '')  gltype1='int';;
        l)   gltype1='long int';;
        ll)  gltype1='long long int';;
        I64) gltype1='__int64';;
      esac
      AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM([[#include <stdint.h>
           extern intptr_t foo;
           extern $gltype1 foo;]])],
        [PRIPTR_PREFIX='"'$glpfx'"'])
      test -n "$PRIPTR_PREFIX" && break
    done
  fi
  AC_SUBST([PRIPTR_PREFIX])

  gl_INTTYPES_CHECK_LONG_LONG_INT_CONDITION(
    [INT32_MAX_LT_INTMAX_MAX],
    [defined INT32_MAX && defined INTMAX_MAX],
    [INT32_MAX < INTMAX_MAX],
    [sizeof (int) < sizeof (long long int)])
  if test $APPLE_UNIVERSAL_BUILD = 0; then
    gl_INTTYPES_CHECK_LONG_LONG_INT_CONDITION(
      [INT64_MAX_EQ_LONG_MAX],
      [defined INT64_MAX],
      [INT64_MAX == LONG_MAX],
      [sizeof (long long int) == sizeof (long int)])
  else
    INT64_MAX_EQ_LONG_MAX=-1
  fi
  gl_INTTYPES_CHECK_LONG_LONG_INT_CONDITION(
    [UINT32_MAX_LT_UINTMAX_MAX],
    [defined UINT32_MAX && defined UINTMAX_MAX],
    [UINT32_MAX < UINTMAX_MAX],
    [sizeof (unsigned int) < sizeof (unsigned long long int)])
  if test $APPLE_UNIVERSAL_BUILD = 0; then
    gl_INTTYPES_CHECK_LONG_LONG_INT_CONDITION(
      [UINT64_MAX_EQ_ULONG_MAX],
      [defined UINT64_MAX],
      [UINT64_MAX == ULONG_MAX],
      [sizeof (unsigned long long int) == sizeof (unsigned long int)])
  else
    UINT64_MAX_EQ_ULONG_MAX=-1
  fi
])

# Define the symbol $1 to be 1 if the condition is true, 0 otherwise.
# If $2 is true, the condition is $3; otherwise if long long int is supported
# approximate the condition with $4; otherwise, assume the condition is false.
# The condition should work on all C99 platforms; the approximations should be
# good enough to work on all practical pre-C99 platforms.
# $2 is evaluated by the C preprocessor, $3 and $4 as compile-time constants.
AC_DEFUN([gl_INTTYPES_CHECK_LONG_LONG_INT_CONDITION],
[
  AC_CACHE_CHECK([whether $3],
    [gl_cv_test_$1],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[/* Work also in C++ mode.  */
            #define __STDC_LIMIT_MACROS 1

            /* Work if build is not clean.  */
            #define _GL_JUST_INCLUDE_SYSTEM_STDINT_H

            #include <limits.h>
            #if HAVE_STDINT_H
             #include <stdint.h>
            #endif

            #if $2
             #define CONDITION ($3)
            #else
             #define CONDITION ($4)
            #endif
            int test[CONDITION ? 1 : -1];]])],
       [gl_cv_test_$1=yes],
       [gl_cv_test_$1=no])])
  if test $gl_cv_test_$1 = yes; then
    $1=1;
  else
    $1=0;
  fi
  AC_SUBST([$1])
])

# gl_INTTYPES_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_INTTYPES_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_INTTYPES_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_INTTYPES_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_INTTYPES_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_IMAXABS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_IMAXDIV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOIMAX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOUMAX])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_INTTYPES_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_INTTYPES_H_DEFAULTS])
])

AC_DEFUN([gl_INTTYPES_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_DECL_IMAXABS=1;   AC_SUBST([HAVE_DECL_IMAXABS])
  HAVE_DECL_IMAXDIV=1;   AC_SUBST([HAVE_DECL_IMAXDIV])
  HAVE_DECL_STRTOIMAX=1; AC_SUBST([HAVE_DECL_STRTOIMAX])
  HAVE_DECL_STRTOUMAX=1; AC_SUBST([HAVE_DECL_STRTOUMAX])
  HAVE_IMAXDIV_T=1;      AC_SUBST([HAVE_IMAXDIV_T])
  REPLACE_STRTOIMAX=0;   AC_SUBST([REPLACE_STRTOIMAX])
  REPLACE_STRTOUMAX=0;   AC_SUBST([REPLACE_STRTOUMAX])
  INT32_MAX_LT_INTMAX_MAX=1;  AC_SUBST([INT32_MAX_LT_INTMAX_MAX])
  INT64_MAX_EQ_LONG_MAX='defined _LP64';  AC_SUBST([INT64_MAX_EQ_LONG_MAX])
  PRIPTR_PREFIX=__PRIPTR_PREFIX;  AC_SUBST([PRIPTR_PREFIX])
  UINT32_MAX_LT_UINTMAX_MAX=1;  AC_SUBST([UINT32_MAX_LT_UINTMAX_MAX])
  UINT64_MAX_EQ_ULONG_MAX='defined _LP64';  AC_SUBST([UINT64_MAX_EQ_ULONG_MAX])
])

# inttypes_h.m4 serial 10
dnl Copyright (C) 1997-2004, 2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H_WITH_UINTMAX if <inttypes.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([gl_AC_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], [gl_cv_header_inttypes_h],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[
#include <sys/types.h>
#include <inttypes.h>
          ]],
          [[uintmax_t i = (uintmax_t) -1; return !i;]])],
       [gl_cv_header_inttypes_h=yes],
       [gl_cv_header_inttypes_h=no])])
  if test $gl_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED([HAVE_INTTYPES_H_WITH_UINTMAX], [1],
      [Define if <inttypes.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# isblank.m4 serial 3
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ISBLANK],
[
  dnl Persuade glibc <ctype.h> to declare isblank().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_REQUIRE([gl_CTYPE_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([isblank])
  if test $ac_cv_func_isblank = no; then
    HAVE_ISBLANK=0
  fi
])

# isnand.m4 serial 12
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check how to get or define isnand().

AC_DEFUN([gl_FUNC_ISNAND],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  ISNAND_LIBM=
  gl_HAVE_ISNAND_NO_LIBM
  if test $gl_cv_func_isnand_no_libm = no; then
    gl_HAVE_ISNAND_IN_LIBM
    if test $gl_cv_func_isnand_in_libm = yes; then
      ISNAND_LIBM=-lm
    fi
  fi
  dnl The variable gl_func_isnand set here is used by isnan.m4.
  if test $gl_cv_func_isnand_no_libm = yes \
     || test $gl_cv_func_isnand_in_libm = yes; then
    gl_func_isnand=yes
  else
    gl_func_isnand=no
    HAVE_ISNAND=0
  fi
  AC_SUBST([ISNAND_LIBM])
])

dnl Check how to get or define isnand() without linking with libm.

AC_DEFUN([gl_FUNC_ISNAND_NO_LIBM],
[
  gl_HAVE_ISNAND_NO_LIBM
  gl_func_isnand_no_libm=$gl_cv_func_isnand_no_libm
  if test $gl_cv_func_isnand_no_libm = yes; then
    AC_DEFINE([HAVE_ISNAND_IN_LIBC], [1],
      [Define if the isnan(double) function is available in libc.])
  fi
])

dnl Prerequisites of replacement isnand definition. It does not need -lm.
AC_DEFUN([gl_PREREQ_ISNAND],
[
  AC_REQUIRE([gl_DOUBLE_EXPONENT_LOCATION])
])

dnl Test whether isnand() can be used with libm.

AC_DEFUN([gl_HAVE_ISNAND_IN_LIBM],
[
  AC_CACHE_CHECK([whether isnan(double) can be used with libm],
    [gl_cv_func_isnand_in_libm],
    [
      save_LIBS="$LIBS"
      LIBS="$LIBS -lm"
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnand
             # define isnand(x) __builtin_isnan ((double)(x))
             #elif defined isnan
             # undef isnand
             # define isnand(x) isnan ((double)(x))
             #endif
             double x;]],
           [[return isnand (x);]])],
        [gl_cv_func_isnand_in_libm=yes],
        [gl_cv_func_isnand_in_libm=no])
      LIBS="$save_LIBS"
    ])
])

AC_DEFUN([gl_HAVE_ISNAND_NO_LIBM],
[
  AC_CACHE_CHECK([whether isnan(double) can be used without linking with libm],
    [gl_cv_func_isnand_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnand
             # define isnand(x) __builtin_isnan ((double)(x))
             #else
             # undef isnand
             # define isnand(x) isnan ((double)(x))
             #endif
             double x;]],
           [[return isnand (x);]])],
        [gl_cv_func_isnand_no_libm=yes],
        [gl_cv_func_isnand_no_libm=no])
    ])
])

# isnanf.m4 serial 18
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check how to get or define isnanf().

AC_DEFUN([gl_FUNC_ISNANF],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  ISNANF_LIBM=
  gl_HAVE_ISNANF_NO_LIBM
  if test $gl_cv_func_isnanf_no_libm = no; then
    gl_HAVE_ISNANF_IN_LIBM
    if test $gl_cv_func_isnanf_in_libm = yes; then
      ISNANF_LIBM=-lm
    fi
  fi
  dnl The variable gl_func_isnanf set here is used by isnan.m4.
  if test $gl_cv_func_isnanf_no_libm = yes \
     || test $gl_cv_func_isnanf_in_libm = yes; then
    save_LIBS="$LIBS"
    LIBS="$LIBS $ISNANF_LIBM"
    gl_ISNANF_WORKS
    LIBS="$save_LIBS"
    case "$gl_cv_func_isnanf_works" in
      *yes) gl_func_isnanf=yes ;;
      *)    gl_func_isnanf=no; ISNANF_LIBM= ;;
    esac
  else
    gl_func_isnanf=no
  fi
  if test $gl_func_isnanf != yes; then
    HAVE_ISNANF=0
  fi
  AC_SUBST([ISNANF_LIBM])
])

dnl Check how to get or define isnanf() without linking with libm.

AC_DEFUN([gl_FUNC_ISNANF_NO_LIBM],
[
  gl_HAVE_ISNANF_NO_LIBM
  if test $gl_cv_func_isnanf_no_libm = yes; then
    gl_ISNANF_WORKS
  fi
  if test $gl_cv_func_isnanf_no_libm = yes \
     && { case "$gl_cv_func_isnanf_works" in
            *yes) true;;
            *) false;;
          esac
        }; then
    gl_func_isnanf_no_libm=yes
    AC_DEFINE([HAVE_ISNANF_IN_LIBC], [1],
      [Define if the isnan(float) function is available in libc.])
  else
    gl_func_isnanf_no_libm=no
  fi
])

dnl Prerequisites of replacement isnanf definition. It does not need -lm.
AC_DEFUN([gl_PREREQ_ISNANF],
[
  gl_FLOAT_EXPONENT_LOCATION
])

dnl Test whether isnanf() can be used without libm.
AC_DEFUN([gl_HAVE_ISNANF_NO_LIBM],
[
  AC_CACHE_CHECK([whether isnan(float) can be used without linking with libm],
    [gl_cv_func_isnanf_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnanf
             # define isnanf(x) __builtin_isnan ((float)(x))
             #elif defined isnan
             # undef isnanf
             # define isnanf(x) isnan ((float)(x))
             #endif
             float x;]],
           [[return isnanf (x);]])],
        [gl_cv_func_isnanf_no_libm=yes],
        [gl_cv_func_isnanf_no_libm=no])
    ])
])

dnl Test whether isnanf() can be used with libm.
AC_DEFUN([gl_HAVE_ISNANF_IN_LIBM],
[
  AC_CACHE_CHECK([whether isnan(float) can be used with libm],
    [gl_cv_func_isnanf_in_libm],
    [
      save_LIBS="$LIBS"
      LIBS="$LIBS -lm"
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnanf
             # define isnanf(x) __builtin_isnan ((float)(x))
             #elif defined isnan
             # undef isnanf
             # define isnanf(x) isnan ((float)(x))
             #endif
             float x;]],
           [[return isnanf (x);]])],
        [gl_cv_func_isnanf_in_libm=yes],
        [gl_cv_func_isnanf_in_libm=no])
      LIBS="$save_LIBS"
    ])
])

dnl Test whether isnanf() rejects Infinity (this fails on Solaris 2.5.1),
dnl recognizes a NaN (this fails on IRIX 6.5 with cc), and recognizes a NaN
dnl with in-memory representation 0x7fbfffff (this fails on IRIX 6.5).
AC_DEFUN([gl_ISNANF_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_FLOAT_EXPONENT_LOCATION])
  AC_CACHE_CHECK([whether isnan(float) works], [gl_cv_func_isnanf_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <math.h>
#if (__GNUC__ >= 4) || (__clang_major__ >= 4)
# undef isnanf
# define isnanf(x) __builtin_isnan ((float)(x))
#elif defined isnan
# undef isnanf
# define isnanf(x) isnan ((float)(x))
#endif
/* The Compaq (ex-DEC) C 6.4 compiler chokes on the expression 0.0 / 0.0.  */
#ifdef __DECC
static float
NaN ()
{
  static float zero = 0.0f;
  return zero / zero;
}
#else
# define NaN() (0.0f / 0.0f)
#endif
#define NWORDS \
  ((sizeof (float) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { unsigned int word[NWORDS]; float value; } memory_float;
int main()
{
  int result = 0;

  if (isnanf (1.0f / 0.0f))
    result |= 1;

  if (!isnanf (NaN ()))
    result |= 2;

#if defined FLT_EXPBIT0_WORD && defined FLT_EXPBIT0_BIT
  /* The isnanf function should be immune against changes in the sign bit and
     in the mantissa bits.  The xor operation twiddles a bit that can only be
     a sign bit or a mantissa bit.  */
  if (FLT_EXPBIT0_WORD == 0 && FLT_EXPBIT0_BIT > 0)
    {
      memory_float m;

      m.value = NaN ();
      /* Set the bits below the exponent to 01111...111.  */
      m.word[0] &= -1U << FLT_EXPBIT0_BIT;
      m.word[0] |= (1U << (FLT_EXPBIT0_BIT - 1)) - 1;
      if (!isnanf (m.value))
        result |= 4;
    }
#endif

  return result;
}]])],
        [gl_cv_func_isnanf_works=yes],
        [gl_cv_func_isnanf_works=no],
        [case "$host_os" in
           irix* | solaris*) gl_cv_func_isnanf_works="guessing no" ;;
           mingw*) # Guess yes on mingw, no on MSVC.
             AC_EGREP_CPP([Known], [
#ifdef __MINGW32__
 Known
#endif
               ],
               [gl_cv_func_isnanf_works="guessing yes"],
               [gl_cv_func_isnanf_works="guessing no"])
             ;;
           *) gl_cv_func_isnanf_works="guessing yes" ;;
         esac
        ])
    ])
])

# isnanl.m4 serial 22
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ISNANL],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  ISNANL_LIBM=
  gl_HAVE_ISNANL_NO_LIBM
  if test $gl_cv_func_isnanl_no_libm = no; then
    gl_HAVE_ISNANL_IN_LIBM
    if test $gl_cv_func_isnanl_in_libm = yes; then
      ISNANL_LIBM=-lm
    fi
  fi
  dnl The variable gl_func_isnanl set here is used by isnan.m4.
  if test $gl_cv_func_isnanl_no_libm = yes \
     || test $gl_cv_func_isnanl_in_libm = yes; then
    save_LIBS="$LIBS"
    LIBS="$LIBS $ISNANL_LIBM"
    gl_FUNC_ISNANL_WORKS
    LIBS="$save_LIBS"
    case "$gl_cv_func_isnanl_works" in
      *yes) gl_func_isnanl=yes ;;
      *)    gl_func_isnanl=no; ISNANL_LIBM= ;;
    esac
  else
    gl_func_isnanl=no
  fi
  if test $gl_func_isnanl != yes; then
    HAVE_ISNANL=0
  fi
  AC_SUBST([ISNANL_LIBM])
])

AC_DEFUN([gl_FUNC_ISNANL_NO_LIBM],
[
  gl_HAVE_ISNANL_NO_LIBM
  gl_func_isnanl_no_libm=$gl_cv_func_isnanl_no_libm
  if test $gl_func_isnanl_no_libm = yes; then
    gl_FUNC_ISNANL_WORKS
    case "$gl_cv_func_isnanl_works" in
      *yes) ;;
      *)    gl_func_isnanl_no_libm=no ;;
    esac
  fi
  if test $gl_func_isnanl_no_libm = yes; then
    AC_DEFINE([HAVE_ISNANL_IN_LIBC], [1],
      [Define if the isnan(long double) function is available in libc.])
  fi
])

dnl Prerequisites of replacement isnanl definition. It does not need -lm.
AC_DEFUN([gl_PREREQ_ISNANL],
[
  gl_LONG_DOUBLE_EXPONENT_LOCATION
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])
])

dnl Test whether isnanl() can be used without libm.
AC_DEFUN([gl_HAVE_ISNANL_NO_LIBM],
[
  AC_CACHE_CHECK([whether isnan(long double) can be used without linking with libm],
    [gl_cv_func_isnanl_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnanl
             # define isnanl(x) __builtin_isnan ((long double)(x))
             #elif defined isnan
             # undef isnanl
             # define isnanl(x) isnan ((long double)(x))
             #endif
             long double x;]],
           [[return isnanl (x);]])],
        [gl_cv_func_isnanl_no_libm=yes],
        [gl_cv_func_isnanl_no_libm=no])
    ])
])

dnl Test whether isnanl() can be used with libm.
AC_DEFUN([gl_HAVE_ISNANL_IN_LIBM],
[
  AC_CACHE_CHECK([whether isnan(long double) can be used with libm],
    [gl_cv_func_isnanl_in_libm],
    [
      save_LIBS="$LIBS"
      LIBS="$LIBS -lm"
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             #if (__GNUC__ >= 4) || (__clang_major__ >= 4)
             # undef isnanl
             # define isnanl(x) __builtin_isnan ((long double)(x))
             #elif defined isnan
             # undef isnanl
             # define isnanl(x) isnan ((long double)(x))
             #endif
             long double x;]],
           [[return isnanl (x);]])],
        [gl_cv_func_isnanl_in_libm=yes],
        [gl_cv_func_isnanl_in_libm=no])
      LIBS="$save_LIBS"
    ])
])

dnl Test whether isnanl() recognizes all canonical numbers which are neither
dnl finite nor infinite.
AC_DEFUN([gl_FUNC_ISNANL_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gl_BIGENDIAN])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether isnanl works], [gl_cv_func_isnanl_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <float.h>
#include <limits.h>
#include <math.h>
#if (__GNUC__ >= 4) || (__clang_major__ >= 4)
# undef isnanl
# define isnanl(x) __builtin_isnan ((long double)(x))
#elif defined isnan
# undef isnanl
# define isnanl(x) isnan ((long double)(x))
#endif
#define NWORDS \
  ((sizeof (long double) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { unsigned int word[NWORDS]; long double value; }
        memory_long_double;
/* On Irix 6.5, gcc 3.4.3 can't compute compile-time NaN, and needs the
   runtime type conversion.  */
#ifdef __sgi
static long double NaNl ()
{
  double zero = 0.0;
  return zero / zero;
}
#else
# define NaNl() (0.0L / 0.0L)
#endif
int main ()
{
  int result = 0;

  if (!isnanl (NaNl ()))
    result |= 1;

  {
    memory_long_double m;
    unsigned int i;

    /* The isnanl function should be immune against changes in the sign bit and
       in the mantissa bits.  The xor operation twiddles a bit that can only be
       a sign bit or a mantissa bit (since the exponent never extends to
       bit 31).  */
    m.value = NaNl ();
    m.word[NWORDS / 2] ^= (unsigned int) 1 << (sizeof (unsigned int) * CHAR_BIT - 1);
    for (i = 0; i < NWORDS; i++)
      m.word[i] |= 1;
    if (!isnanl (m.value))
      result |= 1;
  }

#if ((defined __ia64 && LDBL_MANT_DIG == 64) || (defined __x86_64__ || defined __amd64__) || (defined __i386 || defined __i386__ || defined _I386 || defined _M_IX86 || defined _X86_)) && !HAVE_SAME_LONG_DOUBLE_AS_DOUBLE
/* Representation of an 80-bit 'long double' as an initializer for a sequence
   of 'unsigned int' words.  */
# ifdef WORDS_BIGENDIAN
#  define LDBL80_WORDS(exponent,manthi,mantlo) \
     { ((unsigned int) (exponent) << 16) | ((unsigned int) (manthi) >> 16), \
       ((unsigned int) (manthi) << 16) | ((unsigned int) (mantlo) >> 16),   \
       (unsigned int) (mantlo) << 16                                        \
     }
# else
#  define LDBL80_WORDS(exponent,manthi,mantlo) \
     { mantlo, manthi, exponent }
# endif
  { /* Quiet NaN.  */
    static memory_long_double x =
      { LDBL80_WORDS (0xFFFF, 0xC3333333, 0x00000000) };
    if (!isnanl (x.value))
      result |= 2;
  }
  {
    /* Signalling NaN.  */
    static memory_long_double x =
      { LDBL80_WORDS (0xFFFF, 0x83333333, 0x00000000) };
    if (!isnanl (x.value))
      result |= 2;
  }
  /* isnanl should return something even for noncanonical values.  */
  { /* Pseudo-NaN.  */
    static memory_long_double x =
      { LDBL80_WORDS (0xFFFF, 0x40000001, 0x00000000) };
    if (isnanl (x.value) && !isnanl (x.value))
      result |= 4;
  }
  { /* Pseudo-Infinity.  */
    static memory_long_double x =
      { LDBL80_WORDS (0xFFFF, 0x00000000, 0x00000000) };
    if (isnanl (x.value) && !isnanl (x.value))
      result |= 8;
  }
  { /* Pseudo-Zero.  */
    static memory_long_double x =
      { LDBL80_WORDS (0x4004, 0x00000000, 0x00000000) };
    if (isnanl (x.value) && !isnanl (x.value))
      result |= 16;
  }
  { /* Unnormalized number.  */
    static memory_long_double x =
      { LDBL80_WORDS (0x4000, 0x63333333, 0x00000000) };
    if (isnanl (x.value) && !isnanl (x.value))
      result |= 32;
  }
  { /* Pseudo-Denormal.  */
    static memory_long_double x =
      { LDBL80_WORDS (0x0000, 0x83333333, 0x00000000) };
    if (isnanl (x.value) && !isnanl (x.value))
      result |= 64;
  }
#endif

  return result;
}]])],
        [gl_cv_func_isnanl_works=yes],
        [gl_cv_func_isnanl_works=no],
        [case "$host_os" in
           mingw*) # Guess yes on mingw, no on MSVC.
             AC_EGREP_CPP([Known], [
#ifdef __MINGW32__
 Known
#endif
               ],
               [gl_cv_func_isnanl_works="guessing yes"],
               [gl_cv_func_isnanl_works="guessing no"])
             ;;
           *) gl_cv_func_isnanl_works="guessing yes" ;;
         esac
        ])
    ])
])

# iswblank.m4 serial 5
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ISWBLANK],
[
  AC_REQUIRE([gl_WCTYPE_H_DEFAULTS])
  AC_REQUIRE([gl_WCTYPE_H])
  dnl Persuade glibc <wctype.h> to declare iswblank().
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_CHECK_FUNCS_ONCE([iswblank])
  AC_CHECK_DECLS([iswblank], , , [[
    #include <wchar.h>
    #include <wctype.h>
  ]])
  if test $ac_cv_func_iswblank = no; then
    HAVE_ISWBLANK=0
    if test $ac_cv_have_decl_iswblank = yes; then
      REPLACE_ISWBLANK=1
    fi
  fi
  if test $HAVE_ISWCNTRL = 0 || test $REPLACE_ISWCNTRL = 1; then
    dnl Redefine all of iswcntrl, ..., towupper in <wctype.h>.
    :
  else
    if test $HAVE_ISWBLANK = 0 || test $REPLACE_ISWBLANK = 1; then
      dnl Redefine only iswblank.
      :
    fi
  fi

])

# langinfo_h.m4 serial 12
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_LANGINFO_H],
[
  AC_REQUIRE([gl_LANGINFO_H_DEFAULTS])

  dnl Persuade glibc-2.0.6 <langinfo.h> to define CODESET.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  dnl <langinfo.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_CHECK_NEXT_HEADERS([langinfo.h])

  dnl Determine whether <langinfo.h> exists. It is missing on mingw and BeOS.
  HAVE_LANGINFO_CODESET=0
  HAVE_LANGINFO_T_FMT_AMPM=0
  HAVE_LANGINFO_ALTMON=0
  HAVE_LANGINFO_ERA=0
  HAVE_LANGINFO_YESEXPR=0
  AC_CHECK_HEADERS_ONCE([langinfo.h])
  if test $ac_cv_header_langinfo_h = yes; then
    HAVE_LANGINFO_H=1
    dnl Determine what <langinfo.h> defines.
    dnl CODESET is missing on OpenBSD 3.8.
    dnl ERA etc. are missing on OpenBSD 6.7.
    dnl T_FMT_AMPM and YESEXPR, NOEXPR are missing on IRIX 5.3.
    dnl ALTMON_* are missing on glibc 2.26 and many other systems.
    AC_CACHE_CHECK([whether langinfo.h defines CODESET],
      [gl_cv_header_langinfo_codeset],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
int a = CODESET;
]])],
         [gl_cv_header_langinfo_codeset=yes],
         [gl_cv_header_langinfo_codeset=no])
      ])
    if test $gl_cv_header_langinfo_codeset = yes; then
      HAVE_LANGINFO_CODESET=1
    fi
    AC_CACHE_CHECK([whether langinfo.h defines T_FMT_AMPM],
      [gl_cv_header_langinfo_t_fmt_ampm],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
int a = T_FMT_AMPM;
]])],
         [gl_cv_header_langinfo_t_fmt_ampm=yes],
         [gl_cv_header_langinfo_t_fmt_ampm=no])
      ])
    if test $gl_cv_header_langinfo_t_fmt_ampm = yes; then
      HAVE_LANGINFO_T_FMT_AMPM=1
    fi
    AC_CACHE_CHECK([whether langinfo.h defines ALTMON_1],
      [gl_cv_header_langinfo_altmon],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
int a = ALTMON_1;
]])],
         [gl_cv_header_langinfo_altmon=yes],
         [gl_cv_header_langinfo_altmon=no])
      ])
    if test $gl_cv_header_langinfo_altmon = yes; then
      HAVE_LANGINFO_ALTMON=1
    fi
    AC_CACHE_CHECK([whether langinfo.h defines ERA],
      [gl_cv_header_langinfo_era],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
int a = ERA;
]])],
         [gl_cv_header_langinfo_era=yes],
         [gl_cv_header_langinfo_era=no])
      ])
    if test $gl_cv_header_langinfo_era = yes; then
      HAVE_LANGINFO_ERA=1
    fi
    AC_CACHE_CHECK([whether langinfo.h defines YESEXPR],
      [gl_cv_header_langinfo_yesexpr],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
int a = YESEXPR;
]])],
         [gl_cv_header_langinfo_yesexpr=yes],
         [gl_cv_header_langinfo_yesexpr=no])
      ])
    if test $gl_cv_header_langinfo_yesexpr = yes; then
      HAVE_LANGINFO_YESEXPR=1
    fi
  else
    HAVE_LANGINFO_H=0
  fi
  AC_SUBST([HAVE_LANGINFO_H])
  AC_SUBST([HAVE_LANGINFO_CODESET])
  AC_SUBST([HAVE_LANGINFO_T_FMT_AMPM])
  AC_SUBST([HAVE_LANGINFO_ALTMON])
  AC_SUBST([HAVE_LANGINFO_ERA])
  AC_SUBST([HAVE_LANGINFO_YESEXPR])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <langinfo.h>
    ]], [nl_langinfo])
])

# gl_LANGINFO_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_LANGINFO_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_LANGINFO_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_LANGINFO_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_LANGINFO_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_NL_LANGINFO])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_LANGINFO_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_LANGINFO_H_DEFAULTS])
])

AC_DEFUN([gl_LANGINFO_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_NL_LANGINFO=1;    AC_SUBST([HAVE_NL_LANGINFO])
  REPLACE_NL_LANGINFO=0; AC_SUBST([REPLACE_NL_LANGINFO])
])

# Enable large files on systems where this is not the default.
# Enable support for files on Linux file systems with 64-bit inode numbers.

# Copyright 1992-1996, 1998-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# The following macro works around a problem in Autoconf's AC_FUNC_FSEEKO:
# It does not set _LARGEFILE_SOURCE=1 on HP-UX/ia64 32-bit, although this
# setting of _LARGEFILE_SOURCE is needed so that <stdio.h> declares fseeko
# and ftello in C++ mode as well.
AC_DEFUN([gl_SET_LARGEFILE_SOURCE],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_FUNC_FSEEKO
  case "$host_os" in
    hpux*)
      AC_DEFINE([_LARGEFILE_SOURCE], [1],
        [Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2).])
      ;;
  esac
])

# Work around a problem in Autoconf through at least 2.71 on glibc 2.34+
# with _TIME_BITS.  Also, work around a problem in autoconf <= 2.69:
# AC_SYS_LARGEFILE does not configure for large inodes on Mac OS X 10.5,
# or configures them incorrectly in some cases.
m4_version_prereq([2.70], [], [

# _AC_SYS_LARGEFILE_TEST_INCLUDES
# -------------------------------
m4_define([_AC_SYS_LARGEFILE_TEST_INCLUDES],
[#include <sys/types.h>
 /* Check that off_t can represent 2**63 - 1 correctly.
    We can't simply define LARGE_OFF_T to be 9223372036854775807,
    since some C++ compilers masquerading as C compilers
    incorrectly reject 9223372036854775807.  */
#define LARGE_OFF_T (((off_t) 1 << 31 << 31) - 1 + ((off_t) 1 << 31 << 31))
  int off_t_is_large[[(LARGE_OFF_T % 2147483629 == 721
                       && LARGE_OFF_T % 2147483647 == 1)
                      ? 1 : -1]];[]dnl
])
])# m4_version_prereq 2.70


# _AC_SYS_LARGEFILE_MACRO_VALUE(C-MACRO, VALUE,
#                               CACHE-VAR,
#                               DESCRIPTION,
#                               PROLOGUE, [FUNCTION-BODY])
# --------------------------------------------------------
m4_define([_AC_SYS_LARGEFILE_MACRO_VALUE],
[AC_CACHE_CHECK([for $1 value needed for large files], [$3],
[while :; do
  m4_ifval([$6], [AC_LINK_IFELSE], [AC_COMPILE_IFELSE])(
    [AC_LANG_PROGRAM([$5], [$6])],
    [$3=no; break])
  m4_ifval([$6], [AC_LINK_IFELSE], [AC_COMPILE_IFELSE])(
    [AC_LANG_PROGRAM([#undef $1
#define $1 $2
$5], [$6])],
    [$3=$2; break])
  $3=unknown
  break
done])
case $$3 in #(
  no | unknown) ;;
  *) AC_DEFINE_UNQUOTED([$1], [$$3], [$4]);;
esac
rm -rf conftest*[]dnl
])# _AC_SYS_LARGEFILE_MACRO_VALUE


# AC_SYS_LARGEFILE
# ----------------
# By default, many hosts won't let programs access large files;
# one must use special compiler options to get large-file access to work.
# For more details about this brain damage please see:
# http://www.unix.org/version2/whatsnew/lfs20mar.html
# Additionally, on Linux file systems with 64-bit inodes a file that happens
# to have a 64-bit inode number cannot be accessed by 32-bit applications on
# Linux x86/x86_64.  This can occur with file systems such as XFS and NFS.
AC_DEFUN([AC_SYS_LARGEFILE],
[AC_ARG_ENABLE(largefile,
               [  --disable-largefile     omit support for large files])
AS_IF([test "$enable_largefile" != no],
 [AC_CACHE_CHECK([for special C compiler options needed for large files],
    ac_cv_sys_largefile_CC,
    [ac_cv_sys_largefile_CC=no
     if test "$GCC" != yes; then
       ac_save_CC=$CC
       while :; do
         # IRIX 6.2 and later do not support large files by default,
         # so use the C compiler's -n32 option if that helps.
         AC_LANG_CONFTEST([AC_LANG_PROGRAM([_AC_SYS_LARGEFILE_TEST_INCLUDES])])
         AC_COMPILE_IFELSE([], [break])
         CC="$CC -n32"
         AC_COMPILE_IFELSE([], [ac_cv_sys_largefile_CC=' -n32'; break])
         break
       done
       CC=$ac_save_CC
       rm -f conftest.$ac_ext
    fi])
  if test "$ac_cv_sys_largefile_CC" != no; then
    CC=$CC$ac_cv_sys_largefile_CC
  fi

  _AC_SYS_LARGEFILE_MACRO_VALUE(_FILE_OFFSET_BITS, 64,
    ac_cv_sys_file_offset_bits,
    [Number of bits in a file offset, on hosts where this is settable.],
    [_AC_SYS_LARGEFILE_TEST_INCLUDES])
  AS_CASE([$ac_cv_sys_file_offset_bits],
    [unknown],
      [_AC_SYS_LARGEFILE_MACRO_VALUE([_LARGE_FILES], [1],
         [ac_cv_sys_large_files],
         [Define for large files, on AIX-style hosts.],
         [_AC_SYS_LARGEFILE_TEST_INCLUDES])],
    [64],
      [gl_YEAR2038_BODY([])])])
])# AC_SYS_LARGEFILE

# Enable large files on systems where this is implemented by Gnulib, not by the
# system headers.
# Set the variables WINDOWS_64_BIT_OFF_T, WINDOWS_64_BIT_ST_SIZE if Gnulib
# overrides ensure that off_t or 'struct size.st_size' are 64-bit, respectively.
AC_DEFUN([gl_LARGEFILE],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      dnl Native Windows.
      dnl mingw64 defines off_t to a 64-bit type already, if
      dnl _FILE_OFFSET_BITS=64, which is ensured by AC_SYS_LARGEFILE.
      AC_CACHE_CHECK([for 64-bit off_t], [gl_cv_type_off_t_64],
        [AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM(
              [[#include <sys/types.h>
                int verify_off_t_size[sizeof (off_t) >= 8 ? 1 : -1];
              ]],
              [[]])],
           [gl_cv_type_off_t_64=yes], [gl_cv_type_off_t_64=no])
        ])
      if test $gl_cv_type_off_t_64 = no; then
        WINDOWS_64_BIT_OFF_T=1
      else
        WINDOWS_64_BIT_OFF_T=0
      fi
      dnl Some mingw versions define, if _FILE_OFFSET_BITS=64, 'struct stat'
      dnl to 'struct _stat32i64' or 'struct _stat64' (depending on
      dnl _USE_32BIT_TIME_T), which has a 32-bit st_size member.
      AC_CACHE_CHECK([for 64-bit st_size], [gl_cv_member_st_size_64],
        [AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM(
              [[#include <sys/types.h>
                struct stat buf;
                int verify_st_size_size[sizeof (buf.st_size) >= 8 ? 1 : -1];
              ]],
              [[]])],
           [gl_cv_member_st_size_64=yes], [gl_cv_member_st_size_64=no])
        ])
      if test $gl_cv_member_st_size_64 = no; then
        WINDOWS_64_BIT_ST_SIZE=1
      else
        WINDOWS_64_BIT_ST_SIZE=0
      fi
      ;;
    *)
      dnl Nothing to do on gnulib's side.
      dnl A 64-bit off_t is
      dnl   - already the default on Mac OS X, FreeBSD, NetBSD, OpenBSD, IRIX,
      dnl     OSF/1, Cygwin,
      dnl   - enabled by _FILE_OFFSET_BITS=64 (ensured by AC_SYS_LARGEFILE) on
      dnl     glibc, HP-UX, Solaris,
      dnl   - enabled by _LARGE_FILES=1 (ensured by AC_SYS_LARGEFILE) on AIX,
      dnl   - impossible to achieve on Minix 3.1.8.
      WINDOWS_64_BIT_OFF_T=0
      WINDOWS_64_BIT_ST_SIZE=0
      ;;
  esac
])

# ldexpl.m4 serial 17
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_LDEXPL],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])
  AC_REQUIRE([gl_FUNC_ISNANL]) dnl for ISNANL_LIBM

  dnl Persuade glibc <math.h> to declare ldexpl().
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  dnl Check whether it's declared.
  dnl Mac OS X 10.3 has ldexpl() in libc but doesn't declare it in <math.h>.
  AC_CHECK_DECL([ldexpl], , [HAVE_DECL_LDEXPL=0], [[#include <math.h>]])

  LDEXPL_LIBM=
  if test $HAVE_DECL_LDEXPL = 1; then
    gl_CHECK_LDEXPL_NO_LIBM
    if test $gl_cv_func_ldexpl_no_libm = no; then
      AC_CACHE_CHECK([whether ldexpl() can be used with libm],
        [gl_cv_func_ldexpl_in_libm],
        [
          save_LIBS="$LIBS"
          LIBS="$LIBS -lm"
          AC_LINK_IFELSE(
            [AC_LANG_PROGRAM(
               [[#include <math.h>
                 long double x;]],
               [[return ldexpl (x, -1) > 0;]])],
            [gl_cv_func_ldexpl_in_libm=yes],
            [gl_cv_func_ldexpl_in_libm=no])
          LIBS="$save_LIBS"
        ])
      if test $gl_cv_func_ldexpl_in_libm = yes; then
        LDEXPL_LIBM=-lm
      fi
    fi
    if test $gl_cv_func_ldexpl_no_libm = yes \
       || test $gl_cv_func_ldexpl_in_libm = yes; then
      save_LIBS="$LIBS"
      LIBS="$LIBS $LDEXPL_LIBM"
      gl_FUNC_LDEXPL_WORKS
      LIBS="$save_LIBS"
      case "$gl_cv_func_ldexpl_works" in
        *yes) gl_func_ldexpl=yes ;;
        *)    gl_func_ldexpl=no; REPLACE_LDEXPL=1 ;;
      esac
    else
      gl_func_ldexpl=no
    fi
    if test $gl_func_ldexpl = yes; then
      AC_DEFINE([HAVE_LDEXPL], [1],
        [Define if the ldexpl() function is available.])
    fi
  fi
  if test $HAVE_DECL_LDEXPL = 0 || test $gl_func_ldexpl = no; then
    dnl Find libraries needed to link lib/ldexpl.c.
    if test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 1; then
      AC_REQUIRE([gl_FUNC_LDEXP])
      LDEXPL_LIBM="$LDEXP_LIBM"
    else
      LDEXPL_LIBM="$ISNANL_LIBM"
    fi
  fi
  AC_SUBST([LDEXPL_LIBM])
])

dnl Test whether ldexpl() can be used without linking with libm.
dnl Set gl_cv_func_ldexpl_no_libm to 'yes' or 'no' accordingly.
AC_DEFUN([gl_CHECK_LDEXPL_NO_LIBM],
[
  AC_CACHE_CHECK([whether ldexpl() can be used without linking with libm],
    [gl_cv_func_ldexpl_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             long double x;]],
           [[return ldexpl (x, -1) > 0;]])],
        [gl_cv_func_ldexpl_no_libm=yes],
        [gl_cv_func_ldexpl_no_libm=no])
    ])
])

dnl Test whether ldexpl() works on finite numbers (this fails on AIX 5.1
dnl and Mac OS X 10.4/PowerPC).
AC_DEFUN([gl_FUNC_LDEXPL_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether ldexpl works], [gl_cv_func_ldexpl_works],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <math.h>
extern
#ifdef __cplusplus
"C"
#endif
long double ldexpl (long double, int);
int main()
{
  int result = 0;
  {
    volatile long double x = 1.0;
    volatile long double y = ldexpl (x, -1);
    if (y != 0.5L)
      result |= 1;
  }
  {
    volatile long double x = 1.73205L;
    volatile long double y = ldexpl (x, 0);
    if (y != x)
      result |= 2;
  }
  return result;
}]])],
        [gl_cv_func_ldexpl_works=yes],
        [gl_cv_func_ldexpl_works=no],
        [
changequote(,)dnl
         case "$host_os" in
           aix | aix[3-6]*) gl_cv_func_ldexpl_works="guessing no" ;;
                            # Guess yes on native Windows.
           mingw*)          gl_cv_func_ldexpl_works="guessing yes" ;;
           *)               gl_cv_func_ldexpl_works="guessing yes" ;;
         esac
changequote([,])dnl
        ])
    ])
])

# libunistring-base.m4 serial 5
dnl Copyright (C) 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paolo Bonzini and Bruno Haible.

dnl gl_LIBUNISTRING_MODULE([VERSION], [Module])
dnl Declares that the source files of Module should be compiled, unless we
dnl are linking with libunistring and its version is >= the given VERSION.
dnl Defines an automake conditional LIBUNISTRING_COMPILE_$MODULE that is
dnl true if the source files of Module should be compiled.
dnl This macro is to be used for public libunistring API, not for
dnl undocumented API.
dnl
dnl You have to bump the VERSION argument to the next projected version
dnl number each time you make a change that affects the behaviour of the
dnl functions defined in Module (even if the sources of Module itself do not
dnl change).

AC_DEFUN([gl_LIBUNISTRING_MODULE],
[
  AC_REQUIRE([gl_LIBUNISTRING_LIB_PREPARE])
  dnl Use the variables HAVE_LIBUNISTRING, LIBUNISTRING_VERSION from
  dnl gl_LIBUNISTRING_CORE if that macro has been run.
  AM_CONDITIONAL(AS_TR_CPP([LIBUNISTRING_COMPILE_$2]),
    [gl_LIBUNISTRING_VERSION_CMP([$1])])
])

dnl gl_LIBUNISTRING_LIBHEADER([VERSION], [HeaderFile])
dnl Declares that HeaderFile should be created, unless we are linking
dnl with libunistring and its version is >= the given VERSION.
dnl HeaderFile should be relative to the lib directory and end in '.h'.
dnl Prepares for substituting LIBUNISTRING_HEADERFILE (to HeaderFile or empty).
dnl
dnl When we are linking with the already installed libunistring and its version
dnl is < VERSION, we create HeaderFile here, because we may compile functions
dnl (via gl_LIBUNISTRING_MODULE above) that are not contained in the installed
dnl version.
dnl When we are linking with the already installed libunistring and its version
dnl is > VERSION, we don't create HeaderFile here: it could cause compilation
dnl errors in other libunistring header files if some types are missing.
dnl
dnl You have to bump the VERSION argument to the next projected version
dnl number each time you make a non-comment change to the HeaderFile.

AC_DEFUN([gl_LIBUNISTRING_LIBHEADER],
[
  AC_REQUIRE([gl_LIBUNISTRING_LIB_PREPARE])
  dnl Use the variables HAVE_LIBUNISTRING, LIBUNISTRING_VERSION from
  dnl gl_LIBUNISTRING_CORE if that macro has been run.
  if gl_LIBUNISTRING_VERSION_CMP([$1]); then
    LIBUNISTRING_[]AS_TR_CPP([$2])='$2'
  else
    LIBUNISTRING_[]AS_TR_CPP([$2])=
  fi
  AC_SUBST([LIBUNISTRING_]AS_TR_CPP([$2]))
])

dnl Miscellaneous preparations/initializations.

AC_DEFUN([gl_LIBUNISTRING_LIB_PREPARE],
[
  dnl Ensure that HAVE_LIBUNISTRING is fully determined at this point.
  m4_ifdef([gl_LIBUNISTRING], [AC_REQUIRE([gl_LIBUNISTRING])])

  AC_REQUIRE([AC_PROG_AWK])

dnl Sed expressions to extract the parts of a version number.
changequote(,)
gl_libunistring_sed_extract_major='/^[0-9]/{s/^\([0-9]*\).*/\1/p;q;}
i\
0
q
'
gl_libunistring_sed_extract_minor='/^[0-9][0-9]*[.][0-9]/{s/^[0-9]*[.]\([0-9]*\).*/\1/p;q;}
i\
0
q
'
gl_libunistring_sed_extract_subminor='/^[0-9][0-9]*[.][0-9][0-9]*[.][0-9]/{s/^[0-9]*[.][0-9]*[.]\([0-9]*\).*/\1/p;q;}
i\
0
q
'
changequote([,])

  if test "$HAVE_LIBUNISTRING" = yes; then
    LIBUNISTRING_VERSION_MAJOR=`echo "$LIBUNISTRING_VERSION" | sed -n -e "$gl_libunistring_sed_extract_major"`
    LIBUNISTRING_VERSION_MINOR=`echo "$LIBUNISTRING_VERSION" | sed -n -e "$gl_libunistring_sed_extract_minor"`
    LIBUNISTRING_VERSION_SUBMINOR=`echo "$LIBUNISTRING_VERSION" | sed -n -e "$gl_libunistring_sed_extract_subminor"`
  fi
])

dnl gl_LIBUNISTRING_VERSION_CMP([VERSION])
dnl Expands to a shell statement that evaluates to true if LIBUNISTRING_VERSION
dnl is less than the VERSION argument.
AC_DEFUN([gl_LIBUNISTRING_VERSION_CMP],
[ { test "$HAVE_LIBUNISTRING" != yes \
    || {
         dnl AS_LITERAL_IF exists and works fine since autoconf-2.59 at least.
         AS_LITERAL_IF([$1],
           [dnl This is the optimized variant, that assumes the argument is a literal:
            m4_pushdef([requested_version_major],
              [gl_LIBUNISTRING_ARG_OR_ZERO(m4_bpatsubst([$1], [^\([0-9]*\).*], [\1]), [])])
            m4_pushdef([requested_version_minor],
              [gl_LIBUNISTRING_ARG_OR_ZERO(m4_bpatsubst([$1], [^[0-9]*[.]\([0-9]*\).*], [\1]), [$1])])
            m4_pushdef([requested_version_subminor],
              [gl_LIBUNISTRING_ARG_OR_ZERO(m4_bpatsubst([$1], [^[0-9]*[.][0-9]*[.]\([0-9]*\).*], [\1]), [$1])])
            test $LIBUNISTRING_VERSION_MAJOR -lt requested_version_major \
            || { test $LIBUNISTRING_VERSION_MAJOR -eq requested_version_major \
                 && { test $LIBUNISTRING_VERSION_MINOR -lt requested_version_minor \
                      || { test $LIBUNISTRING_VERSION_MINOR -eq requested_version_minor \
                           && test $LIBUNISTRING_VERSION_SUBMINOR -lt requested_version_subminor
                         }
                    }
               }
            m4_popdef([requested_version_subminor])
            m4_popdef([requested_version_minor])
            m4_popdef([requested_version_major])
           ],
           [dnl This is the unoptimized variant:
            requested_version_major=`echo '$1' | sed -n -e "$gl_libunistring_sed_extract_major"`
            requested_version_minor=`echo '$1' | sed -n -e "$gl_libunistring_sed_extract_minor"`
            requested_version_subminor=`echo '$1' | sed -n -e "$gl_libunistring_sed_extract_subminor"`
            test $LIBUNISTRING_VERSION_MAJOR -lt $requested_version_major \
            || { test $LIBUNISTRING_VERSION_MAJOR -eq $requested_version_major \
                 && { test $LIBUNISTRING_VERSION_MINOR -lt $requested_version_minor \
                      || { test $LIBUNISTRING_VERSION_MINOR -eq $requested_version_minor \
                           && test $LIBUNISTRING_VERSION_SUBMINOR -lt $requested_version_subminor
                         }
                    }
               }
           ])
       }
  }])

dnl gl_LIBUNISTRING_ARG_OR_ZERO([ARG], [ORIG]) expands to ARG if it is not the
dnl same as ORIG, otherwise to 0.
m4_define([gl_LIBUNISTRING_ARG_OR_ZERO], [m4_if([$1], [$2], [0], [$1])])

dnl Check whether limits.h has needed features.

dnl Copyright 2016-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

AC_DEFUN_ONCE([gl_LIMITS_H],
[
  gl_CHECK_NEXT_HEADERS([limits.h])

  AC_CACHE_CHECK([whether limits.h has WORD_BIT, BOOL_WIDTH etc.],
    [gl_cv_header_limits_width],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#ifndef __STDC_WANT_IEC_60559_BFP_EXT__
             #define __STDC_WANT_IEC_60559_BFP_EXT__ 1
            #endif
            #include <limits.h>
            long long llm = LLONG_MAX;
            int wb = WORD_BIT;
            int ullw = ULLONG_WIDTH;
            int bw = BOOL_WIDTH;
          ]])],
       [gl_cv_header_limits_width=yes],
       [gl_cv_header_limits_width=no])])
  if test "$gl_cv_header_limits_width" = yes; then
    LIMITS_H=
  else
    LIMITS_H=limits.h
  fi
  AC_SUBST([LIMITS_H])
  AM_CONDITIONAL([GL_GENERATE_LIMITS_H], [test -n "$LIMITS_H"])
])

dnl Unconditionally enables the replacement of <limits.h>.
AC_DEFUN([gl_REPLACE_LIMITS_H],
[
  AC_REQUIRE([gl_LIMITS_H])
  LIMITS_H='limits.h'
  AM_CONDITIONAL([GL_GENERATE_LIMITS_H], [test -n "$LIMITS_H"])
])

# localcharset.m4 serial 8
dnl Copyright (C) 2002, 2004, 2006, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_LOCALCHARSET],
[
  dnl Prerequisites of lib/localcharset.c.
  AC_REQUIRE([AM_LANGINFO_CODESET])
])

# locale-fr.m4 serial 20
dnl Copyright (C) 2003, 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl Determine the name of a french locale with traditional encoding.
AC_DEFUN([gt_LOCALE_FR],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AM_LANGINFO_CODESET])
  AC_CACHE_CHECK([for a traditional french locale], [gt_cv_locale_fr], [
    AC_LANG_CONFTEST([AC_LANG_SOURCE([[
#include <locale.h>
#include <time.h>
#if HAVE_LANGINFO_CODESET
# include <langinfo.h>
#endif
#include <stdlib.h>
#include <string.h>
struct tm t;
char buf[16];
int main () {
  /* On BeOS and Haiku, locales are not implemented in libc.  Rather, libintl
     imitates locale dependent behaviour by looking at the environment
     variables, and all locales use the UTF-8 encoding.  */
#if defined __BEOS__ || defined __HAIKU__
  return 1;
#else
  /* Check whether the given locale name is recognized by the system.  */
# if defined _WIN32 && !defined __CYGWIN__
  /* On native Windows, setlocale(category, "") looks at the system settings,
     not at the environment variables.  Also, when an encoding suffix such
     as ".65001" or ".54936" is specified, it succeeds but sets the LC_CTYPE
     category of the locale to "C".  */
  if (setlocale (LC_ALL, getenv ("LC_ALL")) == NULL
      || strcmp (setlocale (LC_CTYPE, NULL), "C") == 0)
    return 1;
# else
  if (setlocale (LC_ALL, "") == NULL) return 1;
# endif
  /* Check whether nl_langinfo(CODESET) is nonempty and not "ASCII" or "646".
     On Mac OS X 10.3.5 (Darwin 7.5) in the fr_FR locale, nl_langinfo(CODESET)
     is empty, and the behaviour of Tcl 8.4 in this locale is not useful.
     On OpenBSD 4.0, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "646". In this situation,
     some unit tests fail.
     On MirBSD 10, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "UTF-8".  */
# if HAVE_LANGINFO_CODESET
  {
    const char *cs = nl_langinfo (CODESET);
    if (cs[0] == '\0' || strcmp (cs, "ASCII") == 0 || strcmp (cs, "646") == 0
        || strcmp (cs, "UTF-8") == 0)
      return 1;
  }
# endif
# ifdef __CYGWIN__
  /* On Cygwin, avoid locale names without encoding suffix, because the
     locale_charset() function relies on the encoding suffix.  Note that
     LC_ALL is set on the command line.  */
  if (strchr (getenv ("LC_ALL"), '.') == NULL) return 1;
# endif
  /* Check whether in the abbreviation of the second month, the second
     character (should be U+00E9: LATIN SMALL LETTER E WITH ACUTE) is only
     one byte long. This excludes the UTF-8 encoding.  */
  t.tm_year = 1975 - 1900; t.tm_mon = 2 - 1; t.tm_mday = 4;
  if (strftime (buf, sizeof (buf), "%b", &t) < 3 || buf[2] != 'v') return 1;
# if !defined __BIONIC__ /* Bionic libc's 'struct lconv' is just a dummy.  */
  /* Check whether the decimal separator is a comma.
     On NetBSD 3.0 in the fr_FR.ISO8859-1 locale, localeconv()->decimal_point
     are nl_langinfo(RADIXCHAR) are both ".".  */
  if (localeconv () ->decimal_point[0] != ',') return 1;
# endif
  return 0;
#endif
}
      ]])])
    if AC_TRY_EVAL([ac_link]) && test -s conftest$ac_exeext; then
      case "$host_os" in
        # Handle native Windows specially, because there setlocale() interprets
        # "ar" as "Arabic" or "Arabic_Saudi Arabia.1256",
        # "fr" or "fra" as "French" or "French_France.1252",
        # "ge"(!) or "deu"(!) as "German" or "German_Germany.1252",
        # "ja" as "Japanese" or "Japanese_Japan.932",
        # and similar.
        mingw*)
          # Test for the native Windows locale name.
          if (LC_ALL=French_France.1252 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_fr=French_France.1252
          else
            # None found.
            gt_cv_locale_fr=none
          fi
          ;;
        *)
          # Setting LC_ALL is not enough. Need to set LC_TIME to empty, because
          # otherwise on Mac OS X 10.3.5 the LC_TIME=C from the beginning of the
          # configure script would override the LC_ALL setting. Likewise for
          # LC_CTYPE, which is also set at the beginning of the configure script.
          # Test for the usual locale name.
          if (LC_ALL=fr_FR LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_fr=fr_FR
          else
            # Test for the locale name with explicit encoding suffix.
            if (LC_ALL=fr_FR.ISO-8859-1 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
              gt_cv_locale_fr=fr_FR.ISO-8859-1
            else
              # Test for the AIX, OSF/1, FreeBSD, NetBSD, OpenBSD locale name.
              if (LC_ALL=fr_FR.ISO8859-1 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                gt_cv_locale_fr=fr_FR.ISO8859-1
              else
                # Test for the HP-UX locale name.
                if (LC_ALL=fr_FR.iso88591 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                  gt_cv_locale_fr=fr_FR.iso88591
                else
                  # Test for the Solaris 7 locale name.
                  if (LC_ALL=fr LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                    gt_cv_locale_fr=fr
                  else
                    # None found.
                    gt_cv_locale_fr=none
                  fi
                fi
              fi
            fi
          fi
          ;;
      esac
    fi
    rm -fr conftest*
  ])
  LOCALE_FR=$gt_cv_locale_fr
  AC_SUBST([LOCALE_FR])
])

dnl Determine the name of a french locale with UTF-8 encoding.
AC_DEFUN([gt_LOCALE_FR_UTF8],
[
  AC_REQUIRE([AM_LANGINFO_CODESET])
  AC_CACHE_CHECK([for a french Unicode locale], [gt_cv_locale_fr_utf8], [
    AC_LANG_CONFTEST([AC_LANG_SOURCE([[
#include <locale.h>
#include <time.h>
#if HAVE_LANGINFO_CODESET
# include <langinfo.h>
#endif
#include <stdlib.h>
#include <string.h>
struct tm t;
char buf[16];
int main () {
  /* On BeOS and Haiku, locales are not implemented in libc.  Rather, libintl
     imitates locale dependent behaviour by looking at the environment
     variables, and all locales use the UTF-8 encoding.  */
#if !(defined __BEOS__ || defined __HAIKU__)
  /* Check whether the given locale name is recognized by the system.  */
# if defined _WIN32 && !defined __CYGWIN__
  /* On native Windows, setlocale(category, "") looks at the system settings,
     not at the environment variables.  Also, when an encoding suffix such
     as ".65001" or ".54936" is specified, it succeeds but sets the LC_CTYPE
     category of the locale to "C".  */
  if (setlocale (LC_ALL, getenv ("LC_ALL")) == NULL
      || strcmp (setlocale (LC_CTYPE, NULL), "C") == 0)
    return 1;
# else
  if (setlocale (LC_ALL, "") == NULL) return 1;
# endif
  /* Check whether nl_langinfo(CODESET) is nonempty and not "ASCII" or "646".
     On Mac OS X 10.3.5 (Darwin 7.5) in the fr_FR locale, nl_langinfo(CODESET)
     is empty, and the behaviour of Tcl 8.4 in this locale is not useful.
     On OpenBSD 4.0, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "646". In this situation,
     some unit tests fail.  */
# if HAVE_LANGINFO_CODESET
  {
    const char *cs = nl_langinfo (CODESET);
    if (cs[0] == '\0' || strcmp (cs, "ASCII") == 0 || strcmp (cs, "646") == 0)
      return 1;
  }
# endif
# ifdef __CYGWIN__
  /* On Cygwin, avoid locale names without encoding suffix, because the
     locale_charset() function relies on the encoding suffix.  Note that
     LC_ALL is set on the command line.  */
  if (strchr (getenv ("LC_ALL"), '.') == NULL) return 1;
# endif
  /* Check whether in the abbreviation of the second month, the second
     character (should be U+00E9: LATIN SMALL LETTER E WITH ACUTE) is
     two bytes long, with UTF-8 encoding.  */
  t.tm_year = 1975 - 1900; t.tm_mon = 2 - 1; t.tm_mday = 4;
  if (strftime (buf, sizeof (buf), "%b", &t) < 4
      || buf[1] != (char) 0xc3 || buf[2] != (char) 0xa9 || buf[3] != 'v')
    return 1;
#endif
#if !defined __BIONIC__ /* Bionic libc's 'struct lconv' is just a dummy.  */
  /* Check whether the decimal separator is a comma.
     On NetBSD 3.0 in the fr_FR.ISO8859-1 locale, localeconv()->decimal_point
     are nl_langinfo(RADIXCHAR) are both ".".  */
  if (localeconv () ->decimal_point[0] != ',') return 1;
#endif
  return 0;
}
      ]])])
    if AC_TRY_EVAL([ac_link]) && test -s conftest$ac_exeext; then
      case "$host_os" in
        # Handle native Windows specially, because there setlocale() interprets
        # "ar" as "Arabic" or "Arabic_Saudi Arabia.1256",
        # "fr" or "fra" as "French" or "French_France.1252",
        # "ge"(!) or "deu"(!) as "German" or "German_Germany.1252",
        # "ja" as "Japanese" or "Japanese_Japan.932",
        # and similar.
        mingw*)
          # Test for the hypothetical native Windows locale name.
          if (LC_ALL=French_France.65001 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_fr_utf8=French_France.65001
          else
            # None found.
            gt_cv_locale_fr_utf8=none
          fi
          ;;
        *)
          # Setting LC_ALL is not enough. Need to set LC_TIME to empty, because
          # otherwise on Mac OS X 10.3.5 the LC_TIME=C from the beginning of the
          # configure script would override the LC_ALL setting. Likewise for
          # LC_CTYPE, which is also set at the beginning of the configure script.
          # Test for the usual locale name.
          if (LC_ALL=fr_FR LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_fr_utf8=fr_FR
          else
            # Test for the locale name with explicit encoding suffix.
            if (LC_ALL=fr_FR.UTF-8 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
              gt_cv_locale_fr_utf8=fr_FR.UTF-8
            else
              # Test for the Solaris 7 locale name.
              if (LC_ALL=fr.UTF-8 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                gt_cv_locale_fr_utf8=fr.UTF-8
              else
                # None found.
                gt_cv_locale_fr_utf8=none
              fi
            fi
          fi
          ;;
      esac
    fi
    rm -fr conftest*
  ])
  LOCALE_FR_UTF8=$gt_cv_locale_fr_utf8
  AC_SUBST([LOCALE_FR_UTF8])
])

# locale-ja.m4 serial 15
dnl Copyright (C) 2003, 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl Determine the name of a japanese locale with EUC-JP encoding.
AC_DEFUN([gt_LOCALE_JA],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AM_LANGINFO_CODESET])
  AC_CACHE_CHECK([for a traditional japanese locale], [gt_cv_locale_ja], [
    AC_LANG_CONFTEST([AC_LANG_SOURCE([[
#include <locale.h>
#include <time.h>
#if HAVE_LANGINFO_CODESET
# include <langinfo.h>
#endif
#include <stdlib.h>
#include <string.h>
struct tm t;
char buf[16];
int main ()
{
  /* On BeOS and Haiku, locales are not implemented in libc.  Rather, libintl
     imitates locale dependent behaviour by looking at the environment
     variables, and all locales use the UTF-8 encoding.  */
#if defined __BEOS__ || defined __HAIKU__
  return 1;
#else
  /* Check whether the given locale name is recognized by the system.  */
# if defined _WIN32 && !defined __CYGWIN__
  /* On native Windows, setlocale(category, "") looks at the system settings,
     not at the environment variables.  Also, when an encoding suffix such
     as ".65001" or ".54936" is specified, it succeeds but sets the LC_CTYPE
     category of the locale to "C".  */
  if (setlocale (LC_ALL, getenv ("LC_ALL")) == NULL
      || strcmp (setlocale (LC_CTYPE, NULL), "C") == 0)
    return 1;
# else
  if (setlocale (LC_ALL, "") == NULL) return 1;
# endif
  /* Check whether nl_langinfo(CODESET) is nonempty and not "ASCII" or "646".
     On Mac OS X 10.3.5 (Darwin 7.5) in the fr_FR locale, nl_langinfo(CODESET)
     is empty, and the behaviour of Tcl 8.4 in this locale is not useful.
     On OpenBSD 4.0, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "646". In this situation,
     some unit tests fail.
     On MirBSD 10, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "UTF-8".  */
# if HAVE_LANGINFO_CODESET
  {
    const char *cs = nl_langinfo (CODESET);
    if (cs[0] == '\0' || strcmp (cs, "ASCII") == 0 || strcmp (cs, "646") == 0
        || strcmp (cs, "UTF-8") == 0)
      return 1;
  }
# endif
# ifdef __CYGWIN__
  /* On Cygwin, avoid locale names without encoding suffix, because the
     locale_charset() function relies on the encoding suffix.  Note that
     LC_ALL is set on the command line.  */
  if (strchr (getenv ("LC_ALL"), '.') == NULL) return 1;
# endif
  /* Check whether MB_CUR_MAX is > 1.  This excludes the dysfunctional locales
     on Cygwin 1.5.x.  */
  if (MB_CUR_MAX == 1)
    return 1;
  /* Check whether in a month name, no byte in the range 0x80..0x9F occurs.
     This excludes the UTF-8 encoding (except on MirBSD).  */
  {
    const char *p;
    t.tm_year = 1975 - 1900; t.tm_mon = 2 - 1; t.tm_mday = 4;
    if (strftime (buf, sizeof (buf), "%B", &t) < 2) return 1;
    for (p = buf; *p != '\0'; p++)
      if ((unsigned char) *p >= 0x80 && (unsigned char) *p < 0xa0)
        return 1;
  }
  return 0;
#endif
}
      ]])])
    if AC_TRY_EVAL([ac_link]) && test -s conftest$ac_exeext; then
      case "$host_os" in
        # Handle native Windows specially, because there setlocale() interprets
        # "ar" as "Arabic" or "Arabic_Saudi Arabia.1256",
        # "fr" or "fra" as "French" or "French_France.1252",
        # "ge"(!) or "deu"(!) as "German" or "German_Germany.1252",
        # "ja" as "Japanese" or "Japanese_Japan.932",
        # and similar.
        mingw*)
          # Note that on native Windows, the Japanese locale is
          # Japanese_Japan.932, and CP932 is very different from EUC-JP, so we
          # cannot use it here.
          gt_cv_locale_ja=none
          ;;
        *)
          # Setting LC_ALL is not enough. Need to set LC_TIME to empty, because
          # otherwise on Mac OS X 10.3.5 the LC_TIME=C from the beginning of the
          # configure script would override the LC_ALL setting. Likewise for
          # LC_CTYPE, which is also set at the beginning of the configure script.
          # Test for the AIX locale name.
          if (LC_ALL=ja_JP LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_ja=ja_JP
          else
            # Test for the locale name with explicit encoding suffix.
            if (LC_ALL=ja_JP.EUC-JP LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
              gt_cv_locale_ja=ja_JP.EUC-JP
            else
              # Test for the HP-UX, OSF/1, NetBSD locale name.
              if (LC_ALL=ja_JP.eucJP LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                gt_cv_locale_ja=ja_JP.eucJP
              else
                # Test for the IRIX, FreeBSD locale name.
                if (LC_ALL=ja_JP.EUC LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                  gt_cv_locale_ja=ja_JP.EUC
                else
                  # Test for the Solaris 7 locale name.
                  if (LC_ALL=ja LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
                    gt_cv_locale_ja=ja
                  else
                    # Special test for NetBSD 1.6.
                    if test -f /usr/share/locale/ja_JP.eucJP/LC_CTYPE; then
                      gt_cv_locale_ja=ja_JP.eucJP
                    else
                      # None found.
                      gt_cv_locale_ja=none
                    fi
                  fi
                fi
              fi
            fi
          fi
          ;;
      esac
    fi
    rm -fr conftest*
  ])
  LOCALE_JA=$gt_cv_locale_ja
  AC_SUBST([LOCALE_JA])
])

# locale-zh.m4 serial 15
dnl Copyright (C) 2003, 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl Determine the name of a chinese locale with GB18030 encoding.
AC_DEFUN([gt_LOCALE_ZH_CN],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([AM_LANGINFO_CODESET])
  AC_CACHE_CHECK([for a transitional chinese locale], [gt_cv_locale_zh_CN], [
    AC_LANG_CONFTEST([AC_LANG_SOURCE([[
#include <locale.h>
#include <stdlib.h>
#include <time.h>
#if HAVE_LANGINFO_CODESET
# include <langinfo.h>
#endif
#include <stdlib.h>
#include <string.h>
struct tm t;
char buf[16];
int main ()
{
  /* On BeOS and Haiku, locales are not implemented in libc.  Rather, libintl
     imitates locale dependent behaviour by looking at the environment
     variables, and all locales use the UTF-8 encoding.  */
#if defined __BEOS__ || defined __HAIKU__
  return 1;
#else
  /* Check whether the given locale name is recognized by the system.  */
# if defined _WIN32 && !defined __CYGWIN__
  /* On native Windows, setlocale(category, "") looks at the system settings,
     not at the environment variables.  Also, when an encoding suffix such
     as ".65001" or ".54936" is specified, it succeeds but sets the LC_CTYPE
     category of the locale to "C".  */
  if (setlocale (LC_ALL, getenv ("LC_ALL")) == NULL
      || strcmp (setlocale (LC_CTYPE, NULL), "C") == 0)
    return 1;
# else
  if (setlocale (LC_ALL, "") == NULL) return 1;
# endif
  /* Check whether nl_langinfo(CODESET) is nonempty and not "ASCII" or "646".
     On Mac OS X 10.3.5 (Darwin 7.5) in the fr_FR locale, nl_langinfo(CODESET)
     is empty, and the behaviour of Tcl 8.4 in this locale is not useful.
     On OpenBSD 4.0, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "646". In this situation,
     some unit tests fail.
     On MirBSD 10, when an unsupported locale is specified, setlocale()
     succeeds but then nl_langinfo(CODESET) is "UTF-8".  */
# if HAVE_LANGINFO_CODESET
  {
    const char *cs = nl_langinfo (CODESET);
    if (cs[0] == '\0' || strcmp (cs, "ASCII") == 0 || strcmp (cs, "646") == 0
        || strcmp (cs, "UTF-8") == 0)
      return 1;
  }
# endif
# ifdef __CYGWIN__
  /* On Cygwin, avoid locale names without encoding suffix, because the
     locale_charset() function relies on the encoding suffix.  Note that
     LC_ALL is set on the command line.  */
  if (strchr (getenv ("LC_ALL"), '.') == NULL) return 1;
# endif
  /* Check whether in a month name, no byte in the range 0x80..0x9F occurs.
     This excludes the UTF-8 encoding (except on MirBSD).  */
  {
    const char *p;
    t.tm_year = 1975 - 1900; t.tm_mon = 2 - 1; t.tm_mday = 4;
    if (strftime (buf, sizeof (buf), "%B", &t) < 2) return 1;
    for (p = buf; *p != '\0'; p++)
      if ((unsigned char) *p >= 0x80 && (unsigned char) *p < 0xa0)
        return 1;
  }
  /* Check whether a typical GB18030 multibyte sequence is recognized as a
     single wide character.  This excludes the GB2312 and GBK encodings.  */
  if (mblen ("\203\062\332\066", 5) != 4)
    return 1;
  return 0;
#endif
}
      ]])])
    if AC_TRY_EVAL([ac_link]) && test -s conftest$ac_exeext; then
      case "$host_os" in
        # Handle native Windows specially, because there setlocale() interprets
        # "ar" as "Arabic" or "Arabic_Saudi Arabia.1256",
        # "fr" or "fra" as "French" or "French_France.1252",
        # "ge"(!) or "deu"(!) as "German" or "German_Germany.1252",
        # "ja" as "Japanese" or "Japanese_Japan.932",
        # and similar.
        mingw*)
          # Test for the hypothetical native Windows locale name.
          if (LC_ALL=Chinese_China.54936 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_zh_CN=Chinese_China.54936
          else
            # None found.
            gt_cv_locale_zh_CN=none
          fi
          ;;
        solaris2.8)
          # On Solaris 8, the locales zh_CN.GB18030, zh_CN.GBK, zh.GBK are
          # broken. One witness is the test case in gl_MBRTOWC_SANITYCHECK.
          # Another witness is that "LC_ALL=zh_CN.GB18030 bash -c true" dumps core.
          gt_cv_locale_zh_CN=none
          ;;
        *)
          # Setting LC_ALL is not enough. Need to set LC_TIME to empty, because
          # otherwise on Mac OS X 10.3.5 the LC_TIME=C from the beginning of the
          # configure script would override the LC_ALL setting. Likewise for
          # LC_CTYPE, which is also set at the beginning of the configure script.
          # Test for the locale name without encoding suffix.
          if (LC_ALL=zh_CN LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
            gt_cv_locale_zh_CN=zh_CN
          else
            # Test for the locale name with explicit encoding suffix.
            if (LC_ALL=zh_CN.GB18030 LC_TIME= LC_CTYPE= ./conftest; exit) 2>/dev/null; then
              gt_cv_locale_zh_CN=zh_CN.GB18030
            else
              # None found.
              gt_cv_locale_zh_CN=none
            fi
          fi
          ;;
      esac
    else
      # If there was a link error, due to mblen(), the system is so old that
      # it certainly doesn't have a chinese locale.
      gt_cv_locale_zh_CN=none
    fi
    rm -fr conftest*
  ])
  LOCALE_ZH_CN=$gt_cv_locale_zh_CN
  AC_SUBST([LOCALE_ZH_CN])
])

# locale_h.m4 serial 28
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_LOCALE_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_LOCALE_H_DEFAULTS])

  dnl Persuade glibc <locale.h> to define locale_t and the int_p_*, int_n_*
  dnl members of 'struct lconv'.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  dnl If <stddef.h> is replaced, then <locale.h> must also be replaced.
  AC_REQUIRE([gl_STDDEF_H])

  AC_REQUIRE([gl_LOCALE_T])

  dnl Solaris 11.0 defines the int_p_*, int_n_* members of 'struct lconv'
  dnl only if _LCONV_C99 is defined.
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    solaris*)
      AC_DEFINE([_LCONV_C99], [1], [Define to 1 on Solaris.])
      ;;
  esac

  AC_CACHE_CHECK([whether locale.h conforms to POSIX:2001],
    [gl_cv_header_locale_h_posix2001],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <locale.h>
            int x = LC_MESSAGES;
            int y = sizeof (((struct lconv *) 0)->decimal_point);]],
          [[]])],
       [gl_cv_header_locale_h_posix2001=yes],
       [gl_cv_header_locale_h_posix2001=no])])

  dnl Check whether 'struct lconv' is complete.
  dnl Bionic libc's 'struct lconv' is just a dummy.
  dnl On OpenBSD 4.9, HP-UX 11, IRIX 6.5, OSF/1 5.1, Solaris 9, Cygwin 1.5.x,
  dnl mingw, MSVC 9, it lacks the int_p_* and int_n_* members.
  AC_CACHE_CHECK([whether struct lconv is properly defined],
    [gl_cv_sys_struct_lconv_ok],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <locale.h>
            struct lconv l;
            int x = sizeof (l.decimal_point);
            int y = sizeof (l.int_p_cs_precedes);]],
          [[]])],
       [gl_cv_sys_struct_lconv_ok=yes],
       [gl_cv_sys_struct_lconv_ok=no])
    ])
  if test $gl_cv_sys_struct_lconv_ok = no; then
    dnl On native Windows with MSVC, merely define these member names as macros.
    dnl This avoids trouble in C++ mode.
    case "$host_os" in
      mingw*)
        AC_EGREP_CPP([Special], [
#ifdef _MSC_VER
 Special
#endif
          ],
          [],
          [REPLACE_STRUCT_LCONV=1])
        ;;
      *) REPLACE_STRUCT_LCONV=1 ;;
    esac
  fi

  dnl <locale.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_NEXT_HEADERS([locale.h])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <locale.h>
/* Some systems provide declarations in a non-standard header.  */
#if HAVE_XLOCALE_H
# include <xlocale.h>
#endif
    ]],
    [setlocale newlocale duplocale freelocale])
])

dnl Checks to determine whether the system has the locale_t type,
dnl and how to obtain it.
AC_DEFUN([gl_LOCALE_T],
[
  dnl Persuade glibc and Solaris <locale.h> to define locale_t.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  dnl Check whether use of locale_t requires inclusion of <xlocale.h>,
  dnl e.g. on Mac OS X 10.5. If <locale.h> does not define locale_t by
  dnl itself, we assume that <xlocale.h> will do so.
  AC_CACHE_CHECK([whether locale.h defines locale_t],
    [gl_cv_header_locale_has_locale_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <locale.h>
            locale_t x;]],
          [[]])],
       [gl_cv_header_locale_has_locale_t=yes],
       [gl_cv_header_locale_has_locale_t=no])
    ])

  dnl Check for <xlocale.h>.
  AC_CHECK_HEADERS_ONCE([xlocale.h])
  if test $ac_cv_header_xlocale_h = yes; then
    HAVE_XLOCALE_H=1
    if test $gl_cv_header_locale_has_locale_t = yes; then
      gl_cv_header_locale_h_needs_xlocale_h=no
    else
      gl_cv_header_locale_h_needs_xlocale_h=yes
    fi
    HAVE_LOCALE_T=1
  else
    HAVE_XLOCALE_H=0
    gl_cv_header_locale_h_needs_xlocale_h=no
    if test $gl_cv_header_locale_has_locale_t = yes; then
      HAVE_LOCALE_T=1
    else
      HAVE_LOCALE_T=0
    fi
  fi
  AC_SUBST([HAVE_XLOCALE_H])
])

# gl_LOCALE_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_LOCALE_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_LOCALE_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_LOCALE_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_LOCALE_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOCALECONV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SETLOCALE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SETLOCALE_NULL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DUPLOCALE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOCALENAME])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_LOCALE_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_LOCALE_H_DEFAULTS])
])

AC_DEFUN([gl_LOCALE_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_NEWLOCALE=1;       AC_SUBST([HAVE_NEWLOCALE])
  HAVE_DUPLOCALE=1;       AC_SUBST([HAVE_DUPLOCALE])
  HAVE_FREELOCALE=1;      AC_SUBST([HAVE_FREELOCALE])
  REPLACE_LOCALECONV=0;   AC_SUBST([REPLACE_LOCALECONV])
  REPLACE_SETLOCALE=0;    AC_SUBST([REPLACE_SETLOCALE])
  REPLACE_NEWLOCALE=0;    AC_SUBST([REPLACE_NEWLOCALE])
  REPLACE_DUPLOCALE=0;    AC_SUBST([REPLACE_DUPLOCALE])
  REPLACE_FREELOCALE=0;   AC_SUBST([REPLACE_FREELOCALE])
  REPLACE_STRUCT_LCONV=0; AC_SUBST([REPLACE_STRUCT_LCONV])
  LOCALENAME_ENHANCE_LOCALE_FUNCS=0; AC_SUBST([LOCALENAME_ENHANCE_LOCALE_FUNCS])
])

# localeconv.m4 serial 1
dnl Copyright (C) 2012-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_LOCALECONV],
[
  AC_REQUIRE([gl_LOCALE_H_DEFAULTS])
  AC_REQUIRE([gl_LOCALE_H])

  if test $REPLACE_STRUCT_LCONV = 1; then
    REPLACE_LOCALECONV=1
  fi
])

# Prerequisites of lib/localeconv.c.
AC_DEFUN([gl_PREREQ_LOCALECONV],
[
  AC_CHECK_MEMBERS([struct lconv.decimal_point], [], [],
    [[#include <locale.h>]])
])

# lock.m4 serial 14
dnl Copyright (C) 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN([gl_LOCK],
[
  AC_REQUIRE([gl_THREADLIB])
  if test "$gl_threads_api" = posix; then
    # OSF/1 4.0 and Mac OS X 10.1 lack the pthread_rwlock_t type and the
    # pthread_rwlock_* functions.
    has_rwlock=false
    AC_CHECK_TYPE([pthread_rwlock_t],
      [has_rwlock=true
       AC_DEFINE([HAVE_PTHREAD_RWLOCK], [1],
         [Define if the POSIX multithreading library has read/write locks.])],
      [],
      [#include <pthread.h>])
    if $has_rwlock; then
      gl_PTHREAD_RWLOCK_RDLOCK_PREFER_WRITER
    fi
    # glibc defines PTHREAD_MUTEX_RECURSIVE as enum, not as a macro.
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM(
        [[#include <pthread.h>]],
        [[
#if __FreeBSD__ == 4
error "No, in FreeBSD 4.0 recursive mutexes actually don't work."
#elif (defined __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ \
       && __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ < 1070)
error "No, in Mac OS X < 10.7 recursive mutexes actually don't work."
#else
int x = (int)PTHREAD_MUTEX_RECURSIVE;
return !x;
#endif
        ]])],
      [AC_DEFINE([HAVE_PTHREAD_MUTEX_RECURSIVE], [1],
         [Define if the <pthread.h> defines PTHREAD_MUTEX_RECURSIVE.])])
  fi
  gl_PREREQ_LOCK
])

# Prerequisites of lib/glthread/lock.c.
AC_DEFUN([gl_PREREQ_LOCK], [:])

# serial 33

# Copyright (C) 1997-2001, 2003-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Jim Meyering.

AC_DEFUN([gl_FUNC_LSTAT],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])
  dnl If lstat does not exist, the replacement <sys/stat.h> does
  dnl "#define lstat stat", and lstat.c is a no-op.
  AC_CHECK_FUNCS_ONCE([lstat])
  if test $ac_cv_func_lstat = yes; then
    AC_REQUIRE([gl_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK])
    case $host_os,$gl_cv_func_lstat_dereferences_slashed_symlink in
      solaris* | *no)
        REPLACE_LSTAT=1
        ;;
    esac
  else
    HAVE_LSTAT=0
  fi
])

# Prerequisites of lib/lstat.c.
AC_DEFUN([gl_PREREQ_LSTAT], [:])

AC_DEFUN([gl_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK],
[
  dnl We don't use AC_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK any more, because it
  dnl is no longer maintained in Autoconf and because it invokes AC_LIBOBJ.
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether lstat correctly handles trailing slash],
    [gl_cv_func_lstat_dereferences_slashed_symlink],
    [rm -f conftest.sym conftest.file
     echo >conftest.file
     AC_RUN_IFELSE(
       [AC_LANG_PROGRAM(
          [AC_INCLUDES_DEFAULT],
          [[struct stat sbuf;
            if (symlink ("conftest.file", "conftest.sym") != 0)
              return 1;
            /* Linux will dereference the symlink and fail, as required by
               POSIX.  That is better in the sense that it means we will not
               have to compile and use the lstat wrapper.  */
            return lstat ("conftest.sym/", &sbuf) == 0;
          ]])],
       [gl_cv_func_lstat_dereferences_slashed_symlink=yes],
       [gl_cv_func_lstat_dereferences_slashed_symlink=no],
       [case "$host_os" in
          linux-* | linux)
            # Guess yes on Linux systems.
            gl_cv_func_lstat_dereferences_slashed_symlink="guessing yes" ;;
          *-gnu* | gnu*)
            # Guess yes on glibc systems.
            gl_cv_func_lstat_dereferences_slashed_symlink="guessing yes" ;;
          mingw*)
            # Guess no on native Windows.
            gl_cv_func_lstat_dereferences_slashed_symlink="guessing no" ;;
          *)
            # If we don't know, obey --enable-cross-guesses.
            gl_cv_func_lstat_dereferences_slashed_symlink="$gl_cross_guess_normal" ;;
        esac
       ])
     rm -f conftest.sym conftest.file
    ])
  case "$gl_cv_func_lstat_dereferences_slashed_symlink" in
    *yes)
      AC_DEFINE_UNQUOTED([LSTAT_FOLLOWS_SLASHED_SYMLINK], [1],
        [Define to 1 if 'lstat' dereferences a symlink specified
         with a trailing slash.])
      ;;
  esac
])

# malloc.m4 serial 27
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# This is adapted with modifications from upstream Autoconf here:
# https://git.savannah.gnu.org/cgit/autoconf.git/tree/lib/autoconf/functions.m4?id=v2.70#n949
AC_DEFUN([_AC_FUNC_MALLOC_IF],
[
  AC_REQUIRE([AC_CANONICAL_HOST])dnl for cross-compiles
  AC_CACHE_CHECK([whether malloc (0) returns nonnull],
    [ac_cv_func_malloc_0_nonnull],
    [AC_RUN_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdlib.h>
          ]],
          [[void *p = malloc (0);
            int result = !p;
            free (p);
            return result;]])
       ],
       [ac_cv_func_malloc_0_nonnull=yes],
       [ac_cv_func_malloc_0_nonnull=no],
       [case "$host_os" in
          # Guess yes on platforms where we know the result.
          *-gnu* | freebsd* | netbsd* | openbsd* | bitrig* \
          | gnu* | *-musl* | midnightbsd* \
          | hpux* | solaris* | cygwin* | mingw* | msys* )
            ac_cv_func_malloc_0_nonnull="guessing yes" ;;
          # If we don't know, obey --enable-cross-guesses.
          *) ac_cv_func_malloc_0_nonnull="$gl_cross_guess_normal" ;;
        esac
       ])
    ])
  AS_CASE([$ac_cv_func_malloc_0_nonnull], [*yes], [$1], [$2])
])# _AC_FUNC_MALLOC_IF

# gl_FUNC_MALLOC_GNU
# ------------------
# Replace malloc if it is not compatible with GNU libc.
AC_DEFUN([gl_FUNC_MALLOC_GNU],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_MALLOC_POSIX])
  if test $REPLACE_MALLOC = 0; then
    _AC_FUNC_MALLOC_IF([], [REPLACE_MALLOC=1])
  fi
])

# gl_FUNC_MALLOC_PTRDIFF
# ----------------------
# Test whether malloc (N) reliably fails when N exceeds PTRDIFF_MAX,
# and replace malloc otherwise.
AC_DEFUN([gl_FUNC_MALLOC_PTRDIFF],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_MALLOC_PTRDIFF])
  test "$gl_cv_malloc_ptrdiff" = yes || REPLACE_MALLOC=1
])

# Test whether malloc, realloc, calloc refuse to create objects
# larger than what can be expressed in ptrdiff_t.
# Set gl_cv_func_malloc_gnu to yes or no accordingly.
AC_DEFUN([gl_CHECK_MALLOC_PTRDIFF],
[
  AC_CACHE_CHECK([whether malloc is ptrdiff_t safe],
    [gl_cv_malloc_ptrdiff],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdint.h>
          ]],
          [[/* 64-bit ptrdiff_t is so wide that no practical platform
               can exceed it.  */
            #define WIDE_PTRDIFF (PTRDIFF_MAX >> 31 >> 31 != 0)

            /* On rare machines where size_t fits in ptrdiff_t there
               is no problem.  */
            #define NARROW_SIZE (SIZE_MAX <= PTRDIFF_MAX)

            /* glibc 2.30 and later malloc refuses to exceed ptrdiff_t
               bounds even on 32-bit platforms.  We don't know which
               non-glibc systems are safe.  */
            #define KNOWN_SAFE (2 < __GLIBC__ + (30 <= __GLIBC_MINOR__))

            #if WIDE_PTRDIFF || NARROW_SIZE || KNOWN_SAFE
              return 0;
            #else
              #error "malloc might not be ptrdiff_t safe"
              syntax error
            #endif
          ]])],
       [gl_cv_malloc_ptrdiff=yes],
       [gl_cv_malloc_ptrdiff=no])
    ])
])

# gl_FUNC_MALLOC_POSIX
# --------------------
# Test whether 'malloc' is POSIX compliant (sets errno to ENOMEM when it
# fails, and doesn't mess up with ptrdiff_t overflow), and replace
# malloc if it is not.
AC_DEFUN([gl_FUNC_MALLOC_POSIX],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_MALLOC_PTRDIFF])
  AC_REQUIRE([gl_CHECK_MALLOC_POSIX])
  if test "$gl_cv_func_malloc_posix" = yes; then
    AC_DEFINE([HAVE_MALLOC_POSIX], [1],
      [Define if malloc, realloc, and calloc set errno on allocation failure.])
  else
    REPLACE_MALLOC=1
  fi
])

# Test whether malloc, realloc, calloc set errno to ENOMEM on failure.
# Set gl_cv_func_malloc_posix to yes or no accordingly.
AC_DEFUN([gl_CHECK_MALLOC_POSIX],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether malloc, realloc, calloc set errno on failure],
    [gl_cv_func_malloc_posix],
    [
      dnl It is too dangerous to try to allocate a large amount of memory:
      dnl some systems go to their knees when you do that. So assume that
      dnl all Unix implementations of the function set errno on failure,
      dnl except on those platforms where we have seen 'test-malloc-gnu',
      dnl 'test-realloc-gnu', 'test-calloc-gnu' fail.
      case "$host_os" in
        mingw*)
          gl_cv_func_malloc_posix=no ;;
        irix* | solaris*)
          dnl On IRIX 6.5, the three functions return NULL with errno unset
          dnl when the argument is larger than PTRDIFF_MAX.
          dnl On Solaris 11.3, the three functions return NULL with errno set
          dnl to EAGAIN, not ENOMEM, when the argument is larger than
          dnl PTRDIFF_MAX.
          dnl Here is a test program:
m4_divert_push([KILL])
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#define ptrdiff_t long
#ifndef PTRDIFF_MAX
# define PTRDIFF_MAX ((ptrdiff_t) ((1UL << (8 * sizeof (ptrdiff_t) - 1)) - 1))
#endif

int main ()
{
  void *p;

  fprintf (stderr, "PTRDIFF_MAX = %lu\n", (unsigned long) PTRDIFF_MAX);

  errno = 0;
  p = malloc ((unsigned long) PTRDIFF_MAX + 1);
  fprintf (stderr, "p=%p errno=%d\n", p, errno);

  errno = 0;
  p = calloc (PTRDIFF_MAX / 2 + 1, 2);
  fprintf (stderr, "p=%p errno=%d\n", p, errno);

  errno = 0;
  p = realloc (NULL, (unsigned long) PTRDIFF_MAX + 1);
  fprintf (stderr, "p=%p errno=%d\n", p, errno);

  return 0;
}
m4_divert_pop([KILL])
          gl_cv_func_malloc_posix=no ;;
        *)
          gl_cv_func_malloc_posix=yes ;;
      esac
    ])
])

# malloca.m4 serial 2
dnl Copyright (C) 2003-2004, 2006-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_MALLOCA],
[
  dnl Use the autoconf tests for alloca(), but not the AC_SUBSTed variables
  dnl @ALLOCA@ and @LTALLOCA@.
  dnl gl_FUNC_ALLOCA   dnl Already brought in by the module dependencies.
  AC_REQUIRE([gl_EEMALLOC])
])

# math_h.m4 serial 125
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_MATH_H],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  gl_CHECK_NEXT_HEADERS([math.h])

  AC_CACHE_CHECK([whether NAN macro works], [gl_cv_header_math_nan_works],
    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <math.h>]],
      [[/* Solaris 10 has a broken definition of NAN.  Other platforms
        fail to provide NAN, or provide it only in C99 mode; this
        test only needs to fail when NAN is provided but wrong.  */
         float f = 1.0f;
#ifdef NAN
         f = NAN;
#endif
         return f == 0;]])],
      [gl_cv_header_math_nan_works=yes],
      [gl_cv_header_math_nan_works=no])])
  if test $gl_cv_header_math_nan_works = no; then
    REPLACE_NAN=1
  fi
  AC_CACHE_CHECK([whether HUGE_VAL works], [gl_cv_header_math_huge_val_works],
    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <math.h>]],
      [[/* Solaris 10 has a broken definition of HUGE_VAL.  */
         double d = HUGE_VAL;
         return d == 0;]])],
      [gl_cv_header_math_huge_val_works=yes],
      [gl_cv_header_math_huge_val_works=no])])
  if test $gl_cv_header_math_huge_val_works = no; then
    REPLACE_HUGE_VAL=1
  fi

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <math.h>]],
    [acosf acosl asinf asinl atanf atanl
     cbrt cbrtf cbrtl ceilf ceill copysign copysignf copysignl cosf cosl coshf
     expf expl exp2 exp2f exp2l expm1 expm1f expm1l
     fabsf fabsl floorf floorl fma fmaf fmal
     fmod fmodf fmodl frexpf frexpl hypotf hypotl
     ilogb ilogbf ilogbl
     ldexpf ldexpl
     log logf logl log10 log10f log10l log1p log1pf log1pl log2 log2f log2l
     logb logbf logbl
     modf modff modfl powf
     remainder remainderf remainderl
     rint rintf rintl round roundf roundl sinf sinl sinhf sqrtf sqrtl
     tanf tanl tanhf trunc truncf truncl])
])

# gl_MATH_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_MATH_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_MATH_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_MATH_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_MATH_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ACOSF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ACOSL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ASINF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ASINL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ATANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ATANL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ATAN2F])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CBRT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CBRTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CBRTL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CEIL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CEILF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CEILL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COPYSIGN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COPYSIGNF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COPYSIGNL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COSF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COSL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COSHF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXP2])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXP2F])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXP2L])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPM1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPM1F])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPM1L])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FABSF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FABSL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FLOOR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FLOORF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FLOORL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMA])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMAF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMAL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMOD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMODF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FMODL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREXPF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREXP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREXPL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_HYPOT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_HYPOTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_HYPOTL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ILOGB])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ILOGBF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ILOGBL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISFINITE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISINF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISNAN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISNANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISNAND])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISNANL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LDEXPF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LDEXPL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOGF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOGL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG10])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG10F])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG10L])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG1P])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG1PF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG1PL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG2])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG2F])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOG2L])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOGB])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOGBF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOGBL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MODF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MODFF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MODFL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_POWF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REMAINDER])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REMAINDERF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REMAINDERL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RINT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RINTL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ROUND])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ROUNDF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ROUNDL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGNBIT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SINF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SINL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SINHF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SQRTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SQRTL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TANL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TANHF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TRUNC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TRUNCF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TRUNCL])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_J0], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_J1], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_JN], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_Y0], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_Y1], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_YN], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_MATH_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
])

AC_DEFUN([gl_MATH_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_ACOSF=1;                     AC_SUBST([HAVE_ACOSF])
  HAVE_ACOSL=1;                     AC_SUBST([HAVE_ACOSL])
  HAVE_ASINF=1;                     AC_SUBST([HAVE_ASINF])
  HAVE_ASINL=1;                     AC_SUBST([HAVE_ASINL])
  HAVE_ATANF=1;                     AC_SUBST([HAVE_ATANF])
  HAVE_ATANL=1;                     AC_SUBST([HAVE_ATANL])
  HAVE_ATAN2F=1;                    AC_SUBST([HAVE_ATAN2F])
  HAVE_CBRT=1;                      AC_SUBST([HAVE_CBRT])
  HAVE_CBRTF=1;                     AC_SUBST([HAVE_CBRTF])
  HAVE_CBRTL=1;                     AC_SUBST([HAVE_CBRTL])
  HAVE_COPYSIGN=1;                  AC_SUBST([HAVE_COPYSIGN])
  HAVE_COPYSIGNL=1;                 AC_SUBST([HAVE_COPYSIGNL])
  HAVE_COSF=1;                      AC_SUBST([HAVE_COSF])
  HAVE_COSL=1;                      AC_SUBST([HAVE_COSL])
  HAVE_COSHF=1;                     AC_SUBST([HAVE_COSHF])
  HAVE_EXPF=1;                      AC_SUBST([HAVE_EXPF])
  HAVE_EXPL=1;                      AC_SUBST([HAVE_EXPL])
  HAVE_EXPM1=1;                     AC_SUBST([HAVE_EXPM1])
  HAVE_EXPM1F=1;                    AC_SUBST([HAVE_EXPM1F])
  HAVE_FABSF=1;                     AC_SUBST([HAVE_FABSF])
  HAVE_FABSL=1;                     AC_SUBST([HAVE_FABSL])
  HAVE_FMA=1;                       AC_SUBST([HAVE_FMA])
  HAVE_FMAF=1;                      AC_SUBST([HAVE_FMAF])
  HAVE_FMAL=1;                      AC_SUBST([HAVE_FMAL])
  HAVE_FMODF=1;                     AC_SUBST([HAVE_FMODF])
  HAVE_FMODL=1;                     AC_SUBST([HAVE_FMODL])
  HAVE_FREXPF=1;                    AC_SUBST([HAVE_FREXPF])
  HAVE_HYPOTF=1;                    AC_SUBST([HAVE_HYPOTF])
  HAVE_HYPOTL=1;                    AC_SUBST([HAVE_HYPOTL])
  HAVE_ILOGB=1;                     AC_SUBST([HAVE_ILOGB])
  HAVE_ILOGBF=1;                    AC_SUBST([HAVE_ILOGBF])
  HAVE_ILOGBL=1;                    AC_SUBST([HAVE_ILOGBL])
  HAVE_ISNANF=1;                    AC_SUBST([HAVE_ISNANF])
  HAVE_ISNAND=1;                    AC_SUBST([HAVE_ISNAND])
  HAVE_ISNANL=1;                    AC_SUBST([HAVE_ISNANL])
  HAVE_LDEXPF=1;                    AC_SUBST([HAVE_LDEXPF])
  HAVE_LOGF=1;                      AC_SUBST([HAVE_LOGF])
  HAVE_LOGL=1;                      AC_SUBST([HAVE_LOGL])
  HAVE_LOG10F=1;                    AC_SUBST([HAVE_LOG10F])
  HAVE_LOG10L=1;                    AC_SUBST([HAVE_LOG10L])
  HAVE_LOG1P=1;                     AC_SUBST([HAVE_LOG1P])
  HAVE_LOG1PF=1;                    AC_SUBST([HAVE_LOG1PF])
  HAVE_LOG1PL=1;                    AC_SUBST([HAVE_LOG1PL])
  HAVE_LOGBF=1;                     AC_SUBST([HAVE_LOGBF])
  HAVE_LOGBL=1;                     AC_SUBST([HAVE_LOGBL])
  HAVE_MODFF=1;                     AC_SUBST([HAVE_MODFF])
  HAVE_MODFL=1;                     AC_SUBST([HAVE_MODFL])
  HAVE_POWF=1;                      AC_SUBST([HAVE_POWF])
  HAVE_REMAINDER=1;                 AC_SUBST([HAVE_REMAINDER])
  HAVE_REMAINDERF=1;                AC_SUBST([HAVE_REMAINDERF])
  HAVE_RINT=1;                      AC_SUBST([HAVE_RINT])
  HAVE_RINTL=1;                     AC_SUBST([HAVE_RINTL])
  HAVE_SINF=1;                      AC_SUBST([HAVE_SINF])
  HAVE_SINL=1;                      AC_SUBST([HAVE_SINL])
  HAVE_SINHF=1;                     AC_SUBST([HAVE_SINHF])
  HAVE_SQRTF=1;                     AC_SUBST([HAVE_SQRTF])
  HAVE_SQRTL=1;                     AC_SUBST([HAVE_SQRTL])
  HAVE_TANF=1;                      AC_SUBST([HAVE_TANF])
  HAVE_TANL=1;                      AC_SUBST([HAVE_TANL])
  HAVE_TANHF=1;                     AC_SUBST([HAVE_TANHF])
  HAVE_DECL_ACOSL=1;                AC_SUBST([HAVE_DECL_ACOSL])
  HAVE_DECL_ASINL=1;                AC_SUBST([HAVE_DECL_ASINL])
  HAVE_DECL_ATANL=1;                AC_SUBST([HAVE_DECL_ATANL])
  HAVE_DECL_CBRTF=1;                AC_SUBST([HAVE_DECL_CBRTF])
  HAVE_DECL_CBRTL=1;                AC_SUBST([HAVE_DECL_CBRTL])
  HAVE_DECL_CEILF=1;                AC_SUBST([HAVE_DECL_CEILF])
  HAVE_DECL_CEILL=1;                AC_SUBST([HAVE_DECL_CEILL])
  HAVE_DECL_COPYSIGNF=1;            AC_SUBST([HAVE_DECL_COPYSIGNF])
  HAVE_DECL_COSL=1;                 AC_SUBST([HAVE_DECL_COSL])
  HAVE_DECL_EXPL=1;                 AC_SUBST([HAVE_DECL_EXPL])
  HAVE_DECL_EXP2=1;                 AC_SUBST([HAVE_DECL_EXP2])
  HAVE_DECL_EXP2F=1;                AC_SUBST([HAVE_DECL_EXP2F])
  HAVE_DECL_EXP2L=1;                AC_SUBST([HAVE_DECL_EXP2L])
  HAVE_DECL_EXPM1L=1;               AC_SUBST([HAVE_DECL_EXPM1L])
  HAVE_DECL_FLOORF=1;               AC_SUBST([HAVE_DECL_FLOORF])
  HAVE_DECL_FLOORL=1;               AC_SUBST([HAVE_DECL_FLOORL])
  HAVE_DECL_FREXPL=1;               AC_SUBST([HAVE_DECL_FREXPL])
  HAVE_DECL_LDEXPL=1;               AC_SUBST([HAVE_DECL_LDEXPL])
  HAVE_DECL_LOGL=1;                 AC_SUBST([HAVE_DECL_LOGL])
  HAVE_DECL_LOG10L=1;               AC_SUBST([HAVE_DECL_LOG10L])
  HAVE_DECL_LOG2=1;                 AC_SUBST([HAVE_DECL_LOG2])
  HAVE_DECL_LOG2F=1;                AC_SUBST([HAVE_DECL_LOG2F])
  HAVE_DECL_LOG2L=1;                AC_SUBST([HAVE_DECL_LOG2L])
  HAVE_DECL_LOGB=1;                 AC_SUBST([HAVE_DECL_LOGB])
  HAVE_DECL_REMAINDER=1;            AC_SUBST([HAVE_DECL_REMAINDER])
  HAVE_DECL_REMAINDERL=1;           AC_SUBST([HAVE_DECL_REMAINDERL])
  HAVE_DECL_RINTF=1;                AC_SUBST([HAVE_DECL_RINTF])
  HAVE_DECL_ROUND=1;                AC_SUBST([HAVE_DECL_ROUND])
  HAVE_DECL_ROUNDF=1;               AC_SUBST([HAVE_DECL_ROUNDF])
  HAVE_DECL_ROUNDL=1;               AC_SUBST([HAVE_DECL_ROUNDL])
  HAVE_DECL_SINL=1;                 AC_SUBST([HAVE_DECL_SINL])
  HAVE_DECL_SQRTL=1;                AC_SUBST([HAVE_DECL_SQRTL])
  HAVE_DECL_TANL=1;                 AC_SUBST([HAVE_DECL_TANL])
  HAVE_DECL_TRUNC=1;                AC_SUBST([HAVE_DECL_TRUNC])
  HAVE_DECL_TRUNCF=1;               AC_SUBST([HAVE_DECL_TRUNCF])
  HAVE_DECL_TRUNCL=1;               AC_SUBST([HAVE_DECL_TRUNCL])
  REPLACE_ACOSF=0;                  AC_SUBST([REPLACE_ACOSF])
  REPLACE_ASINF=0;                  AC_SUBST([REPLACE_ASINF])
  REPLACE_ATANF=0;                  AC_SUBST([REPLACE_ATANF])
  REPLACE_ATAN2F=0;                 AC_SUBST([REPLACE_ATAN2F])
  REPLACE_CBRTF=0;                  AC_SUBST([REPLACE_CBRTF])
  REPLACE_CBRTL=0;                  AC_SUBST([REPLACE_CBRTL])
  REPLACE_CEIL=0;                   AC_SUBST([REPLACE_CEIL])
  REPLACE_CEILF=0;                  AC_SUBST([REPLACE_CEILF])
  REPLACE_CEILL=0;                  AC_SUBST([REPLACE_CEILL])
  REPLACE_COSF=0;                   AC_SUBST([REPLACE_COSF])
  REPLACE_COSHF=0;                  AC_SUBST([REPLACE_COSHF])
  REPLACE_EXPF=0;                   AC_SUBST([REPLACE_EXPF])
  REPLACE_EXPL=0;                   AC_SUBST([REPLACE_EXPL])
  REPLACE_EXPM1=0;                  AC_SUBST([REPLACE_EXPM1])
  REPLACE_EXPM1F=0;                 AC_SUBST([REPLACE_EXPM1F])
  REPLACE_EXPM1L=0;                 AC_SUBST([REPLACE_EXPM1L])
  REPLACE_EXP2=0;                   AC_SUBST([REPLACE_EXP2])
  REPLACE_EXP2L=0;                  AC_SUBST([REPLACE_EXP2L])
  REPLACE_FABSL=0;                  AC_SUBST([REPLACE_FABSL])
  REPLACE_FLOOR=0;                  AC_SUBST([REPLACE_FLOOR])
  REPLACE_FLOORF=0;                 AC_SUBST([REPLACE_FLOORF])
  REPLACE_FLOORL=0;                 AC_SUBST([REPLACE_FLOORL])
  REPLACE_FMA=0;                    AC_SUBST([REPLACE_FMA])
  REPLACE_FMAF=0;                   AC_SUBST([REPLACE_FMAF])
  REPLACE_FMAL=0;                   AC_SUBST([REPLACE_FMAL])
  REPLACE_FMOD=0;                   AC_SUBST([REPLACE_FMOD])
  REPLACE_FMODF=0;                  AC_SUBST([REPLACE_FMODF])
  REPLACE_FMODL=0;                  AC_SUBST([REPLACE_FMODL])
  REPLACE_FREXPF=0;                 AC_SUBST([REPLACE_FREXPF])
  REPLACE_FREXP=0;                  AC_SUBST([REPLACE_FREXP])
  REPLACE_FREXPL=0;                 AC_SUBST([REPLACE_FREXPL])
  REPLACE_HUGE_VAL=0;               AC_SUBST([REPLACE_HUGE_VAL])
  REPLACE_HYPOT=0;                  AC_SUBST([REPLACE_HYPOT])
  REPLACE_HYPOTF=0;                 AC_SUBST([REPLACE_HYPOTF])
  REPLACE_HYPOTL=0;                 AC_SUBST([REPLACE_HYPOTL])
  REPLACE_ILOGB=0;                  AC_SUBST([REPLACE_ILOGB])
  REPLACE_ILOGBF=0;                 AC_SUBST([REPLACE_ILOGBF])
  REPLACE_ILOGBL=0;                 AC_SUBST([REPLACE_ILOGBL])
  REPLACE_ISFINITE=0;               AC_SUBST([REPLACE_ISFINITE])
  REPLACE_ISINF=0;                  AC_SUBST([REPLACE_ISINF])
  REPLACE_ISNAN=0;                  AC_SUBST([REPLACE_ISNAN])
  REPLACE_LDEXPL=0;                 AC_SUBST([REPLACE_LDEXPL])
  REPLACE_LOG=0;                    AC_SUBST([REPLACE_LOG])
  REPLACE_LOGF=0;                   AC_SUBST([REPLACE_LOGF])
  REPLACE_LOGL=0;                   AC_SUBST([REPLACE_LOGL])
  REPLACE_LOG10=0;                  AC_SUBST([REPLACE_LOG10])
  REPLACE_LOG10F=0;                 AC_SUBST([REPLACE_LOG10F])
  REPLACE_LOG10L=0;                 AC_SUBST([REPLACE_LOG10L])
  REPLACE_LOG1P=0;                  AC_SUBST([REPLACE_LOG1P])
  REPLACE_LOG1PF=0;                 AC_SUBST([REPLACE_LOG1PF])
  REPLACE_LOG1PL=0;                 AC_SUBST([REPLACE_LOG1PL])
  REPLACE_LOG2=0;                   AC_SUBST([REPLACE_LOG2])
  REPLACE_LOG2F=0;                  AC_SUBST([REPLACE_LOG2F])
  REPLACE_LOG2L=0;                  AC_SUBST([REPLACE_LOG2L])
  REPLACE_LOGB=0;                   AC_SUBST([REPLACE_LOGB])
  REPLACE_LOGBF=0;                  AC_SUBST([REPLACE_LOGBF])
  REPLACE_LOGBL=0;                  AC_SUBST([REPLACE_LOGBL])
  REPLACE_MODF=0;                   AC_SUBST([REPLACE_MODF])
  REPLACE_MODFF=0;                  AC_SUBST([REPLACE_MODFF])
  REPLACE_MODFL=0;                  AC_SUBST([REPLACE_MODFL])
  REPLACE_NAN=0;                    AC_SUBST([REPLACE_NAN])
  REPLACE_REMAINDER=0;              AC_SUBST([REPLACE_REMAINDER])
  REPLACE_REMAINDERF=0;             AC_SUBST([REPLACE_REMAINDERF])
  REPLACE_REMAINDERL=0;             AC_SUBST([REPLACE_REMAINDERL])
  REPLACE_RINTL=0;                  AC_SUBST([REPLACE_RINTL])
  REPLACE_ROUND=0;                  AC_SUBST([REPLACE_ROUND])
  REPLACE_ROUNDF=0;                 AC_SUBST([REPLACE_ROUNDF])
  REPLACE_ROUNDL=0;                 AC_SUBST([REPLACE_ROUNDL])
  REPLACE_SIGNBIT=0;                AC_SUBST([REPLACE_SIGNBIT])
  REPLACE_SIGNBIT_USING_BUILTINS=0; AC_SUBST([REPLACE_SIGNBIT_USING_BUILTINS])
  REPLACE_SINF=0;                   AC_SUBST([REPLACE_SINF])
  REPLACE_SINHF=0;                  AC_SUBST([REPLACE_SINHF])
  REPLACE_SQRTF=0;                  AC_SUBST([REPLACE_SQRTF])
  REPLACE_SQRTL=0;                  AC_SUBST([REPLACE_SQRTL])
  REPLACE_TANF=0;                   AC_SUBST([REPLACE_TANF])
  REPLACE_TANHF=0;                  AC_SUBST([REPLACE_TANHF])
  REPLACE_TRUNC=0;                  AC_SUBST([REPLACE_TRUNC])
  REPLACE_TRUNCF=0;                 AC_SUBST([REPLACE_TRUNCF])
  REPLACE_TRUNCL=0;                 AC_SUBST([REPLACE_TRUNCL])
])

# gl_LONG_DOUBLE_VS_DOUBLE
# determines whether 'long double' and 'double' have the same representation.
# Sets variable HAVE_SAME_LONG_DOUBLE_AS_DOUBLE to 0 or 1, and defines
# HAVE_SAME_LONG_DOUBLE_AS_DOUBLE accordingly.
# The currently known platforms where this is the case are:
# Linux/HPPA, Minix 3.1.8, AIX 5, AIX 6 and 7 with xlc, MSVC 9.
AC_DEFUN([gl_LONG_DOUBLE_VS_DOUBLE],
[
  AC_CACHE_CHECK([whether long double and double are the same],
    [gl_cv_long_double_equals_double],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM([[#include <float.h>]],
          [[typedef int check[sizeof (long double) == sizeof (double)
                              && LDBL_MANT_DIG == DBL_MANT_DIG
                              && LDBL_MAX_EXP == DBL_MAX_EXP
                              && LDBL_MIN_EXP == DBL_MIN_EXP
                              ? 1 : -1];
          ]])],
       [gl_cv_long_double_equals_double=yes],
       [gl_cv_long_double_equals_double=no])
    ])
  if test $gl_cv_long_double_equals_double = yes; then
    AC_DEFINE([HAVE_SAME_LONG_DOUBLE_AS_DOUBLE], [1],
      [Define to 1 if 'long double' and 'double' have the same representation.])
    HAVE_SAME_LONG_DOUBLE_AS_DOUBLE=1
  else
    HAVE_SAME_LONG_DOUBLE_AS_DOUBLE=0
  fi
  AC_SUBST([HAVE_SAME_LONG_DOUBLE_AS_DOUBLE])
])

# mbrtowc.m4 serial 38  -*- coding: utf-8 -*-
dnl Copyright (C) 2001-2002, 2004-2005, 2008-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MBRTOWC],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_REQUIRE([gl_PTHREADLIB])
  AC_CHECK_HEADERS_ONCE([threads.h])

  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  gl_MBSTATE_T_BROKEN

  AC_CHECK_FUNCS_ONCE([mbrtowc])
  if test $ac_cv_func_mbrtowc = no; then
    HAVE_MBRTOWC=0
    AC_CHECK_DECLS([mbrtowc],,, [[
      #include <wchar.h>
    ]])
    if test $ac_cv_have_decl_mbrtowc = yes; then
      dnl On Minix 3.1.8, the system's <wchar.h> declares mbrtowc() although
      dnl it does not have the function. Avoid a collision with gnulib's
      dnl replacement.
      REPLACE_MBRTOWC=1
    fi
  else
    if test $REPLACE_MBSTATE_T = 1; then
      REPLACE_MBRTOWC=1
    else
      gl_MBRTOWC_NULL_ARG1
      gl_MBRTOWC_NULL_ARG2
      gl_MBRTOWC_RETVAL
      gl_MBRTOWC_NUL_RETVAL
      gl_MBRTOWC_STORES_INCOMPLETE
      gl_MBRTOWC_EMPTY_INPUT
      gl_MBRTOWC_C_LOCALE
      case "$gl_cv_func_mbrtowc_null_arg1" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_NULL_ARG1_BUG], [1],
             [Define if the mbrtowc function has the NULL pwc argument bug.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_null_arg2" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_NULL_ARG2_BUG], [1],
             [Define if the mbrtowc function has the NULL string argument bug.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_retval" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_RETVAL_BUG], [1],
             [Define if the mbrtowc function returns a wrong return value.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_nul_retval" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_NUL_RETVAL_BUG], [1],
             [Define if the mbrtowc function does not return 0 for a NUL character.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_stores_incomplete" in
        *no) ;;
        *) AC_DEFINE([MBRTOWC_STORES_INCOMPLETE_BUG], [1],
             [Define if the mbrtowc function stores a wide character when reporting incomplete input.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_empty_input" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_EMPTY_INPUT_BUG], [1],
             [Define if the mbrtowc function does not return (size_t) -2
              for empty input.])
           REPLACE_MBRTOWC=1
           ;;
      esac
      case "$gl_cv_func_mbrtowc_C_locale_sans_EILSEQ" in
        *yes) ;;
        *) AC_DEFINE([MBRTOWC_IN_C_LOCALE_MAYBE_EILSEQ], [1],
             [Define if the mbrtowc function may signal encoding errors in the C locale.])
           REPLACE_MBRTOWC=1
           ;;
      esac
    fi
  fi
  if test $REPLACE_MBSTATE_T = 1; then
    case "$host_os" in
      mingw*) LIB_MBRTOWC= ;;
      *)
        gl_WEAK_SYMBOLS
        case "$gl_cv_have_weak" in
          *yes) LIB_MBRTOWC= ;;
          *)    LIB_MBRTOWC="$LIBPTHREAD" ;;
        esac
        ;;
    esac
  else
    LIB_MBRTOWC=
  fi
  dnl LIB_MBRTOWC is expected to be '-pthread' or '-lpthread' on AIX
  dnl with gcc or xlc, and empty otherwise.
  AC_SUBST([LIB_MBRTOWC])
])

dnl Test whether mbsinit() and mbrtowc() need to be overridden in a way that
dnl redefines the semantics of the given mbstate_t type.
dnl Result is REPLACE_MBSTATE_T.
dnl When this is set to 1, we replace both mbsinit() and mbrtowc(), in order to
dnl avoid inconsistencies.

AC_DEFUN([gl_MBSTATE_T_BROKEN],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])

  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  AC_CHECK_FUNCS_ONCE([mbsinit])
  AC_CHECK_FUNCS_ONCE([mbrtowc])
  dnl On native Windows, we know exactly how mbsinit() behaves and don't need
  dnl to override it, even if - like on MSVC - mbsinit() is only defined as
  dnl an inline function, not as a global function.
  if case "$host_os" in
       mingw*) true ;;
       *) test $ac_cv_func_mbsinit = yes ;;
     esac \
    && test $ac_cv_func_mbrtowc = yes; then
    gl_MBRTOWC_INCOMPLETE_STATE
    gl_MBRTOWC_SANITYCHECK
    REPLACE_MBSTATE_T=0
    case "$gl_cv_func_mbrtowc_incomplete_state" in
      *yes) ;;
      *) REPLACE_MBSTATE_T=1 ;;
    esac
    case "$gl_cv_func_mbrtowc_sanitycheck" in
      *yes) ;;
      *) REPLACE_MBSTATE_T=1 ;;
    esac
  else
    REPLACE_MBSTATE_T=1
  fi
])

dnl Test whether mbrtowc puts the state into non-initial state when parsing an
dnl incomplete multibyte character.
dnl Result is gl_cv_func_mbrtowc_incomplete_state.

AC_DEFUN([gl_MBRTOWC_INCOMPLETE_STATE],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_JA])
  AC_REQUIRE([gt_LOCALE_FR_UTF8])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc handles incomplete characters],
    [gl_cv_func_mbrtowc_incomplete_state],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                     # Guess no on AIX and OSF/1.
        aix* | osf*) gl_cv_func_mbrtowc_incomplete_state="guessing no" ;;
                     # Guess yes otherwise.
        *)           gl_cv_func_mbrtowc_incomplete_state="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_JA != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  if (setlocale (LC_ALL, "$LOCALE_JA") != NULL)
    {
      const char input[] = "B\217\253\344\217\251\316er"; /* "Büßer" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 1, 1, &state) == (size_t)(-2))
        if (mbsinit (&state))
          return 2;
    }
  return 0;
}]])],
          [gl_cv_func_mbrtowc_incomplete_state=yes],
          [gl_cv_func_mbrtowc_incomplete_state=no],
          [:])
      else
        if test $LOCALE_FR_UTF8 != none; then
          AC_RUN_IFELSE(
            [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      const char input[] = "B\303\274\303\237er"; /* "Büßer" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 1, 1, &state) == (size_t)(-2))
        if (mbsinit (&state))
          return 2;
    }
  return 0;
}]])],
          [gl_cv_func_mbrtowc_incomplete_state=yes],
          [gl_cv_func_mbrtowc_incomplete_state=no],
          [:])
        fi
      fi
    ])
])

dnl Test whether mbrtowc works not worse than mbtowc.
dnl Result is gl_cv_func_mbrtowc_sanitycheck.

AC_DEFUN([gl_MBRTOWC_SANITYCHECK],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_ZH_CN])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc works as well as mbtowc],
    [gl_cv_func_mbrtowc_sanitycheck],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                    # Guess no on Solaris 8.
        solaris2.8) gl_cv_func_mbrtowc_sanitycheck="guessing no" ;;
                    # Guess yes otherwise.
        *)          gl_cv_func_mbrtowc_sanitycheck="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_ZH_CN != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  /* This fails on Solaris 8:
     mbrtowc returns 2, and sets wc to 0x00F0.
     mbtowc returns 4 (correct) and sets wc to 0x5EDC.  */
  if (setlocale (LC_ALL, "$LOCALE_ZH_CN") != NULL)
    {
      char input[] = "B\250\271\201\060\211\070er"; /* "Büßer" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 3, 6, &state) != 4
          && mbtowc (&wc, input + 3, 6) == 4)
        return 2;
    }
  return 0;
}]])],
          [gl_cv_func_mbrtowc_sanitycheck=yes],
          [gl_cv_func_mbrtowc_sanitycheck=no],
          [:])
      fi
    ])
])

dnl Test whether mbrtowc supports a NULL pwc argument correctly.
dnl Result is gl_cv_func_mbrtowc_null_arg1.

AC_DEFUN([gl_MBRTOWC_NULL_ARG1],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_FR_UTF8])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc handles a NULL pwc argument],
    [gl_cv_func_mbrtowc_null_arg1],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                  # Guess no on Solaris.
        solaris*) gl_cv_func_mbrtowc_null_arg1="guessing no" ;;
                  # Guess yes otherwise.
        *)        gl_cv_func_mbrtowc_null_arg1="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_FR_UTF8 != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  int result = 0;

  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      char input[] = "\303\237er";
      mbstate_t state;
      wchar_t wc;
      size_t ret;

      memset (&state, '\0', sizeof (mbstate_t));
      wc = (wchar_t) 0xBADFACE;
      ret = mbrtowc (&wc, input, 5, &state);
      if (ret != 2)
        result |= 1;
      if (!mbsinit (&state))
        result |= 2;

      memset (&state, '\0', sizeof (mbstate_t));
      ret = mbrtowc (NULL, input, 5, &state);
      if (ret != 2) /* Solaris 7 fails here: ret is -1.  */
        result |= 4;
      if (!mbsinit (&state))
        result |= 8;
    }
  return result;
}]])],
          [gl_cv_func_mbrtowc_null_arg1=yes],
          [gl_cv_func_mbrtowc_null_arg1=no],
          [:])
      fi
    ])
])

dnl Test whether mbrtowc supports a NULL string argument correctly.
dnl Result is gl_cv_func_mbrtowc_null_arg2.

AC_DEFUN([gl_MBRTOWC_NULL_ARG2],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_FR_UTF8])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc handles a NULL string argument],
    [gl_cv_func_mbrtowc_null_arg2],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
              # Guess no on OSF/1.
        osf*) gl_cv_func_mbrtowc_null_arg2="guessing no" ;;
              # Guess yes otherwise.
        *)    gl_cv_func_mbrtowc_null_arg2="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_FR_UTF8 != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      mbstate_t state;
      wchar_t wc;
      int ret;

      memset (&state, '\0', sizeof (mbstate_t));
      wc = (wchar_t) 0xBADFACE;
      mbrtowc (&wc, NULL, 5, &state);
      /* Check that wc was not modified.  */
      if (wc != (wchar_t) 0xBADFACE)
        return 2;
    }
  return 0;
}]])],
          [gl_cv_func_mbrtowc_null_arg2=yes],
          [gl_cv_func_mbrtowc_null_arg2=no],
          [:])
      fi
    ])
])

dnl Test whether mbrtowc, when parsing the end of a multibyte character,
dnl correctly returns the number of bytes that were needed to complete the
dnl character (not the total number of bytes of the multibyte character).
dnl Result is gl_cv_func_mbrtowc_retval.

AC_DEFUN([gl_MBRTOWC_RETVAL],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_FR_UTF8])
  AC_REQUIRE([gt_LOCALE_JA])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether mbrtowc has a correct return value],
    [gl_cv_func_mbrtowc_retval],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                                   # Guess no on HP-UX, Solaris, native Windows.
        hpux* | solaris* | mingw*) gl_cv_func_mbrtowc_retval="guessing no" ;;
                                   # Guess yes otherwise.
        *)                         gl_cv_func_mbrtowc_retval="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_FR_UTF8 != none || test $LOCALE_JA != none \
         || { case "$host_os" in mingw*) true;; *) false;; esac; }; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  int result = 0;
  int found_some_locale = 0;
  /* This fails on Solaris.  */
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      char input[] = "B\303\274\303\237er"; /* "Büßer" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 1, 1, &state) == (size_t)(-2))
        {
          input[1] = '\0';
          if (mbrtowc (&wc, input + 2, 5, &state) != 1)
            result |= 1;
        }
      found_some_locale = 1;
    }
  /* This fails on HP-UX 11.11.  */
  if (setlocale (LC_ALL, "$LOCALE_JA") != NULL)
    {
      char input[] = "B\217\253\344\217\251\316er"; /* "Büßer" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 1, 1, &state) == (size_t)(-2))
        {
          input[1] = '\0';
          if (mbrtowc (&wc, input + 2, 5, &state) != 2)
            result |= 2;
        }
      found_some_locale = 1;
    }
  /* This fails on native Windows.  */
  if (setlocale (LC_ALL, "Japanese_Japan.932") != NULL)
    {
      char input[] = "<\223\372\226\173\214\352>"; /* "<日本語>" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 3, 1, &state) == (size_t)(-2))
        {
          input[3] = '\0';
          if (mbrtowc (&wc, input + 4, 4, &state) != 1)
            result |= 4;
        }
      found_some_locale = 1;
    }
  if (setlocale (LC_ALL, "Chinese_Taiwan.950") != NULL)
    {
      char input[] = "<\244\351\245\273\273\171>"; /* "<日本語>" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 3, 1, &state) == (size_t)(-2))
        {
          input[3] = '\0';
          if (mbrtowc (&wc, input + 4, 4, &state) != 1)
            result |= 8;
        }
      found_some_locale = 1;
    }
  if (setlocale (LC_ALL, "Chinese_China.936") != NULL)
    {
      char input[] = "<\310\325\261\276\325\132>"; /* "<日本語>" */
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, input + 3, 1, &state) == (size_t)(-2))
        {
          input[3] = '\0';
          if (mbrtowc (&wc, input + 4, 4, &state) != 1)
            result |= 16;
        }
      found_some_locale = 1;
    }
  return (found_some_locale ? result : 77);
}]])],
          [gl_cv_func_mbrtowc_retval=yes],
          [if test $? != 77; then
             gl_cv_func_mbrtowc_retval=no
           fi
          ],
          [:])
      fi
    ])
])

dnl Test whether mbrtowc, when parsing a NUL character, correctly returns 0.
dnl Result is gl_cv_func_mbrtowc_nul_retval.

AC_DEFUN([gl_MBRTOWC_NUL_RETVAL],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_ZH_CN])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc returns 0 when parsing a NUL character],
    [gl_cv_func_mbrtowc_nul_retval],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                       # Guess no on Solaris 8 and 9.
        solaris2.[89]) gl_cv_func_mbrtowc_nul_retval="guessing no" ;;
                       # Guess yes otherwise.
        *)             gl_cv_func_mbrtowc_nul_retval="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_ZH_CN != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  /* This fails on Solaris 8 and 9.  */
  if (setlocale (LC_ALL, "$LOCALE_ZH_CN") != NULL)
    {
      mbstate_t state;
      wchar_t wc;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "", 1, &state) != 0)
        return 2;
    }
  return 0;
}]])],
          [gl_cv_func_mbrtowc_nul_retval=yes],
          [gl_cv_func_mbrtowc_nul_retval=no],
          [:])
      fi
    ])
])

dnl Test whether mbrtowc stores a wide character when reporting incomplete
dnl input.

AC_DEFUN([gl_MBRTOWC_STORES_INCOMPLETE],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc stores incomplete characters],
    [gl_cv_func_mbrtowc_stores_incomplete],
    [
     dnl Initial guess, used when cross-compiling or when no suitable locale
     dnl is present.
changequote(,)dnl
     case "$host_os" in
               # Guess yes on native Windows.
       mingw*) gl_cv_func_mbrtowc_stores_incomplete="guessing yes" ;;
       *)      gl_cv_func_mbrtowc_stores_incomplete="guessing no" ;;
     esac
changequote([,])dnl
     case "$host_os" in
       mingw*)
         AC_RUN_IFELSE(
           [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  int result = 0;
  if (setlocale (LC_ALL, "French_France.65001") != NULL)
    {
      wchar_t wc = (wchar_t) 0xBADFACE;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "\303", 1, &state) == (size_t)(-2)
          && wc != (wchar_t) 0xBADFACE)
        result |= 1;
    }
  if (setlocale (LC_ALL, "Japanese_Japan.932") != NULL)
    {
      wchar_t wc = (wchar_t) 0xBADFACE;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "\226", 1, &state) == (size_t)(-2)
          && wc != (wchar_t) 0xBADFACE)
        result |= 2;
    }
  if (setlocale (LC_ALL, "Chinese_Taiwan.950") != NULL)
    {
      wchar_t wc = (wchar_t) 0xBADFACE;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "\245", 1, &state) == (size_t)(-2)
          && wc != (wchar_t) 0xBADFACE)
        result |= 4;
    }
  if (setlocale (LC_ALL, "Chinese_China.936") != NULL)
    {
      wchar_t wc = (wchar_t) 0xBADFACE;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "\261", 1, &state) == (size_t)(-2)
          && wc != (wchar_t) 0xBADFACE)
        result |= 8;
    }
  return result;
}]])],
           [gl_cv_func_mbrtowc_stores_incomplete=no],
           [gl_cv_func_mbrtowc_stores_incomplete=yes],
           [:])
         ;;
       *)
         AC_REQUIRE([gt_LOCALE_FR_UTF8])
         if test $LOCALE_FR_UTF8 != none; then
           AC_RUN_IFELSE(
             [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      wchar_t wc = (wchar_t) 0xBADFACE;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (&wc, "\303", 1, &state) == (size_t)(-2)
          && wc != (wchar_t) 0xBADFACE)
        return 1;
    }
  return 0;
}]])],
             [gl_cv_func_mbrtowc_stores_incomplete=no],
             [gl_cv_func_mbrtowc_stores_incomplete=yes],
             [:])
         fi
         ;;
     esac
    ])
])

dnl Test whether mbrtowc returns the correct value on empty input.

AC_DEFUN([gl_MBRTOWC_EMPTY_INPUT],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbrtowc works on empty input],
    [gl_cv_func_mbrtowc_empty_input],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                              # Guess no on AIX and glibc systems.
        aix* | *-gnu* | gnu*) gl_cv_func_mbrtowc_empty_input="guessing no" ;;
                              # Guess yes on native Windows.
        mingw*)               gl_cv_func_mbrtowc_empty_input="guessing yes" ;;
        *)                    gl_cv_func_mbrtowc_empty_input="guessing yes" ;;
      esac
changequote([,])dnl
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
           #include <wchar.h>
           static wchar_t wc;
           static mbstate_t mbs;
           int
           main (void)
           {
             return mbrtowc (&wc, "", 0, &mbs) != (size_t) -2;
           }]])],
        [gl_cv_func_mbrtowc_empty_input=yes],
        [gl_cv_func_mbrtowc_empty_input=no],
        [:])
    ])
])

dnl Test whether mbrtowc reports encoding errors in the C locale.
dnl Although POSIX was never intended to allow this, the GNU C Library
dnl and other implementations do it.  See:
dnl https://sourceware.org/bugzilla/show_bug.cgi?id=19932

AC_DEFUN([gl_MBRTOWC_C_LOCALE],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether the C locale is free of encoding errors],
    [gl_cv_func_mbrtowc_C_locale_sans_EILSEQ],
    [
     dnl Initial guess, used when cross-compiling or when no suitable locale
     dnl is present.
     gl_cv_func_mbrtowc_C_locale_sans_EILSEQ="$gl_cross_guess_normal"

     AC_RUN_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <limits.h>
            #include <locale.h>
            #include <wchar.h>
          ]], [[
            int i;
            char *locale = setlocale (LC_ALL, "C");
            if (! locale)
              return 2;
            for (i = CHAR_MIN; i <= CHAR_MAX; i++)
              {
                char c = i;
                wchar_t wc;
                mbstate_t mbs = { 0, };
                size_t ss = mbrtowc (&wc, &c, 1, &mbs);
                if (1 < ss)
                  return 3;
              }
            return 0;
          ]])],
      [gl_cv_func_mbrtowc_C_locale_sans_EILSEQ=yes],
      [gl_cv_func_mbrtowc_C_locale_sans_EILSEQ=no],
      [case "$host_os" in
                 # Guess yes on native Windows.
         mingw*) gl_cv_func_mbrtowc_C_locale_sans_EILSEQ="guessing yes" ;;
       esac
      ])
    ])
])

# Prerequisites of lib/mbrtowc.c and lib/lc-charset-dispatch.c.
AC_DEFUN([gl_PREREQ_MBRTOWC], [
  AC_REQUIRE([AC_C_INLINE])
  :
])

# Prerequisites of lib/mbtowc-lock.c.
AC_DEFUN([gl_PREREQ_MBTOWC_LOCK],
[
  gl_VISIBILITY
])


dnl From Paul Eggert

dnl This is an override of an autoconf macro.

AC_DEFUN([AC_FUNC_MBRTOWC],
[
  dnl Same as AC_FUNC_MBRTOWC in autoconf-2.60.
  AC_CACHE_CHECK([whether mbrtowc and mbstate_t are properly declared],
    [gl_cv_func_mbrtowc],
    [AC_LINK_IFELSE(
       [AC_LANG_PROGRAM(
            [[#include <wchar.h>]],
            [[wchar_t wc;
              char const s[] = "";
              size_t n = 1;
              mbstate_t state;
              return ! (sizeof state && (mbrtowc) (&wc, s, n, &state));]])],
       [gl_cv_func_mbrtowc=yes],
       [gl_cv_func_mbrtowc=no])])
  if test $gl_cv_func_mbrtowc = yes; then
    AC_DEFINE([HAVE_MBRTOWC], [1],
      [Define to 1 if mbrtowc and mbstate_t are properly declared.])
  fi
])

# mbsinit.m4 serial 9
dnl Copyright (C) 2008, 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MBSINIT],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])

  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  gl_MBSTATE_T_BROKEN

  AC_CHECK_FUNCS_ONCE([mbsinit])
  if test $ac_cv_func_mbsinit = no; then
    HAVE_MBSINIT=0
    AC_CHECK_DECLS([mbsinit],,, [[
      #include <wchar.h>
    ]])
    if test $ac_cv_have_decl_mbsinit = yes; then
      dnl On Minix 3.1.8, the system's <wchar.h> declares mbsinit() although
      dnl it does not have the function. Avoid a collision with gnulib's
      dnl replacement.
      REPLACE_MBSINIT=1
    fi
  else
    if test $REPLACE_MBSTATE_T = 1; then
      REPLACE_MBSINIT=1
    else
      dnl On mingw, mbsinit() always returns 1, which is inappropriate for
      dnl states produced by mbrtowc() for an incomplete multibyte character
      dnl in multibyte locales.
      case "$host_os" in
        mingw*) REPLACE_MBSINIT=1 ;;
      esac
    fi
  fi
])

# Prerequisites of lib/mbsinit.c.
AC_DEFUN([gl_PREREQ_MBSINIT], [
  :
])

# mbsrtowcs.m4 serial 14
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MBSRTOWCS],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])

  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  gl_MBSTATE_T_BROKEN

  AC_CHECK_FUNCS_ONCE([mbsrtowcs])
  if test $ac_cv_func_mbsrtowcs = no; then
    HAVE_MBSRTOWCS=0
    AC_CHECK_DECLS([mbsrtowcs],,, [[
      #include <wchar.h>
    ]])
    if test $ac_cv_have_decl_mbsrtowcs = yes; then
      dnl On Minix 3.1.8, the system's <wchar.h> declares mbsrtowcs() although
      dnl it does not have the function. Avoid a collision with gnulib's
      dnl replacement.
      REPLACE_MBSRTOWCS=1
    fi
  else
    if test $REPLACE_MBSTATE_T = 1; then
      REPLACE_MBSRTOWCS=1
    else
      gl_MBSRTOWCS_WORKS
      case "$gl_cv_func_mbsrtowcs_works" in
        *yes) ;;
        *) REPLACE_MBSRTOWCS=1 ;;
      esac
    fi
  fi
])

dnl Test whether mbsrtowcs works.
dnl Result is gl_cv_func_mbsrtowcs_works.

AC_DEFUN([gl_MBSRTOWCS_WORKS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gt_LOCALE_FR])
  AC_REQUIRE([gt_LOCALE_FR_UTF8])
  AC_REQUIRE([gt_LOCALE_JA])
  AC_REQUIRE([gt_LOCALE_ZH_CN])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether mbsrtowcs works],
    [gl_cv_func_mbsrtowcs_works],
    [
      dnl Initial guess, used when cross-compiling or when no suitable locale
      dnl is present.
changequote(,)dnl
      case "$host_os" in
                                   # Guess no on HP-UX, Solaris, mingw.
        hpux* | solaris* | mingw*) gl_cv_func_mbsrtowcs_works="guessing no" ;;
                                   # Guess yes otherwise.
        *)                         gl_cv_func_mbsrtowcs_works="guessing yes" ;;
      esac
changequote([,])dnl
      if test $LOCALE_FR != none || test $LOCALE_FR_UTF8 != none || test $LOCALE_JA != none || test $LOCALE_ZH_CN != none; then
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
int main ()
{
  int result = 0;
  /* Test whether the function supports a NULL destination argument.
     This fails on native Windows.  */
  if (setlocale (LC_ALL, "$LOCALE_FR") != NULL)
    {
      const char input[] = "\337er";
      const char *src = input;
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbsrtowcs (NULL, &src, 1, &state) != 3
          || src != input)
        result |= 1;
    }
  /* Test whether the function works when started with a conversion state
     in non-initial state.  This fails on HP-UX 11.11 and Solaris 10.  */
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      const char input[] = "B\303\274\303\237er";
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (NULL, input + 1, 1, &state) == (size_t)(-2))
        if (!mbsinit (&state))
          {
            const char *src = input + 2;
            if (mbsrtowcs (NULL, &src, 10, &state) != 4)
              result |= 2;
          }
    }
  if (setlocale (LC_ALL, "$LOCALE_JA") != NULL)
    {
      const char input[] = "<\306\374\313\334\270\354>";
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (NULL, input + 3, 1, &state) == (size_t)(-2))
        if (!mbsinit (&state))
          {
            const char *src = input + 4;
            if (mbsrtowcs (NULL, &src, 10, &state) != 3)
              result |= 4;
          }
    }
  if (setlocale (LC_ALL, "$LOCALE_ZH_CN") != NULL)
    {
      const char input[] = "B\250\271\201\060\211\070er";
      mbstate_t state;

      memset (&state, '\0', sizeof (mbstate_t));
      if (mbrtowc (NULL, input + 1, 1, &state) == (size_t)(-2))
        if (!mbsinit (&state))
          {
            const char *src = input + 2;
            if (mbsrtowcs (NULL, &src, 10, &state) != 4)
              result |= 8;
          }
    }
  return result;
}]])],
          [gl_cv_func_mbsrtowcs_works=yes],
          [gl_cv_func_mbsrtowcs_works=no],
          [:])
      fi
    ])
])

# Prerequisites of lib/mbsrtowcs.c.
AC_DEFUN([gl_PREREQ_MBSRTOWCS], [
  :
])

# mbstate_t.m4 serial 14
dnl Copyright (C) 2000-2002, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# From Paul Eggert.

# BeOS 5 has <wchar.h> but does not define mbstate_t,
# so you can't declare an object of that type.
# Check for this incompatibility with Standard C.

# AC_TYPE_MBSTATE_T
# -----------------
AC_DEFUN([AC_TYPE_MBSTATE_T],
[
   AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS]) dnl for HP-UX 11.11

   AC_CACHE_CHECK([for mbstate_t], [ac_cv_type_mbstate_t],
     [AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM(
           [AC_INCLUDES_DEFAULT[
             #include <wchar.h>]],
           [[mbstate_t x; return sizeof x;]])],
        [ac_cv_type_mbstate_t=yes],
        [ac_cv_type_mbstate_t=no])])
   if test $ac_cv_type_mbstate_t = yes; then
     AC_DEFINE([HAVE_MBSTATE_T], [1],
               [Define to 1 if <wchar.h> declares mbstate_t.])
   else
     AC_DEFINE([mbstate_t], [int],
               [Define to a type if <wchar.h> does not define.])
   fi
])

# mbtowc.m4 serial 3
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MBTOWC],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])

  AC_CHECK_FUNCS([mbtowc])
  if test $ac_cv_func_mbtowc = no; then
    HAVE_MBTOWC=0
  else
    if false; then
      REPLACE_MBTOWC=1
    fi
  fi
])

# Prerequisites of lib/mbtowc.c.
AC_DEFUN([gl_PREREQ_MBTOWC], [
  :
])

# memchr.m4 serial 18
dnl Copyright (C) 2002-2004, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_FUNC_MEMCHR],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Check for prerequisites for memory fence checks.
  gl_FUNC_MMAP_ANON
  AC_CHECK_HEADERS_ONCE([sys/mman.h])
  AC_CHECK_FUNCS_ONCE([mprotect])

  AC_REQUIRE([gl_STRING_H_DEFAULTS])
  # Detect platform-specific bugs in some versions of glibc:
  # memchr should not dereference anything with length 0
  #   https://bugzilla.redhat.com/show_bug.cgi?id=499689
  # memchr should not dereference overestimated length after a match
  #   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=521737
  #   https://sourceware.org/bugzilla/show_bug.cgi?id=10162
  # memchr should cast the second argument to 'unsigned char'.
  #   This bug exists in Android 4.3.
  # Assume that memchr works on platforms that lack mprotect.
  AC_CACHE_CHECK([whether memchr works], [gl_cv_func_memchr_works],
    [AC_RUN_IFELSE([AC_LANG_PROGRAM([[
#include <string.h>
#if HAVE_SYS_MMAN_H
# include <fcntl.h>
# include <unistd.h>
# include <sys/types.h>
# include <sys/mman.h>
# ifndef MAP_FILE
#  define MAP_FILE 0
# endif
#endif
]], [[
  int result = 0;
  char *fence = NULL;
#if HAVE_SYS_MMAN_H && HAVE_MPROTECT
# if HAVE_MAP_ANONYMOUS
  const int flags = MAP_ANONYMOUS | MAP_PRIVATE;
  const int fd = -1;
# else /* !HAVE_MAP_ANONYMOUS */
  const int flags = MAP_FILE | MAP_PRIVATE;
  int fd = open ("/dev/zero", O_RDONLY, 0666);
  if (fd >= 0)
# endif
    {
      int pagesize = getpagesize ();
      char *two_pages =
        (char *) mmap (NULL, 2 * pagesize, PROT_READ | PROT_WRITE,
                       flags, fd, 0);
      if (two_pages != (char *)(-1)
          && mprotect (two_pages + pagesize, pagesize, PROT_NONE) == 0)
        fence = two_pages + pagesize;
    }
#endif
  if (fence)
    {
      /* Test against bugs on glibc systems.  */
      if (memchr (fence, 0, 0))
        result |= 1;
      strcpy (fence - 9, "12345678");
      if (memchr (fence - 9, 0, 79) != fence - 1)
        result |= 2;
      if (memchr (fence - 1, 0, 3) != fence - 1)
        result |= 4;
      /* Test against bug on AIX 7.2.  */
      if (memchr (fence - 4, '6', 16) != fence - 4)
        result |= 8;
    }
  /* Test against bug on Android 4.3.  */
  {
    char input[3];
    input[0] = 'a';
    input[1] = 'b';
    input[2] = 'c';
    if (memchr (input, 0x789abc00 | 'b', 3) != input + 1)
      result |= 16;
  }
  return result;
]])],
       [gl_cv_func_memchr_works=yes],
       [gl_cv_func_memchr_works=no],
       [case "$host_os" in
                           # Guess no on Android.
          linux*-android*) gl_cv_func_memchr_works="guessing no" ;;
                           # Guess yes on native Windows.
          mingw*)          gl_cv_func_memchr_works="guessing yes" ;;
                           # If we don't know, obey --enable-cross-guesses.
          *)               gl_cv_func_memchr_works="$gl_cross_guess_normal" ;;
        esac
       ])
    ])
  case "$gl_cv_func_memchr_works" in
    *yes) ;;
    *) REPLACE_MEMCHR=1 ;;
  esac
])

# Prerequisites of lib/memchr.c.
AC_DEFUN([gl_PREREQ_MEMCHR], [
  AC_CHECK_HEADERS([bp-sym.h])
])

# mempcpy.m4 serial 12
dnl Copyright (C) 2003-2004, 2006-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MEMPCPY],
[
  dnl Persuade glibc <string.h> to declare mempcpy().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  dnl The mempcpy() declaration in lib/string.in.h uses 'restrict'.
  AC_REQUIRE([AC_C_RESTRICT])

  AC_REQUIRE([gl_STRING_H_DEFAULTS])
  AC_CHECK_FUNCS([mempcpy])
  if test $ac_cv_func_mempcpy = no; then
    HAVE_MEMPCPY=0
  fi
])

# Prerequisites of lib/mempcpy.c.
AC_DEFUN([gl_PREREQ_MEMPCPY], [
  :
])

# minmax.m4 serial 4
dnl Copyright (C) 2005, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_PREREQ([2.53])

AC_DEFUN([gl_MINMAX],
[
  AC_REQUIRE([gl_PREREQ_MINMAX])
])

# Prerequisites of lib/minmax.h.
AC_DEFUN([gl_PREREQ_MINMAX],
[
  gl_MINMAX_IN_HEADER([limits.h])
  gl_MINMAX_IN_HEADER([sys/param.h])
])

dnl gl_MINMAX_IN_HEADER(HEADER)
dnl The parameter has to be a literal header name; it cannot be macro,
dnl nor a shell variable. (Because autoheader collects only AC_DEFINE
dnl invocations with a literal macro name.)
AC_DEFUN([gl_MINMAX_IN_HEADER],
[
  m4_pushdef([header], AS_TR_SH([$1]))
  m4_pushdef([HEADER], AS_TR_CPP([$1]))
  AC_CACHE_CHECK([whether <$1> defines MIN and MAX],
    [gl_cv_minmax_in_]header,
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <$1>
            int x = MIN (42, 17);]],
          [[]])],
       [gl_cv_minmax_in_]header[=yes],
       [gl_cv_minmax_in_]header[=no])])
  if test $gl_cv_minmax_in_[]header = yes; then
    AC_DEFINE([HAVE_MINMAX_IN_]HEADER, 1,
      [Define to 1 if <$1> defines the MIN and MAX macros.])
  fi
  m4_popdef([HEADER])
  m4_popdef([header])
])

# serial 17

# Copyright (C) 2001, 2003-2004, 2006, 2008-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# On some systems, mkdir ("foo/", 0700) fails because of the trailing slash.
# On others, mkdir ("foo/./", 0700) mistakenly succeeds.
# On such systems, arrange to use a wrapper function.
AC_DEFUN([gl_FUNC_MKDIR],
[dnl
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CHECK_HEADERS_ONCE([unistd.h])
  AC_CACHE_CHECK([whether mkdir handles trailing slash],
    [gl_cv_func_mkdir_trailing_slash_works],
    [rm -rf conftest.dir
     AC_RUN_IFELSE(
       [AC_LANG_PROGRAM([[
          #include <sys/types.h>
          #include <sys/stat.h>
          ]GL_MDA_DEFINES],
          [[return mkdir ("conftest.dir/", 0700);]])],
       [gl_cv_func_mkdir_trailing_slash_works=yes],
       [gl_cv_func_mkdir_trailing_slash_works=no],
       [case "$host_os" in
                           # Guess yes on Linux systems.
          linux-* | linux) gl_cv_func_mkdir_trailing_slash_works="guessing yes" ;;
                           # Guess yes on glibc systems.
          *-gnu* | gnu*)   gl_cv_func_mkdir_trailing_slash_works="guessing yes" ;;
                           # Guess yes on MSVC, no on mingw.
          mingw*)          AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                             ],
                             [gl_cv_func_mkdir_trailing_slash_works="guessing yes"],
                             [gl_cv_func_mkdir_trailing_slash_works="guessing no"])
                           ;;
                           # If we don't know, obey --enable-cross-guesses.
          *)               gl_cv_func_mkdir_trailing_slash_works="$gl_cross_guess_normal" ;;
        esac
       ])
     rm -rf conftest.dir
    ])
  case "$gl_cv_func_mkdir_trailing_slash_works" in
    *yes) ;;
    *)
      REPLACE_MKDIR=1
      ;;
  esac

  AC_CACHE_CHECK([whether mkdir handles trailing dot],
    [gl_cv_func_mkdir_trailing_dot_works],
    [rm -rf conftest.dir
     AC_RUN_IFELSE(
       [AC_LANG_PROGRAM([[
          #include <sys/types.h>
          #include <sys/stat.h>
          ]GL_MDA_DEFINES],
          [[return !mkdir ("conftest.dir/./", 0700);]])],
       [gl_cv_func_mkdir_trailing_dot_works=yes],
       [gl_cv_func_mkdir_trailing_dot_works=no],
       [case "$host_os" in
                         # Guess yes on glibc systems.
          *-gnu* | gnu*) gl_cv_func_mkdir_trailing_dot_works="guessing yes" ;;
                         # Guess yes on musl systems.
          *-musl*)       gl_cv_func_mkdir_trailing_dot_works="guessing yes" ;;
                         # Guess no on native Windows.
          mingw*)        gl_cv_func_mkdir_trailing_dot_works="guessing no" ;;
                         # If we don't know, obey --enable-cross-guesses.
          *)             gl_cv_func_mkdir_trailing_dot_works="$gl_cross_guess_normal" ;;
        esac
       ])
     rm -rf conftest.dir
    ]
  )
  case "$gl_cv_func_mkdir_trailing_dot_works" in
    *yes) ;;
    *)
      REPLACE_MKDIR=1
      AC_DEFINE([FUNC_MKDIR_DOT_BUG], [1], [Define to 1 if mkdir mistakenly
        creates a directory given with a trailing dot component.])
      ;;
  esac
])

# mkstemps.m4 serial 2
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_MKSTEMPS],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])

  dnl Persuade glibc <stdlib.h> to declare mkstemps().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_FUNCS_ONCE([mkstemps])
  if test $ac_cv_func_mkstemps != yes; then
    HAVE_MKSTEMPS=0
  fi
])

# mmap-anon.m4 serial 12
dnl Copyright (C) 2005, 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Detect how mmap can be used to create anonymous (not file-backed) memory
# mappings.
# - On Linux, AIX, OSF/1, Solaris, Cygwin, Interix, Haiku, both MAP_ANONYMOUS
#   and MAP_ANON exist and have the same value.
# - On HP-UX, only MAP_ANONYMOUS exists.
# - On Mac OS X, FreeBSD, NetBSD, OpenBSD, Minix, only MAP_ANON exists.
# - On IRIX, neither exists, and a file descriptor opened to /dev/zero must be
#   used.

AC_DEFUN_ONCE([gl_FUNC_MMAP_ANON],
[
  dnl Persuade glibc <sys/mman.h> to define MAP_ANONYMOUS.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  # Check for mmap(). Don't use AC_FUNC_MMAP, because it checks too much: it
  # fails on HP-UX 11, because MAP_FIXED mappings do not work. But this is
  # irrelevant for anonymous mappings.
  AC_CHECK_FUNC([mmap], [gl_have_mmap=yes], [gl_have_mmap=no])

  # Try to allow MAP_ANONYMOUS.
  gl_have_mmap_anonymous=no
  if test $gl_have_mmap = yes; then
    AC_MSG_CHECKING([for MAP_ANONYMOUS])
    AC_EGREP_CPP([I cannot identify this map], [
#include <sys/mman.h>
#ifdef MAP_ANONYMOUS
    I cannot identify this map
#endif
],
      [gl_have_mmap_anonymous=yes])
    if test $gl_have_mmap_anonymous != yes; then
      AC_EGREP_CPP([I cannot identify this map], [
#include <sys/mman.h>
#ifdef MAP_ANON
    I cannot identify this map
#endif
],
        [AC_DEFINE([MAP_ANONYMOUS], [MAP_ANON],
          [Define to a substitute value for mmap()'s MAP_ANONYMOUS flag.])
         gl_have_mmap_anonymous=yes])
    fi
    AC_MSG_RESULT([$gl_have_mmap_anonymous])
    if test $gl_have_mmap_anonymous = yes; then
      AC_DEFINE([HAVE_MAP_ANONYMOUS], [1],
        [Define to 1 if mmap()'s MAP_ANONYMOUS flag is available after including
         config.h and <sys/mman.h>.])
    fi
  fi
])

# mode_t.m4 serial 2
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# For using mode_t, it's sufficient to use AC_TYPE_MODE_T and
# include <sys/types.h>.

# Define PROMOTED_MODE_T to the type that is the result of "default argument
# promotion" (ISO C 6.5.2.2.(6)) of the type mode_t.
AC_DEFUN([gl_PROMOTED_TYPE_MODE_T],
[
  AC_REQUIRE([AC_TYPE_MODE_T])
  AC_CACHE_CHECK([for promoted mode_t type], [gl_cv_promoted_mode_t], [
    dnl Assume mode_t promotes to 'int' if and only if it is smaller than 'int',
    dnl and to itself otherwise. This assumption is not guaranteed by the ISO C
    dnl standard, but we don't know of any real-world counterexamples.
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <sys/types.h>]],
      [[typedef int array[2 * (sizeof (mode_t) < sizeof (int)) - 1];]])],
      [gl_cv_promoted_mode_t='int'],
      [gl_cv_promoted_mode_t='mode_t'])
  ])
  AC_DEFINE_UNQUOTED([PROMOTED_MODE_T], [$gl_cv_promoted_mode_t],
    [Define to the type that is the result of default argument promotions of type mode_t.])
])

# msvc-inval.m4 serial 1
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_MSVC_INVAL],
[
  AC_CHECK_FUNCS_ONCE([_set_invalid_parameter_handler])
  if test $ac_cv_func__set_invalid_parameter_handler = yes; then
    HAVE_MSVC_INVALID_PARAMETER_HANDLER=1
    AC_DEFINE([HAVE_MSVC_INVALID_PARAMETER_HANDLER], [1],
      [Define to 1 on MSVC platforms that have the "invalid parameter handler"
       concept.])
  else
    HAVE_MSVC_INVALID_PARAMETER_HANDLER=0
  fi
  AC_SUBST([HAVE_MSVC_INVALID_PARAMETER_HANDLER])
])

# msvc-nothrow.m4 serial 1
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_MSVC_NOTHROW],
[
  AC_REQUIRE([gl_MSVC_INVAL])
])

# multiarch.m4 serial 9
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Determine whether the compiler is or may be producing universal binaries.
#
# On Mac OS X 10.5 and later systems, the user can create libraries and
# executables that work on multiple system types--known as "fat" or
# "universal" binaries--by specifying multiple '-arch' options to the
# compiler but only a single '-arch' option to the preprocessor.  Like
# this:
#
#     ./configure CC="gcc -arch i386 -arch x86_64 -arch ppc -arch ppc64" \
#                 CXX="g++ -arch i386 -arch x86_64 -arch ppc -arch ppc64" \
#                 CPP="gcc -E" CXXCPP="g++ -E"
#
# Detect this situation and set APPLE_UNIVERSAL_BUILD accordingly.

AC_DEFUN_ONCE([gl_MULTIARCH],
[
  dnl Code similar to autoconf-2.63 AC_C_BIGENDIAN.
  AC_CACHE_CHECK([whether the compiler produces multi-arch binaries],
    [gl_cv_c_multiarch],
    [gl_cv_c_multiarch=no
     AC_COMPILE_IFELSE(
       [AC_LANG_SOURCE(
         [[#ifndef __APPLE_CC__
            not a universal capable compiler
           #endif
           typedef int dummy;
         ]])],
       [
        dnl Check for potential -arch flags.  It is not universal unless
        dnl there are at least two -arch flags with different values.
        arch=
        prev=
        for word in ${CC} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS}; do
          if test -n "$prev"; then
            case $word in
              i?86 | x86_64 | ppc | ppc64 | arm | arm64)
                if test -z "$arch" || test "$arch" = "$word"; then
                  arch="$word"
                else
                  gl_cv_c_multiarch=yes
                fi
                ;;
            esac
            prev=
          else
            if test "x$word" = "x-arch"; then
              prev=arch
            fi
          fi
        done
       ])
    ])
  if test $gl_cv_c_multiarch = yes; then
    APPLE_UNIVERSAL_BUILD=1
  else
    APPLE_UNIVERSAL_BUILD=0
  fi
  AC_SUBST([APPLE_UNIVERSAL_BUILD])
])

# nl_langinfo.m4 serial 8
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_NL_LANGINFO],
[
  AC_REQUIRE([gl_LANGINFO_H_DEFAULTS])
  AC_REQUIRE([gl_LANGINFO_H])
  AC_CHECK_FUNCS_ONCE([nl_langinfo])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_FUNC_SETLOCALE_NULL])
  AC_REQUIRE([gl_PTHREADLIB])
  AC_CHECK_HEADERS_ONCE([threads.h])
  if test $ac_cv_func_nl_langinfo = yes; then
    # On Irix 6.5, YESEXPR is defined, but nl_langinfo(YESEXPR) is broken.
    AC_CACHE_CHECK([whether YESEXPR works],
      [gl_cv_func_nl_langinfo_yesexpr_works],
      [AC_RUN_IFELSE(
         [AC_LANG_PROGRAM([[#include <langinfo.h>
]], [[return !*nl_langinfo(YESEXPR);
]])],
         [gl_cv_func_nl_langinfo_yesexpr_works=yes],
         [gl_cv_func_nl_langinfo_yesexpr_works=no],
         [
         case "$host_os" in
                   # Guess no on irix systems.
           irix*)  gl_cv_func_nl_langinfo_yesexpr_works="guessing no";;
                   # Guess yes elsewhere.
           *)      gl_cv_func_nl_langinfo_yesexpr_works="guessing yes";;
         esac
         ])
      ])
    case $gl_cv_func_nl_langinfo_yesexpr_works in
      *yes) FUNC_NL_LANGINFO_YESEXPR_WORKS=1 ;;
      *)    FUNC_NL_LANGINFO_YESEXPR_WORKS=0 ;;
    esac
    AC_DEFINE_UNQUOTED([FUNC_NL_LANGINFO_YESEXPR_WORKS],
      [$FUNC_NL_LANGINFO_YESEXPR_WORKS],
      [Define to 1 if nl_langinfo (YESEXPR) returns a non-empty string.])
    # On Solaris 10 and Solaris 11.3, nl_langinfo is not multithread-safe.
    case "$host_os" in
      solaris*) NL_LANGINFO_MTSAFE=0 ;;
      *)        NL_LANGINFO_MTSAFE=1 ;;
    esac
    AC_DEFINE_UNQUOTED([NL_LANGINFO_MTSAFE], [$NL_LANGINFO_MTSAFE],
      [Define to 1 if nl_langinfo is multithread-safe.])
    if test $HAVE_LANGINFO_CODESET = 1 \
       && test $HAVE_LANGINFO_T_FMT_AMPM = 1 \
       && test $HAVE_LANGINFO_ALTMON = 1 \
       && test $HAVE_LANGINFO_ERA = 1 \
       && test $FUNC_NL_LANGINFO_YESEXPR_WORKS = 1 \
       && test $NL_LANGINFO_MTSAFE = 1; then
      :
    else
      REPLACE_NL_LANGINFO=1
      AC_DEFINE([REPLACE_NL_LANGINFO], [1],
        [Define if nl_langinfo exists but is overridden by gnulib.])
    fi
  else
    HAVE_NL_LANGINFO=0
  fi
  if test $HAVE_NL_LANGINFO = 0 || test $HAVE_LANGINFO_CODESET = 0; then
    LIB_NL_LANGINFO="$LIB_SETLOCALE_NULL"
  else
    LIB_NL_LANGINFO=
  fi
  dnl LIB_NL_LANGINFO is expected to be empty everywhere.
  AC_SUBST([LIB_NL_LANGINFO])
])

# Prerequisites of lib/nl_langinfo-lock.c.
AC_DEFUN([gl_PREREQ_NL_LANGINFO_LOCK],
[
  gl_VISIBILITY
])

# nocrash.m4 serial 5
dnl Copyright (C) 2005, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Based on libsigsegv, from Bruno Haible and Paolo Bonzini.

AC_PREREQ([2.13])

dnl Expands to some code for use in .c programs that will cause the configure
dnl test to exit instead of crashing. This is useful to avoid triggering
dnl action from a background debugger and to avoid core dumps.
dnl Usage:   ...
dnl          ]GL_NOCRASH[
dnl          ...
dnl          int main() { nocrash_init(); ... }
AC_DEFUN([GL_NOCRASH],[[
#include <stdlib.h>
#if defined __MACH__ && defined __APPLE__
/* Avoid a crash on Mac OS X.  */
#include <mach/mach.h>
#include <mach/mach_error.h>
#include <mach/thread_status.h>
#include <mach/exception.h>
#include <mach/task.h>
#include <pthread.h>
/* The exception port on which our thread listens.  */
static mach_port_t our_exception_port;
/* The main function of the thread listening for exceptions of type
   EXC_BAD_ACCESS.  */
static void *
mach_exception_thread (void *arg)
{
  /* Buffer for a message to be received.  */
  struct {
    mach_msg_header_t head;
    mach_msg_body_t msgh_body;
    char data[1024];
  } msg;
  mach_msg_return_t retval;
  /* Wait for a message on the exception port.  */
  retval = mach_msg (&msg.head, MACH_RCV_MSG | MACH_RCV_LARGE, 0, sizeof (msg),
                     our_exception_port, MACH_MSG_TIMEOUT_NONE, MACH_PORT_NULL);
  if (retval != MACH_MSG_SUCCESS)
    abort ();
  exit (1);
}
static void
nocrash_init (void)
{
  mach_port_t self = mach_task_self ();
  /* Allocate a port on which the thread shall listen for exceptions.  */
  if (mach_port_allocate (self, MACH_PORT_RIGHT_RECEIVE, &our_exception_port)
      == KERN_SUCCESS) {
    /* See https://web.mit.edu/darwin/src/modules/xnu/osfmk/man/mach_port_insert_right.html.  */
    if (mach_port_insert_right (self, our_exception_port, our_exception_port,
                                MACH_MSG_TYPE_MAKE_SEND)
        == KERN_SUCCESS) {
      /* The exceptions we want to catch.  Only EXC_BAD_ACCESS is interesting
         for us.  */
      exception_mask_t mask = EXC_MASK_BAD_ACCESS;
      /* Create the thread listening on the exception port.  */
      pthread_attr_t attr;
      pthread_t thread;
      if (pthread_attr_init (&attr) == 0
          && pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_DETACHED) == 0
          && pthread_create (&thread, &attr, mach_exception_thread, NULL) == 0) {
        pthread_attr_destroy (&attr);
        /* Replace the exception port info for these exceptions with our own.
           Note that we replace the exception port for the entire task, not only
           for a particular thread.  This has the effect that when our exception
           port gets the message, the thread specific exception port has already
           been asked, and we don't need to bother about it.
           See https://web.mit.edu/darwin/src/modules/xnu/osfmk/man/task_set_exception_ports.html.  */
        task_set_exception_ports (self, mask, our_exception_port,
                                  EXCEPTION_DEFAULT, MACHINE_THREAD_STATE);
      }
    }
  }
}
#elif defined _WIN32 && ! defined __CYGWIN__
/* Avoid a crash on native Windows.  */
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <winerror.h>
static LONG WINAPI
exception_filter (EXCEPTION_POINTERS *ExceptionInfo)
{
  switch (ExceptionInfo->ExceptionRecord->ExceptionCode)
    {
    case EXCEPTION_ACCESS_VIOLATION:
    case EXCEPTION_IN_PAGE_ERROR:
    case EXCEPTION_STACK_OVERFLOW:
    case EXCEPTION_GUARD_PAGE:
    case EXCEPTION_PRIV_INSTRUCTION:
    case EXCEPTION_ILLEGAL_INSTRUCTION:
    case EXCEPTION_DATATYPE_MISALIGNMENT:
    case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
    case EXCEPTION_NONCONTINUABLE_EXCEPTION:
      exit (1);
    }
  return EXCEPTION_CONTINUE_SEARCH;
}
static void
nocrash_init (void)
{
  SetUnhandledExceptionFilter ((LPTOP_LEVEL_EXCEPTION_FILTER) exception_filter);
}
#else
/* Avoid a crash on POSIX systems.  */
#include <signal.h>
#include <unistd.h>
/* A POSIX signal handler.  */
static void
exception_handler (int sig)
{
  _exit (1);
}
static void
nocrash_init (void)
{
#ifdef SIGSEGV
  signal (SIGSEGV, exception_handler);
#endif
#ifdef SIGBUS
  signal (SIGBUS, exception_handler);
#endif
}
#endif
]])

# off_t.m4 serial 1
dnl Copyright (C) 2012-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check whether to override the 'off_t' type.
dnl Set WINDOWS_64_BIT_OFF_T.

AC_DEFUN([gl_TYPE_OFF_T],
[
  m4_ifdef([gl_LARGEFILE], [
    AC_REQUIRE([gl_LARGEFILE])
  ], [
    WINDOWS_64_BIT_OFF_T=0
  ])
  AC_SUBST([WINDOWS_64_BIT_OFF_T])
])

# Test whether O_CLOEXEC is defined.

dnl Copyright 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_PREPROC_O_CLOEXEC],
[
  AC_CACHE_CHECK([for O_CLOEXEC],
    [gl_cv_macro_O_CLOEXEC],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM([[#include <fcntl.h>
                          #ifndef O_CLOEXEC
                            choke me;
                          #endif
                        ]],
                        [[return O_CLOEXEC;]])],
       [gl_cv_macro_O_CLOEXEC=yes],
       [gl_cv_macro_O_CLOEXEC=no])])
])

# open-slash.m4 serial 2
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Tests whether open() and creat() recognize a trailing slash.
dnl Sets gl_cv_func_open_slash.
AC_DEFUN([gl_OPEN_TRAILING_SLASH_BUG],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  dnl open("foo/") should not create a file when the file name has a
  dnl trailing slash.  FreeBSD only has the problem on symlinks.
  AC_CHECK_FUNCS_ONCE([lstat])
  AC_CACHE_CHECK([whether open recognizes a trailing slash],
    [gl_cv_func_open_slash],
    [# Assume that if we have lstat, we can also check symlinks.
     if test $ac_cv_func_lstat = yes; then
       touch conftest.tmp
       ln -s conftest.tmp conftest.lnk
     fi
     AC_RUN_IFELSE(
       [AC_LANG_SOURCE([[
#include <fcntl.h>
#if HAVE_UNISTD_H
# include <unistd.h>
#endif
]GL_MDA_DEFINES[
int main ()
{
  int result = 0;
#if HAVE_LSTAT
  if (open ("conftest.lnk/", O_RDONLY) != -1)
    result |= 1;
#endif
  if (open ("conftest.sl/", O_CREAT, 0600) >= 0)
    result |= 2;
  return result;
}]])],
       [gl_cv_func_open_slash=yes],
       [gl_cv_func_open_slash=no],
       [
changequote(,)dnl
        case "$host_os" in
          freebsd* | aix* | hpux* | solaris2.[0-9] | solaris2.[0-9].*)
            gl_cv_func_open_slash="guessing no" ;;
          *)
            gl_cv_func_open_slash="guessing yes" ;;
        esac
changequote([,])dnl
       ])
     rm -f conftest.sl conftest.tmp conftest.lnk
    ])
  case "$gl_cv_func_open_slash" in
    *no)
      AC_DEFINE([OPEN_TRAILING_SLASH_BUG], [1],
        [Define to 1 if open() fails to recognize a trailing slash.])
      ;;
  esac
])

# open.m4 serial 15
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_OPEN],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_PREPROC_O_CLOEXEC])
  case "$host_os" in
    mingw* | pw*)
      REPLACE_OPEN=1
      ;;
    *)
      dnl open("foo/") should not create a file when the file name has a
      dnl trailing slash.  FreeBSD only has the problem on symlinks.
      AC_CHECK_FUNCS_ONCE([lstat])
      if test "$gl_cv_macro_O_CLOEXEC" != yes; then
        REPLACE_OPEN=1
      fi
      gl_OPEN_TRAILING_SLASH_BUG
      case "$gl_cv_func_open_slash" in
        *no)
          REPLACE_OPEN=1
          ;;
      esac
      ;;
  esac
  dnl Replace open() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    if test $REPLACE_OPEN = 0; then
      gl_TEST_FCHDIR
      if test $HAVE_FCHDIR = 0; then
        REPLACE_OPEN=1
      fi
    fi
  ])
  dnl Replace open() for supporting the gnulib-defined O_NONBLOCK flag.
  m4_ifdef([gl_NONBLOCKING_IO], [
    if test $REPLACE_OPEN = 0; then
      gl_NONBLOCKING_IO
      if test $gl_cv_have_open_O_NONBLOCK != yes; then
        REPLACE_OPEN=1
      fi
    fi
  ])
])

# Prerequisites of lib/open.c.
AC_DEFUN([gl_PREREQ_OPEN],
[
  AC_REQUIRE([gl_PROMOTED_TYPE_MODE_T])
  :
])

# opendir.m4 serial 5
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_OPENDIR],
[
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  AC_CHECK_FUNCS([opendir])
  if test $ac_cv_func_opendir = no; then
    HAVE_OPENDIR=0
  fi
  dnl Replace opendir() for supporting the gnulib-defined fchdir() function,
  dnl to keep fchdir's bookkeeping up-to-date.
  m4_ifdef([gl_FUNC_FCHDIR], [
    gl_TEST_FCHDIR
    if test $HAVE_FCHDIR = 0; then
      if test $HAVE_OPENDIR = 1; then
        REPLACE_OPENDIR=1
      fi
    fi
  ])
  dnl Replace opendir() on OS/2 kLIBC to support dirfd() function replaced
  dnl by gnulib.
  case $host_os,$HAVE_OPENDIR in
    os2*,1)
      REPLACE_OPENDIR=1;;
  esac
])

# pathmax.m4 serial 11
dnl Copyright (C) 2002-2003, 2005-2006, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_PATHMAX],
[
  dnl Prerequisites of lib/pathmax.h.
  AC_CHECK_HEADERS_ONCE([sys/param.h])
])

# Expands to a piece of C program that defines PATH_MAX in the same way as
# "pathmax.h" will do.
AC_DEFUN([gl_PATHMAX_SNIPPET], [[
/* Arrange to define PATH_MAX, like "pathmax.h" does. */
#if HAVE_UNISTD_H
# include <unistd.h>
#endif
#include <limits.h>
#if defined HAVE_SYS_PARAM_H && !defined PATH_MAX && !defined MAXPATHLEN
# include <sys/param.h>
#endif
#if !defined PATH_MAX && defined MAXPATHLEN
# define PATH_MAX MAXPATHLEN
#endif
#ifdef __hpux
# undef PATH_MAX
# define PATH_MAX 1024
#endif
#if defined _WIN32 && ! defined __CYGWIN__
# undef PATH_MAX
# define PATH_MAX 260
#endif
]])

# Prerequisites of gl_PATHMAX_SNIPPET.
AC_DEFUN([gl_PATHMAX_SNIPPET_PREREQ],
[
  AC_CHECK_HEADERS_ONCE([unistd.h sys/param.h])
])

# printf-frexp.m4 serial 5
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check how to define printf_frexp() without linking with libm.

AC_DEFUN([gl_FUNC_PRINTF_FREXP],
[
  AC_REQUIRE([gl_CHECK_FREXP_NO_LIBM])
  if test $gl_cv_func_frexp_no_libm = yes; then
    gl_FUNC_FREXP_WORKS
    case "$gl_cv_func_frexp_works" in
      *yes)
        AC_DEFINE([HAVE_FREXP_IN_LIBC], [1],
          [Define if the frexp function is available in libc.])
        ;;
    esac
  fi

  AC_CACHE_CHECK([whether ldexp can be used without linking with libm],
    [gl_cv_func_ldexp_no_libm],
    [
      AC_LINK_IFELSE(
        [AC_LANG_PROGRAM(
           [[#include <math.h>
             double x;
             int y;]],
           [[return ldexp (x, y) < 1;]])],
        [gl_cv_func_ldexp_no_libm=yes],
        [gl_cv_func_ldexp_no_libm=no])
    ])
  if test $gl_cv_func_ldexp_no_libm = yes; then
    AC_DEFINE([HAVE_LDEXP_IN_LIBC], [1],
      [Define if the ldexp function is available in libc.])
  fi
])

# printf-frexpl.m4 serial 10
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check how to define printf_frexpl() without linking with libm.

AC_DEFUN([gl_FUNC_PRINTF_FREXPL],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])

  dnl Subset of gl_FUNC_FREXPL_NO_LIBM.
  gl_CHECK_FREXPL_NO_LIBM
  if test $gl_cv_func_frexpl_no_libm = yes; then
    gl_FUNC_FREXPL_WORKS
    case "$gl_cv_func_frexpl_works" in
      *yes) gl_func_frexpl_no_libm=yes ;;
      *)    gl_func_frexpl_no_libm=no; REPLACE_FREXPL=1 ;;
    esac
  else
    gl_func_frexpl_no_libm=no
    dnl Set REPLACE_FREXPL here because the system may have frexpl in libm.
    REPLACE_FREXPL=1
  fi
  if test $gl_func_frexpl_no_libm = yes; then
    AC_DEFINE([HAVE_FREXPL_IN_LIBC], [1],
      [Define if the frexpl function is available in libc.])
    dnl Also check whether it's declared.
    dnl Mac OS X 10.3 has frexpl() in libc but doesn't declare it in <math.h>.
    AC_CHECK_DECL([frexpl], , [HAVE_DECL_FREXPL=0], [[#include <math.h>]])
  fi

  gl_CHECK_LDEXPL_NO_LIBM
  if test $gl_cv_func_ldexpl_no_libm = yes; then
    gl_FUNC_LDEXPL_WORKS
    case "$gl_cv_func_ldexpl_works" in
      *yes)
        AC_DEFINE([HAVE_LDEXPL_IN_LIBC], [1],
          [Define if the ldexpl function is available in libc.])
        dnl Also check whether it's declared.
        dnl Mac OS X 10.3 has ldexpl() in libc but doesn't declare it in <math.h>.
        AC_CHECK_DECL([ldexpl], , [HAVE_DECL_LDEXPL=0], [[#include <math.h>]])
        ;;
    esac
  fi
])

# printf.m4 serial 73
dnl Copyright (C) 2003, 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Test whether the *printf family of functions supports the 'j', 'z', 't',
dnl 'L' size specifiers. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_sizes_c99.

AC_DEFUN([gl_PRINTF_SIZES_C99],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gl_AC_HEADER_STDINT_H])
  AC_REQUIRE([gl_AC_HEADER_INTTYPES_H])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports size specifiers as in C99],
    [gl_cv_func_printf_sizes_c99],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#if HAVE_STDINT_H_WITH_UINTMAX
# include <stdint.h>
#endif
#if HAVE_INTTYPES_H_WITH_UINTMAX
# include <inttypes.h>
#endif
static char buf[100];
int main ()
{
  int result = 0;
#if HAVE_STDINT_H_WITH_UINTMAX || HAVE_INTTYPES_H_WITH_UINTMAX
  buf[0] = '\0';
  if (sprintf (buf, "%ju %d", (uintmax_t) 12345671, 33, 44, 55) < 0
      || strcmp (buf, "12345671 33") != 0)
    result |= 1;
#else
  result |= 1;
#endif
  buf[0] = '\0';
  if (sprintf (buf, "%zu %d", (size_t) 12345672, 33, 44, 55) < 0
      || strcmp (buf, "12345672 33") != 0)
    result |= 2;
  buf[0] = '\0';
  if (sprintf (buf, "%tu %d", (ptrdiff_t) 12345673, 33, 44, 55) < 0
      || strcmp (buf, "12345673 33") != 0)
    result |= 4;
  buf[0] = '\0';
  if (sprintf (buf, "%Lg %d", (long double) 1.5, 33, 44, 55) < 0
      || strcmp (buf, "1.5 33") != 0)
    result |= 8;
  return result;
}]])],
        [gl_cv_func_printf_sizes_c99=yes],
        [gl_cv_func_printf_sizes_c99=no],
        [
         case "$host_os" in
changequote(,)dnl
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on FreeBSD >= 5.
           freebsd[1-4].*)       gl_cv_func_printf_sizes_c99="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_printf_sizes_c99="guessing yes";;
           midnightbsd*)         gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_printf_sizes_c99="guessing no";;
           darwin*)              gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on OpenBSD >= 3.9.
           openbsd[1-2].* | openbsd3.[0-8] | openbsd3.[0-8].*)
                                 gl_cv_func_printf_sizes_c99="guessing no";;
           openbsd*)             gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on Solaris >= 2.10.
           solaris2.[1-9][0-9]*) gl_cv_func_printf_sizes_c99="guessing yes";;
           solaris*)             gl_cv_func_printf_sizes_c99="guessing no";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_printf_sizes_c99="guessing no";;
           netbsd*)              gl_cv_func_printf_sizes_c99="guessing yes";;
                                 # Guess yes on Android.
           linux*-android*)      gl_cv_func_printf_sizes_c99="guessing yes";;
changequote([,])dnl
                                 # Guess yes on MSVC, no on mingw.
           mingw*)               AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                                   ],
                                   [gl_cv_func_printf_sizes_c99="guessing yes"],
                                   [gl_cv_func_printf_sizes_c99="guessing no"])
                                 ;;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_printf_sizes_c99="$gl_cross_guess_normal";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports 'long double'
dnl arguments together with the 'L' size specifier. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_long_double.

AC_DEFUN([gl_PRINTF_LONG_DOUBLE],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports 'long double' arguments],
    [gl_cv_func_printf_long_double],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[10000];
int main ()
{
  int result = 0;
  buf[0] = '\0';
  if (sprintf (buf, "%Lf %d", 1.75L, 33, 44, 55) < 0
      || strcmp (buf, "1.750000 33") != 0)
    result |= 1;
  buf[0] = '\0';
  if (sprintf (buf, "%Le %d", 1.75L, 33, 44, 55) < 0
      || strcmp (buf, "1.750000e+00 33") != 0)
    result |= 2;
  buf[0] = '\0';
  if (sprintf (buf, "%Lg %d", 1.75L, 33, 44, 55) < 0
      || strcmp (buf, "1.75 33") != 0)
    result |= 4;
  return result;
}]])],
        [gl_cv_func_printf_long_double=yes],
        [gl_cv_func_printf_long_double=no],
        [case "$host_os" in
                            # Guess no on BeOS.
           beos*)           gl_cv_func_printf_long_double="guessing no";;
                            # Guess yes on Android.
           linux*-android*) gl_cv_func_printf_long_double="guessing yes";;
                            # Guess yes on MSVC, no on mingw.
           mingw*)          AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                              ],
                              [gl_cv_func_printf_long_double="guessing yes"],
                              [gl_cv_func_printf_long_double="guessing no"])
                            ;;
           *)               gl_cv_func_printf_long_double="guessing yes";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports infinite and NaN
dnl 'double' arguments and negative zero arguments in the %f, %e, %g
dnl directives. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_infinite.

AC_DEFUN([gl_PRINTF_INFINITE],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports infinite 'double' arguments],
    [gl_cv_func_printf_infinite],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static int
strisnan (const char *string, size_t start_index, size_t end_index)
{
  if (start_index < end_index)
    {
      if (string[start_index] == '-')
        start_index++;
      if (start_index + 3 <= end_index
          && memcmp (string + start_index, "nan", 3) == 0)
        {
          start_index += 3;
          if (start_index == end_index
              || (string[start_index] == '(' && string[end_index - 1] == ')'))
            return 1;
        }
    }
  return 0;
}
static int
have_minus_zero ()
{
  static double plus_zero = 0.0;
  double minus_zero = - plus_zero;
  return memcmp (&plus_zero, &minus_zero, sizeof (double)) != 0;
}
static char buf[10000];
static double zero = 0.0;
int main ()
{
  int result = 0;
  if (sprintf (buf, "%f", 1.0 / zero) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%f", -1.0 / zero) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%f", zero / zero) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 2;
  if (sprintf (buf, "%e", 1.0 / zero) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 4;
  if (sprintf (buf, "%e", -1.0 / zero) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 4;
  if (sprintf (buf, "%e", zero / zero) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 8;
  if (sprintf (buf, "%g", 1.0 / zero) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 16;
  if (sprintf (buf, "%g", -1.0 / zero) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 16;
  if (sprintf (buf, "%g", zero / zero) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 32;
  /* This test fails on HP-UX 10.20.  */
  if (have_minus_zero ())
    if (sprintf (buf, "%g", - zero) < 0
        || strcmp (buf, "-0") != 0)
    result |= 64;
  return result;
}]])],
        [gl_cv_func_printf_infinite=yes],
        [gl_cv_func_printf_infinite=no],
        [
         case "$host_os" in
changequote(,)dnl
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on FreeBSD >= 6.
           freebsd[1-5].*)       gl_cv_func_printf_infinite="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_printf_infinite="guessing yes";;
           midnightbsd*)         gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_printf_infinite="guessing no";;
           darwin*)              gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on HP-UX >= 11.
           hpux[7-9]* | hpux10*) gl_cv_func_printf_infinite="guessing no";;
           hpux*)                gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_printf_infinite="guessing no";;
           netbsd*)              gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on OpenBSD >= 6.0.
           openbsd[1-5].*)       gl_cv_func_printf_infinite="guessing no";;
           openbsd*)             gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess yes on BeOS.
           beos*)                gl_cv_func_printf_infinite="guessing yes";;
                                 # Guess no on Android.
           linux*-android*)      gl_cv_func_printf_infinite="guessing no";;
changequote([,])dnl
                                 # Guess yes on MSVC, no on mingw.
           mingw*)               AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                                   ],
                                   [gl_cv_func_printf_infinite="guessing yes"],
                                   [gl_cv_func_printf_infinite="guessing no"])
                                 ;;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_printf_infinite="$gl_cross_guess_normal";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports infinite and NaN
dnl 'long double' arguments in the %f, %e, %g directives. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_infinite_long_double.

AC_DEFUN([gl_PRINTF_INFINITE_LONG_DOUBLE],
[
  AC_REQUIRE([gl_PRINTF_LONG_DOUBLE])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gl_BIGENDIAN])
  AC_REQUIRE([gl_LONG_DOUBLE_VS_DOUBLE])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  dnl The user can set or unset the variable gl_printf_safe to indicate
  dnl that he wishes a safe handling of non-IEEE-754 'long double' values.
  if test -n "$gl_printf_safe"; then
    AC_DEFINE([CHECK_PRINTF_SAFE], [1],
      [Define if you wish *printf() functions that have a safe handling of
       non-IEEE-754 'long double' values.])
  fi
  case "$gl_cv_func_printf_long_double" in
    *yes)
      AC_CACHE_CHECK([whether printf supports infinite 'long double' arguments],
        [gl_cv_func_printf_infinite_long_double],
        [
          AC_RUN_IFELSE(
            [AC_LANG_SOURCE([[
]GL_NOCRASH[
#include <float.h>
#include <stdio.h>
#include <string.h>
static int
strisnan (const char *string, size_t start_index, size_t end_index)
{
  if (start_index < end_index)
    {
      if (string[start_index] == '-')
        start_index++;
      if (start_index + 3 <= end_index
          && memcmp (string + start_index, "nan", 3) == 0)
        {
          start_index += 3;
          if (start_index == end_index
              || (string[start_index] == '(' && string[end_index - 1] == ')'))
            return 1;
        }
    }
  return 0;
}
static char buf[10000];
static long double zeroL = 0.0L;
int main ()
{
  int result = 0;
  nocrash_init();
  if (sprintf (buf, "%Lf", 1.0L / zeroL) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Lf", -1.0L / zeroL) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Lf", zeroL / zeroL) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 1;
  if (sprintf (buf, "%Le", 1.0L / zeroL) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Le", -1.0L / zeroL) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Le", zeroL / zeroL) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 1;
  if (sprintf (buf, "%Lg", 1.0L / zeroL) < 0
      || (strcmp (buf, "inf") != 0 && strcmp (buf, "infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Lg", -1.0L / zeroL) < 0
      || (strcmp (buf, "-inf") != 0 && strcmp (buf, "-infinity") != 0))
    result |= 1;
  if (sprintf (buf, "%Lg", zeroL / zeroL) < 0
      || !strisnan (buf, 0, strlen (buf)))
    result |= 1;
#if CHECK_PRINTF_SAFE && ((defined __ia64 && LDBL_MANT_DIG == 64) || (defined __x86_64__ || defined __amd64__) || (defined __i386 || defined __i386__ || defined _I386 || defined _M_IX86 || defined _X86_)) && !HAVE_SAME_LONG_DOUBLE_AS_DOUBLE
/* Representation of an 80-bit 'long double' as an initializer for a sequence
   of 'unsigned int' words.  */
# ifdef WORDS_BIGENDIAN
#  define LDBL80_WORDS(exponent,manthi,mantlo) \
     { ((unsigned int) (exponent) << 16) | ((unsigned int) (manthi) >> 16), \
       ((unsigned int) (manthi) << 16) | ((unsigned int) (mantlo) >> 16),   \
       (unsigned int) (mantlo) << 16                                        \
     }
# else
#  define LDBL80_WORDS(exponent,manthi,mantlo) \
     { mantlo, manthi, exponent }
# endif
  { /* Quiet NaN.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0xFFFF, 0xC3333333, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
    if (sprintf (buf, "%Le", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
    if (sprintf (buf, "%Lg", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
  }
  {
    /* Signalling NaN.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0xFFFF, 0x83333333, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
    if (sprintf (buf, "%Le", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
    if (sprintf (buf, "%Lg", x.value) < 0
        || !strisnan (buf, 0, strlen (buf)))
      result |= 2;
  }
  { /* Pseudo-NaN.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0xFFFF, 0x40000001, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) <= 0)
      result |= 4;
    if (sprintf (buf, "%Le", x.value) <= 0)
      result |= 4;
    if (sprintf (buf, "%Lg", x.value) <= 0)
      result |= 4;
  }
  { /* Pseudo-Infinity.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0xFFFF, 0x00000000, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) <= 0)
      result |= 8;
    if (sprintf (buf, "%Le", x.value) <= 0)
      result |= 8;
    if (sprintf (buf, "%Lg", x.value) <= 0)
      result |= 8;
  }
  { /* Pseudo-Zero.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0x4004, 0x00000000, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) <= 0)
      result |= 16;
    if (sprintf (buf, "%Le", x.value) <= 0)
      result |= 16;
    if (sprintf (buf, "%Lg", x.value) <= 0)
      result |= 16;
  }
  { /* Unnormalized number.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0x4000, 0x63333333, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) <= 0)
      result |= 32;
    if (sprintf (buf, "%Le", x.value) <= 0)
      result |= 32;
    if (sprintf (buf, "%Lg", x.value) <= 0)
      result |= 32;
  }
  { /* Pseudo-Denormal.  */
    static union { unsigned int word[4]; long double value; } x =
      { LDBL80_WORDS (0x0000, 0x83333333, 0x00000000) };
    if (sprintf (buf, "%Lf", x.value) <= 0)
      result |= 64;
    if (sprintf (buf, "%Le", x.value) <= 0)
      result |= 64;
    if (sprintf (buf, "%Lg", x.value) <= 0)
      result |= 64;
  }
#endif
  return result;
}]])],
            [gl_cv_func_printf_infinite_long_double=yes],
            [gl_cv_func_printf_infinite_long_double=no],
            [case "$host_cpu" in
                                     # Guess no on ia64, x86_64, i386.
               ia64 | x86_64 | i*86) gl_cv_func_printf_infinite_long_double="guessing no";;
               *)
                 case "$host_os" in
changequote(,)dnl
                                         # Guess yes on glibc systems.
                   *-gnu* | gnu*)        gl_cv_func_printf_infinite_long_double="guessing yes";;
                                         # Guess yes on musl systems.
                   *-musl*)              gl_cv_func_printf_infinite_long_double="guessing yes";;
                                         # Guess yes on FreeBSD >= 6.
                   freebsd[1-5].*)       gl_cv_func_printf_infinite_long_double="guessing no";;
                   freebsd* | kfreebsd*) gl_cv_func_printf_infinite_long_double="guessing yes";;
                   midnightbsd*)         gl_cv_func_printf_infinite_long_double="guessing yes";;
                                         # Guess yes on HP-UX >= 11.
                   hpux[7-9]* | hpux10*) gl_cv_func_printf_infinite_long_double="guessing no";;
                   hpux*)                gl_cv_func_printf_infinite_long_double="guessing yes";;
                                         # Guess yes on OpenBSD >= 6.0.
                   openbsd[1-5].*)       gl_cv_func_printf_infinite_long_double="guessing no";;
                   openbsd*)             gl_cv_func_printf_infinite_long_double="guessing yes";;
                                         # Guess no on Android.
                   linux*-android*)      gl_cv_func_printf_infinite_long_double="guessing no";;
changequote([,])dnl
                                         # Guess yes on MSVC, no on mingw.
                   mingw*)               AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                                           ],
                                           [gl_cv_func_printf_infinite_long_double="guessing yes"],
                                           [gl_cv_func_printf_infinite_long_double="guessing no"])
                                         ;;
                                         # If we don't know, obey --enable-cross-guesses.
                   *)                    gl_cv_func_printf_infinite_long_double="$gl_cross_guess_normal";;
                 esac
                 ;;
             esac
            ])
        ])
      ;;
    *)
      gl_cv_func_printf_infinite_long_double="irrelevant"
      ;;
  esac
])

dnl Test whether the *printf family of functions supports the 'a' and 'A'
dnl conversion specifier for hexadecimal output of floating-point numbers.
dnl (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_directive_a.

AC_DEFUN([gl_PRINTF_DIRECTIVE_A],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the 'a' and 'A' directives],
    [gl_cv_func_printf_directive_a],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[100];
static double zero = 0.0;
int main ()
{
  int result = 0;
  if (sprintf (buf, "%a %d", 3.1416015625, 33, 44, 55) < 0
      || (strcmp (buf, "0x1.922p+1 33") != 0
          && strcmp (buf, "0x3.244p+0 33") != 0
          && strcmp (buf, "0x6.488p-1 33") != 0
          && strcmp (buf, "0xc.91p-2 33") != 0))
    result |= 1;
  if (sprintf (buf, "%A %d", -3.1416015625, 33, 44, 55) < 0
      || (strcmp (buf, "-0X1.922P+1 33") != 0
          && strcmp (buf, "-0X3.244P+0 33") != 0
          && strcmp (buf, "-0X6.488P-1 33") != 0
          && strcmp (buf, "-0XC.91P-2 33") != 0))
    result |= 2;
  /* This catches a FreeBSD 13.0 bug: it doesn't round.  */
  if (sprintf (buf, "%.2a %d", 1.51, 33, 44, 55) < 0
      || (strcmp (buf, "0x1.83p+0 33") != 0
          && strcmp (buf, "0x3.05p-1 33") != 0
          && strcmp (buf, "0x6.0ap-2 33") != 0
          && strcmp (buf, "0xc.14p-3 33") != 0))
    result |= 4;
  /* This catches a Mac OS X 10.12.4 (Darwin 16.5) bug: it doesn't round.  */
  if (sprintf (buf, "%.0a %d", 1.51, 33, 44, 55) < 0
      || (strcmp (buf, "0x2p+0 33") != 0
          && strcmp (buf, "0x3p-1 33") != 0
          && strcmp (buf, "0x6p-2 33") != 0
          && strcmp (buf, "0xcp-3 33") != 0))
    result |= 4;
  /* This catches a FreeBSD 6.1 bug.  See
     <https://lists.gnu.org/r/bug-gnulib/2007-04/msg00107.html> */
  if (sprintf (buf, "%010a %d", 1.0 / zero, 33, 44, 55) < 0
      || buf[0] == '0')
    result |= 8;
  /* This catches a Mac OS X 10.3.9 (Darwin 7.9) bug.  */
  if (sprintf (buf, "%.1a", 1.999) < 0
      || (strcmp (buf, "0x1.0p+1") != 0
          && strcmp (buf, "0x2.0p+0") != 0
          && strcmp (buf, "0x4.0p-1") != 0
          && strcmp (buf, "0x8.0p-2") != 0))
    result |= 16;
  /* This catches the same Mac OS X 10.3.9 (Darwin 7.9) bug and also a
     glibc 2.4 bug <https://sourceware.org/bugzilla/show_bug.cgi?id=2908>.  */
  if (sprintf (buf, "%.1La", 1.999L) < 0
      || (strcmp (buf, "0x1.0p+1") != 0
          && strcmp (buf, "0x2.0p+0") != 0
          && strcmp (buf, "0x4.0p-1") != 0
          && strcmp (buf, "0x8.0p-2") != 0))
    result |= 32;
  return result;
}]])],
        [gl_cv_func_printf_directive_a=yes],
        [gl_cv_func_printf_directive_a=no],
        [
         case "$host_os" in
                                 # Guess yes on glibc >= 2.5 systems.
           *-gnu* | gnu*)
             AC_EGREP_CPP([BZ2908], [
               #include <features.h>
               #ifdef __GNU_LIBRARY__
                #if ((__GLIBC__ == 2 && __GLIBC_MINOR__ >= 5) || (__GLIBC__ > 2)) && !defined __UCLIBC__
                 BZ2908
                #endif
               #endif
               ],
               [gl_cv_func_printf_directive_a="guessing yes"],
               [gl_cv_func_printf_directive_a="guessing no"])
             ;;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_printf_directive_a="guessing yes";;
                                 # Guess no on Android.
           linux*-android*)      gl_cv_func_printf_directive_a="guessing no";;
                                 # Guess no on native Windows.
           mingw*)               gl_cv_func_printf_directive_a="guessing no";;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_printf_directive_a="$gl_cross_guess_normal";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports the %F format
dnl directive. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_directive_f.

AC_DEFUN([gl_PRINTF_DIRECTIVE_F],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the 'F' directive],
    [gl_cv_func_printf_directive_f],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[100];
static double zero = 0.0;
int main ()
{
  int result = 0;
  if (sprintf (buf, "%F %d", 1234567.0, 33, 44, 55) < 0
      || strcmp (buf, "1234567.000000 33") != 0)
    result |= 1;
  if (sprintf (buf, "%F", 1.0 / zero) < 0
      || (strcmp (buf, "INF") != 0 && strcmp (buf, "INFINITY") != 0))
    result |= 2;
  /* This catches a Cygwin 1.5.x bug.  */
  if (sprintf (buf, "%.F", 1234.0) < 0
      || strcmp (buf, "1234") != 0)
    result |= 4;
  return result;
}]])],
        [gl_cv_func_printf_directive_f=yes],
        [gl_cv_func_printf_directive_f=no],
        [
         case "$host_os" in
changequote(,)dnl
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_printf_directive_f="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_printf_directive_f="guessing yes";;
                                 # Guess yes on FreeBSD >= 6.
           freebsd[1-5].*)       gl_cv_func_printf_directive_f="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_printf_directive_f="guessing yes";;
           midnightbsd*)         gl_cv_func_printf_directive_f="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_printf_directive_f="guessing no";;
           darwin*)              gl_cv_func_printf_directive_f="guessing yes";;
                                 # Guess yes on OpenBSD >= 6.0.
           openbsd[1-5].*)       gl_cv_func_printf_directive_f="guessing no";;
           openbsd*)             gl_cv_func_printf_directive_f="guessing yes";;
                                 # Guess yes on Solaris >= 2.10.
           solaris2.[1-9][0-9]*) gl_cv_func_printf_directive_f="guessing yes";;
           solaris*)             gl_cv_func_printf_directive_f="guessing no";;
                                 # Guess no on Android.
           linux*-android*)      gl_cv_func_printf_directive_f="guessing no";;
changequote([,])dnl
                                 # Guess yes on MSVC, no on mingw.
           mingw*)               AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                                   ],
                                   [gl_cv_func_printf_directive_f="guessing yes"],
                                   [gl_cv_func_printf_directive_f="guessing no"])
                                 ;;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_printf_directive_f="$gl_cross_guess_normal";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports the %n format
dnl directive. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_printf_directive_n.

AC_DEFUN([gl_PRINTF_DIRECTIVE_N],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the 'n' directive],
    [gl_cv_func_printf_directive_n],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _MSC_VER
#include <inttypes.h>
/* See page about "Parameter Validation" on msdn.microsoft.com.
   <https://docs.microsoft.com/en-us/cpp/c-runtime-library/parameter-validation>
   <https://docs.microsoft.com/en-us/cpp/c-runtime-library/reference/set-invalid-parameter-handler-set-thread-local-invalid-parameter-handler>  */
static void cdecl
invalid_parameter_handler (const wchar_t *expression,
                           const wchar_t *function,
                           const wchar_t *file, unsigned int line,
                           uintptr_t dummy)
{
  exit (1);
}
#endif
static char fmtstring[10];
static char buf[100];
int main ()
{
  int count = -1;
#ifdef _MSC_VER
  _set_invalid_parameter_handler (invalid_parameter_handler);
#endif
  /* Copy the format string.  Some systems (glibc with _FORTIFY_SOURCE=2)
     support %n in format strings in read-only memory but not in writable
     memory.  */
  strcpy (fmtstring, "%d %n");
  if (sprintf (buf, fmtstring, 123, &count, 33, 44, 55) < 0
      || strcmp (buf, "123 ") != 0
      || count != 4)
    return 1;
  return 0;
}]])],
        [gl_cv_func_printf_directive_n=yes],
        [gl_cv_func_printf_directive_n=no],
        [case "$host_os" in
                            # Guess no on glibc when _FORTIFY_SOURCE >= 2.
           *-gnu* | gnu*)   AC_COMPILE_IFELSE(
                              [AC_LANG_SOURCE(
                                 [[#if _FORTIFY_SOURCE >= 2
                                    error fail
                                   #endif
                                 ]])],
                              [gl_cv_func_printf_directive_n="guessing yes"],
                              [gl_cv_func_printf_directive_n="guessing no"])
                            ;;
                            # Guess no on Android.
           linux*-android*) gl_cv_func_printf_directive_n="guessing no";;
                            # Guess no on native Windows.
           mingw*)          gl_cv_func_printf_directive_n="guessing no";;
           *)               gl_cv_func_printf_directive_n="guessing yes";;
         esac
        ])
    ])
])

dnl Test whether the *printf family of functions supports the %ls format
dnl directive and in particular, when a precision is specified, whether
dnl the functions stop converting the wide string argument when the number
dnl of bytes that have been produced by this conversion equals or exceeds
dnl the precision.
dnl Result is gl_cv_func_printf_directive_ls.

AC_DEFUN([gl_PRINTF_DIRECTIVE_LS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the 'ls' directive],
    [gl_cv_func_printf_directive_ls],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <wchar.h>
#include <string.h>
int main ()
{
  int result = 0;
  char buf[100];
  /* Test whether %ls works at all.
     This test fails on OpenBSD 4.0, IRIX 6.5, Solaris 2.6, Haiku, but not on
     Cygwin 1.5.  */
  {
    static const wchar_t wstring[] = { 'a', 'b', 'c', 0 };
    buf[0] = '\0';
    if (sprintf (buf, "%ls", wstring) < 0
        || strcmp (buf, "abc") != 0)
      result |= 1;
  }
  /* This test fails on IRIX 6.5, Solaris 2.6, Cygwin 1.5, Haiku (with an
     assertion failure inside libc), but not on OpenBSD 4.0.  */
  {
    static const wchar_t wstring[] = { 'a', 0 };
    buf[0] = '\0';
    if (sprintf (buf, "%ls", wstring) < 0
        || strcmp (buf, "a") != 0)
      result |= 2;
  }
  /* Test whether precisions in %ls are supported as specified in ISO C 99
     section 7.19.6.1:
       "If a precision is specified, no more than that many bytes are written
        (including shift sequences, if any), and the array shall contain a
        null wide character if, to equal the multibyte character sequence
        length given by the precision, the function would need to access a
        wide character one past the end of the array."
     This test fails on Solaris 10.  */
  {
    static const wchar_t wstring[] = { 'a', 'b', (wchar_t) 0xfdfdfdfd, 0 };
    buf[0] = '\0';
    if (sprintf (buf, "%.2ls", wstring) < 0
        || strcmp (buf, "ab") != 0)
      result |= 8;
  }
  return result;
}]])],
        [gl_cv_func_printf_directive_ls=yes],
        [gl_cv_func_printf_directive_ls=no],
        [
changequote(,)dnl
         case "$host_os" in
                            # Guess yes on OpenBSD >= 6.0.
           openbsd[1-5].*)  gl_cv_func_printf_directive_ls="guessing no";;
           openbsd*)        gl_cv_func_printf_directive_ls="guessing yes";;
           irix*)           gl_cv_func_printf_directive_ls="guessing no";;
           solaris*)        gl_cv_func_printf_directive_ls="guessing no";;
           cygwin*)         gl_cv_func_printf_directive_ls="guessing no";;
           beos* | haiku*)  gl_cv_func_printf_directive_ls="guessing no";;
                            # Guess no on Android.
           linux*-android*) gl_cv_func_printf_directive_ls="guessing no";;
                            # Guess yes on native Windows.
           mingw*)          gl_cv_func_printf_directive_ls="guessing yes";;
           *)               gl_cv_func_printf_directive_ls="guessing yes";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions supports POSIX/XSI format
dnl strings with positions. (POSIX:2001)
dnl Result is gl_cv_func_printf_positions.

AC_DEFUN([gl_PRINTF_POSITIONS],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports POSIX/XSI format strings with positions],
    [gl_cv_func_printf_positions],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
/* The string "%2$d %1$d", with dollar characters protected from the shell's
   dollar expansion (possibly an autoconf bug).  */
static char format[] = { '%', '2', '$', 'd', ' ', '%', '1', '$', 'd', '\0' };
static char buf[100];
int main ()
{
  sprintf (buf, format, 33, 55);
  return (strcmp (buf, "55 33") != 0);
}]])],
        [gl_cv_func_printf_positions=yes],
        [gl_cv_func_printf_positions=no],
        [
changequote(,)dnl
         case "$host_os" in
           netbsd[1-3]* | netbsdelf[1-3]* | netbsdaout[1-3]* | netbsdcoff[1-3]*)
                            gl_cv_func_printf_positions="guessing no";;
           beos*)           gl_cv_func_printf_positions="guessing no";;
                            # Guess yes on Android.
           linux*-android*) gl_cv_func_printf_positions="guessing yes";;
                            # Guess no on native Windows.
           mingw* | pw*)    gl_cv_func_printf_positions="guessing no";;
           *)               gl_cv_func_printf_positions="guessing yes";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions supports POSIX/XSI format
dnl strings with the ' flag for grouping of decimal digits. (POSIX:2001)
dnl Result is gl_cv_func_printf_flag_grouping.

AC_DEFUN([gl_PRINTF_FLAG_GROUPING],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the grouping flag],
    [gl_cv_func_printf_flag_grouping],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[100];
int main ()
{
  if (sprintf (buf, "%'d %d", 1234567, 99) < 0
      || buf[strlen (buf) - 1] != '9')
    return 1;
  return 0;
}]])],
        [gl_cv_func_printf_flag_grouping=yes],
        [gl_cv_func_printf_flag_grouping=no],
        [
changequote(,)dnl
         case "$host_os" in
           cygwin*)         gl_cv_func_printf_flag_grouping="guessing no";;
           netbsd*)         gl_cv_func_printf_flag_grouping="guessing no";;
                            # Guess no on Android.
           linux*-android*) gl_cv_func_printf_flag_grouping="guessing no";;
                            # Guess no on native Windows.
           mingw* | pw*)    gl_cv_func_printf_flag_grouping="guessing no";;
           *)               gl_cv_func_printf_flag_grouping="guessing yes";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions supports the - flag correctly.
dnl (ISO C99.) See
dnl <https://lists.gnu.org/r/bug-coreutils/2008-02/msg00035.html>
dnl Result is gl_cv_func_printf_flag_leftadjust.

AC_DEFUN([gl_PRINTF_FLAG_LEFTADJUST],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the left-adjust flag correctly],
    [gl_cv_func_printf_flag_leftadjust],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[100];
int main ()
{
  /* Check that a '-' flag is not annihilated by a negative width.  */
  if (sprintf (buf, "a%-*sc", -3, "b") < 0
      || strcmp (buf, "ab  c") != 0)
    return 1;
  return 0;
}]])],
        [gl_cv_func_printf_flag_leftadjust=yes],
        [gl_cv_func_printf_flag_leftadjust=no],
        [
changequote(,)dnl
         case "$host_os" in
                            # Guess yes on HP-UX 11.
           hpux11*)         gl_cv_func_printf_flag_leftadjust="guessing yes";;
                            # Guess no on HP-UX 10 and older.
           hpux*)           gl_cv_func_printf_flag_leftadjust="guessing no";;
                            # Guess yes on Android.
           linux*-android*) gl_cv_func_printf_flag_leftadjust="guessing yes";;
                            # Guess yes on native Windows.
           mingw*)          gl_cv_func_printf_flag_leftadjust="guessing yes";;
                            # Guess yes otherwise.
           *)               gl_cv_func_printf_flag_leftadjust="guessing yes";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions supports padding of non-finite
dnl values with the 0 flag correctly. (ISO C99 + TC1 + TC2.) See
dnl <https://lists.gnu.org/r/bug-gnulib/2007-04/msg00107.html>
dnl Result is gl_cv_func_printf_flag_zero.

AC_DEFUN([gl_PRINTF_FLAG_ZERO],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports the zero flag correctly],
    [gl_cv_func_printf_flag_zero],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[100];
static double zero = 0.0;
int main ()
{
  if (sprintf (buf, "%010f", 1.0 / zero, 33, 44, 55) < 0
      || (strcmp (buf, "       inf") != 0
          && strcmp (buf, "  infinity") != 0))
    return 1;
  return 0;
}]])],
        [gl_cv_func_printf_flag_zero=yes],
        [gl_cv_func_printf_flag_zero=no],
        [
changequote(,)dnl
         case "$host_os" in
                            # Guess yes on glibc systems.
           *-gnu* | gnu*)   gl_cv_func_printf_flag_zero="guessing yes";;
                            # Guess yes on musl systems.
           *-musl*)         gl_cv_func_printf_flag_zero="guessing yes";;
                            # Guess yes on BeOS.
           beos*)           gl_cv_func_printf_flag_zero="guessing yes";;
                            # Guess no on Android.
           linux*-android*) gl_cv_func_printf_flag_zero="guessing no";;
                            # Guess no on native Windows.
           mingw*)          gl_cv_func_printf_flag_zero="guessing no";;
                            # If we don't know, obey --enable-cross-guesses.
           *)               gl_cv_func_printf_flag_zero="$gl_cross_guess_normal";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions supports large precisions.
dnl On mingw, precisions larger than 512 are treated like 512, in integer,
dnl floating-point or pointer output. On Solaris 10/x86, precisions larger
dnl than 510 in floating-point output crash the program. On Solaris 10/SPARC,
dnl precisions larger than 510 in floating-point output yield wrong results.
dnl On AIX 7.1, precisions larger than 998 in floating-point output yield
dnl wrong results. On BeOS, precisions larger than 1044 crash the program.
dnl Result is gl_cv_func_printf_precision.

AC_DEFUN([gl_PRINTF_PRECISION],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf supports large precisions],
    [gl_cv_func_printf_precision],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
static char buf[5000];
int main ()
{
  int result = 0;
#ifdef __BEOS__
  /* On BeOS, this would crash and show a dialog box.  Avoid the crash.  */
  return 1;
#endif
  if (sprintf (buf, "%.4000d %d", 1, 33, 44) < 4000 + 3)
    result |= 1;
  if (sprintf (buf, "%.4000f %d", 1.0, 33, 44) < 4000 + 5)
    result |= 2;
  if (sprintf (buf, "%.511f %d", 1.0, 33, 44) < 511 + 5
      || buf[0] != '1')
    result |= 4;
  if (sprintf (buf, "%.999f %d", 1.0, 33, 44) < 999 + 5
      || buf[0] != '1')
    result |= 4;
  return result;
}]])],
        [gl_cv_func_printf_precision=yes],
        [gl_cv_func_printf_precision=no],
        [
changequote(,)dnl
         case "$host_os" in
           # Guess no only on Solaris, native Windows, and BeOS systems.
           solaris*)        gl_cv_func_printf_precision="guessing no" ;;
           mingw* | pw*)    gl_cv_func_printf_precision="guessing no" ;;
           beos*)           gl_cv_func_printf_precision="guessing no" ;;
                            # Guess yes on Android.
           linux*-android*) gl_cv_func_printf_precision="guessing yes" ;;
           *)               gl_cv_func_printf_precision="guessing yes" ;;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the *printf family of functions recovers gracefully in case
dnl of an out-of-memory condition, or whether it crashes the entire program.
dnl Result is gl_cv_func_printf_enomem.

AC_DEFUN([gl_PRINTF_ENOMEM],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([gl_MULTIARCH])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether printf survives out-of-memory conditions],
    [gl_cv_func_printf_enomem],
    [
      gl_cv_func_printf_enomem="guessing no"
      if test "$cross_compiling" = no; then
        if test $APPLE_UNIVERSAL_BUILD = 0; then
          AC_LANG_CONFTEST([AC_LANG_SOURCE([[
]GL_NOCRASH[
#include <stdio.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <errno.h>
int main()
{
  struct rlimit limit;
  int ret;
  nocrash_init ();
  /* Some printf implementations allocate temporary space with malloc.  */
  /* On BSD systems, malloc() is limited by RLIMIT_DATA.  */
#ifdef RLIMIT_DATA
  if (getrlimit (RLIMIT_DATA, &limit) < 0)
    return 77;
  if (limit.rlim_max == RLIM_INFINITY || limit.rlim_max > 5000000)
    limit.rlim_max = 5000000;
  limit.rlim_cur = limit.rlim_max;
  if (setrlimit (RLIMIT_DATA, &limit) < 0)
    return 77;
#endif
  /* On Linux systems, malloc() is limited by RLIMIT_AS.  */
#ifdef RLIMIT_AS
  if (getrlimit (RLIMIT_AS, &limit) < 0)
    return 77;
  if (limit.rlim_max == RLIM_INFINITY || limit.rlim_max > 5000000)
    limit.rlim_max = 5000000;
  limit.rlim_cur = limit.rlim_max;
  if (setrlimit (RLIMIT_AS, &limit) < 0)
    return 77;
#endif
  /* Some printf implementations allocate temporary space on the stack.  */
#ifdef RLIMIT_STACK
  if (getrlimit (RLIMIT_STACK, &limit) < 0)
    return 77;
  if (limit.rlim_max == RLIM_INFINITY || limit.rlim_max > 5000000)
    limit.rlim_max = 5000000;
  limit.rlim_cur = limit.rlim_max;
  if (setrlimit (RLIMIT_STACK, &limit) < 0)
    return 77;
#endif
  ret = printf ("%.5000000f", 1.0);
  return !(ret == 5000002 || (ret < 0 && errno == ENOMEM));
}
          ]])])
          if AC_TRY_EVAL([ac_link]) && test -s conftest$ac_exeext; then
            (./conftest 2>&AS_MESSAGE_LOG_FD
             result=$?
             _AS_ECHO_LOG([\$? = $result])
             if test $result != 0 && test $result != 77; then result=1; fi
             exit $result
            ) >/dev/null 2>/dev/null
            case $? in
              0) gl_cv_func_printf_enomem="yes" ;;
              77) gl_cv_func_printf_enomem="guessing no" ;;
              *) gl_cv_func_printf_enomem="no" ;;
            esac
          else
            gl_cv_func_printf_enomem="guessing no"
          fi
          rm -fr conftest*
        else
          dnl A universal build on Apple Mac OS X platforms.
          dnl The result would be 'no' in 32-bit mode and 'yes' in 64-bit mode.
          dnl But we need a configuration result that is valid in both modes.
          gl_cv_func_printf_enomem="guessing no"
        fi
      fi
      if test "$gl_cv_func_printf_enomem" = "guessing no"; then
changequote(,)dnl
        case "$host_os" in
                           # Guess yes on glibc systems.
          *-gnu* | gnu*)   gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on Solaris.
          solaris*)        gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on AIX.
          aix*)            gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on HP-UX/hppa.
          hpux*)           case "$host_cpu" in
                             hppa*) gl_cv_func_printf_enomem="guessing yes";;
                             *)     gl_cv_func_printf_enomem="guessing no";;
                           esac
                           ;;
                           # Guess yes on IRIX.
          irix*)           gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on OSF/1.
          osf*)            gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on BeOS.
          beos*)           gl_cv_func_printf_enomem="guessing yes";;
                           # Guess yes on Haiku.
          haiku*)          gl_cv_func_printf_enomem="guessing yes";;
                           # Guess no on Android.
          linux*-android*) gl_cv_func_printf_enomem="guessing no";;
                           # If we don't know, obey --enable-cross-guesses.
          *)               gl_cv_func_printf_enomem="$gl_cross_guess_normal";;
        esac
changequote([,])dnl
      fi
    ])
])

dnl Test whether the snprintf function exists. (ISO C99, POSIX:2001)
dnl Result is ac_cv_func_snprintf.

AC_DEFUN([gl_SNPRINTF_PRESENCE],
[
  AC_CHECK_FUNCS_ONCE([snprintf])
])

dnl Test whether the string produced by the snprintf function is always NUL
dnl terminated. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_snprintf_truncation_c99.

AC_DEFUN_ONCE([gl_SNPRINTF_TRUNCATION_C99],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_SNPRINTF_PRESENCE])
  AC_CACHE_CHECK([whether snprintf truncates the result as in C99],
    [gl_cv_func_snprintf_truncation_c99],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
#if HAVE_SNPRINTF
# define my_snprintf snprintf
#else
# include <stdarg.h>
static int my_snprintf (char *buf, int size, const char *format, ...)
{
  va_list args;
  int ret;
  va_start (args, format);
  ret = vsnprintf (buf, size, format, args);
  va_end (args);
  return ret;
}
#endif
static char buf[100];
int main ()
{
  strcpy (buf, "ABCDEF");
  my_snprintf (buf, 3, "%d %d", 4567, 89);
  if (memcmp (buf, "45\0DEF", 6) != 0)
    return 1;
  return 0;
}]])],
        [gl_cv_func_snprintf_truncation_c99=yes],
        [gl_cv_func_snprintf_truncation_c99=no],
        [
changequote(,)dnl
         case "$host_os" in
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on FreeBSD >= 5.
           freebsd[1-4].*)       gl_cv_func_snprintf_truncation_c99="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_snprintf_truncation_c99="guessing yes";;
           midnightbsd*)         gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_snprintf_truncation_c99="guessing no";;
           darwin*)              gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on OpenBSD >= 3.9.
           openbsd[1-2].* | openbsd3.[0-8] | openbsd3.[0-8].*)
                                 gl_cv_func_snprintf_truncation_c99="guessing no";;
           openbsd*)             gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on Solaris >= 2.6.
           solaris2.[0-5] | solaris2.[0-5].*)
                                 gl_cv_func_snprintf_truncation_c99="guessing no";;
           solaris*)             gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on AIX >= 4.
           aix[1-3]*)            gl_cv_func_snprintf_truncation_c99="guessing no";;
           aix*)                 gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on HP-UX >= 11.
           hpux[7-9]* | hpux10*) gl_cv_func_snprintf_truncation_c99="guessing no";;
           hpux*)                gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on IRIX >= 6.5.
           irix6.5)              gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on OSF/1 >= 5.
           osf[3-4]*)            gl_cv_func_snprintf_truncation_c99="guessing no";;
           osf*)                 gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_snprintf_truncation_c99="guessing no";;
           netbsd*)              gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on BeOS.
           beos*)                gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess yes on Android.
           linux*-android*)      gl_cv_func_snprintf_truncation_c99="guessing yes";;
                                 # Guess no on native Windows.
           mingw*)               gl_cv_func_snprintf_truncation_c99="guessing no";;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_snprintf_truncation_c99="$gl_cross_guess_normal";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl Test whether the return value of the snprintf function is the number
dnl of bytes (excluding the terminating NUL) that would have been produced
dnl if the buffer had been large enough. (ISO C99, POSIX:2001)
dnl For example, this test program fails on IRIX 6.5:
dnl     ---------------------------------------------------------------------
dnl     #include <stdio.h>
dnl     int main()
dnl     {
dnl       static char buf[8];
dnl       int retval = snprintf (buf, 3, "%d", 12345);
dnl       return retval >= 0 && retval < 3;
dnl     }
dnl     ---------------------------------------------------------------------
dnl Result is gl_cv_func_snprintf_retval_c99.

AC_DEFUN_ONCE([gl_SNPRINTF_RETVAL_C99],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_SNPRINTF_PRESENCE])
  AC_CACHE_CHECK([whether snprintf returns a byte count as in C99],
    [gl_cv_func_snprintf_retval_c99],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
#if HAVE_SNPRINTF
# define my_snprintf snprintf
#else
# include <stdarg.h>
static int my_snprintf (char *buf, int size, const char *format, ...)
{
  va_list args;
  int ret;
  va_start (args, format);
  ret = vsnprintf (buf, size, format, args);
  va_end (args);
  return ret;
}
#endif
static char buf[100];
int main ()
{
  strcpy (buf, "ABCDEF");
  if (my_snprintf (buf, 3, "%d %d", 4567, 89) != 7)
    return 1;
  if (my_snprintf (buf, 0, "%d %d", 4567, 89) != 7)
    return 2;
  if (my_snprintf (NULL, 0, "%d %d", 4567, 89) != 7)
    return 3;
  return 0;
}]])],
        [gl_cv_func_snprintf_retval_c99=yes],
        [gl_cv_func_snprintf_retval_c99=no],
        [case "$host_os" in
changequote(,)dnl
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on FreeBSD >= 5.
           freebsd[1-4].*)       gl_cv_func_snprintf_retval_c99="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_snprintf_retval_c99="guessing yes";;
           midnightbsd*)         gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_snprintf_retval_c99="guessing no";;
           darwin*)              gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on OpenBSD >= 3.9.
           openbsd[1-2].* | openbsd3.[0-8] | openbsd3.[0-8].*)
                                 gl_cv_func_snprintf_retval_c99="guessing no";;
           openbsd*)             gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on Solaris >= 2.10.
           solaris2.[1-9][0-9]*) gl_cv_func_printf_sizes_c99="guessing yes";;
           solaris*)             gl_cv_func_printf_sizes_c99="guessing no";;
                                 # Guess yes on AIX >= 4.
           aix[1-3]*)            gl_cv_func_snprintf_retval_c99="guessing no";;
           aix*)                 gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_snprintf_retval_c99="guessing no";;
           netbsd*)              gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on BeOS.
           beos*)                gl_cv_func_snprintf_retval_c99="guessing yes";;
                                 # Guess yes on Android.
           linux*-android*)      gl_cv_func_snprintf_retval_c99="guessing yes";;
changequote([,])dnl
                                 # Guess yes on MSVC, no on mingw.
           mingw*)               AC_EGREP_CPP([Known], [
#ifdef _MSC_VER
 Known
#endif
                                   ],
                                   [gl_cv_func_snprintf_retval_c99="guessing yes"],
                                   [gl_cv_func_snprintf_retval_c99="guessing no"])
                                 ;;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_snprintf_retval_c99="$gl_cross_guess_normal";;
         esac
        ])
    ])
])

dnl Test whether the snprintf function supports the %n format directive
dnl also in truncated portions of the format string. (ISO C99, POSIX:2001)
dnl Result is gl_cv_func_snprintf_directive_n.

AC_DEFUN([gl_SNPRINTF_DIRECTIVE_N],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_SNPRINTF_PRESENCE])
  AC_CACHE_CHECK([whether snprintf fully supports the 'n' directive],
    [gl_cv_func_snprintf_directive_n],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#include <string.h>
#if HAVE_SNPRINTF
# define my_snprintf snprintf
#else
# include <stdarg.h>
static int my_snprintf (char *buf, int size, const char *format, ...)
{
  va_list args;
  int ret;
  va_start (args, format);
  ret = vsnprintf (buf, size, format, args);
  va_end (args);
  return ret;
}
#endif
static char fmtstring[10];
static char buf[100];
int main ()
{
  int count = -1;
  /* Copy the format string.  Some systems (glibc with _FORTIFY_SOURCE=2)
     support %n in format strings in read-only memory but not in writable
     memory.  */
  strcpy (fmtstring, "%d %n");
  my_snprintf (buf, 4, fmtstring, 12345, &count, 33, 44, 55);
  if (count != 6)
    return 1;
  return 0;
}]])],
        [gl_cv_func_snprintf_directive_n=yes],
        [gl_cv_func_snprintf_directive_n=no],
        [
         case "$host_os" in
                                 # Guess no on glibc when _FORTIFY_SOURCE >= 2.
           *-gnu* | gnu*)        AC_COMPILE_IFELSE(
                                   [AC_LANG_SOURCE(
                                      [[#if _FORTIFY_SOURCE >= 2
                                         error fail
                                        #endif
                                      ]])],
                                   [gl_cv_func_snprintf_directive_n="guessing yes"],
                                   [gl_cv_func_snprintf_directive_n="guessing no"])
                                 ;;
changequote(,)dnl
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on FreeBSD >= 5.
           freebsd[1-4].*)       gl_cv_func_snprintf_directive_n="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_snprintf_directive_n="guessing yes";;
           midnightbsd*)         gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_snprintf_directive_n="guessing no";;
           darwin*)              gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on Solaris >= 2.6.
           solaris2.[0-5] | solaris2.[0-5].*)
                                 gl_cv_func_snprintf_directive_n="guessing no";;
           solaris*)             gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on AIX >= 4.
           aix[1-3]*)            gl_cv_func_snprintf_directive_n="guessing no";;
           aix*)                 gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on IRIX >= 6.5.
           irix6.5)              gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on OSF/1 >= 5.
           osf[3-4]*)            gl_cv_func_snprintf_directive_n="guessing no";;
           osf*)                 gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_snprintf_directive_n="guessing no";;
           netbsd*)              gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess yes on BeOS.
           beos*)                gl_cv_func_snprintf_directive_n="guessing yes";;
                                 # Guess no on Android.
           linux*-android*)      gl_cv_func_snprintf_directive_n="guessing no";;
                                 # Guess no on native Windows.
           mingw*)               gl_cv_func_snprintf_directive_n="guessing no";;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_snprintf_directive_n="$gl_cross_guess_normal";;
changequote([,])dnl
         esac
        ])
    ])
])

dnl Test whether the snprintf function, when passed a size = 1, writes any
dnl output without bounds in this case, behaving like sprintf. This is the
dnl case on Linux libc5.
dnl Result is gl_cv_func_snprintf_size1.

AC_DEFUN([gl_SNPRINTF_SIZE1],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_REQUIRE([gl_SNPRINTF_PRESENCE])
  AC_CACHE_CHECK([whether snprintf respects a size of 1],
    [gl_cv_func_snprintf_size1],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdio.h>
#if HAVE_SNPRINTF
# define my_snprintf snprintf
#else
# include <stdarg.h>
static int my_snprintf (char *buf, int size, const char *format, ...)
{
  va_list args;
  int ret;
  va_start (args, format);
  ret = vsnprintf (buf, size, format, args);
  va_end (args);
  return ret;
}
#endif
int main()
{
  static char buf[8] = { 'D', 'E', 'A', 'D', 'B', 'E', 'E', 'F' };
  my_snprintf (buf, 1, "%d", 12345);
  return buf[1] != 'E';
}]])],
        [gl_cv_func_snprintf_size1=yes],
        [gl_cv_func_snprintf_size1=no],
        [case "$host_os" in
                            # Guess yes on Android.
           linux*-android*) gl_cv_func_snprintf_size1="guessing yes" ;;
                            # Guess yes on native Windows.
           mingw*)          gl_cv_func_snprintf_size1="guessing yes" ;;
           *)               gl_cv_func_snprintf_size1="guessing yes" ;;
         esac
        ])
    ])
])

dnl Test whether the vsnprintf function, when passed a zero size, produces no
dnl output. (ISO C99, POSIX:2001)
dnl For example, snprintf nevertheless writes a NUL byte in this case
dnl on OSF/1 5.1:
dnl     ---------------------------------------------------------------------
dnl     #include <stdio.h>
dnl     int main()
dnl     {
dnl       static char buf[8] = { 'D', 'E', 'A', 'D', 'B', 'E', 'E', 'F' };
dnl       snprintf (buf, 0, "%d", 12345);
dnl       return buf[0] != 'D';
dnl     }
dnl     ---------------------------------------------------------------------
dnl And vsnprintf writes any output without bounds in this case, behaving like
dnl vsprintf, on HP-UX 11 and OSF/1 5.1:
dnl     ---------------------------------------------------------------------
dnl     #include <stdarg.h>
dnl     #include <stdio.h>
dnl     static int my_snprintf (char *buf, int size, const char *format, ...)
dnl     {
dnl       va_list args;
dnl       int ret;
dnl       va_start (args, format);
dnl       ret = vsnprintf (buf, size, format, args);
dnl       va_end (args);
dnl       return ret;
dnl     }
dnl     int main()
dnl     {
dnl       static char buf[8] = { 'D', 'E', 'A', 'D', 'B', 'E', 'E', 'F' };
dnl       my_snprintf (buf, 0, "%d", 12345);
dnl       return buf[0] != 'D';
dnl     }
dnl     ---------------------------------------------------------------------
dnl Result is gl_cv_func_vsnprintf_zerosize_c99.

AC_DEFUN([gl_VSNPRINTF_ZEROSIZE_C99],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether vsnprintf respects a zero size as in C99],
    [gl_cv_func_vsnprintf_zerosize_c99],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stdarg.h>
#include <stdio.h>
static int my_snprintf (char *buf, int size, const char *format, ...)
{
  va_list args;
  int ret;
  va_start (args, format);
  ret = vsnprintf (buf, size, format, args);
  va_end (args);
  return ret;
}
int main()
{
  static char buf[8] = { 'D', 'E', 'A', 'D', 'B', 'E', 'E', 'F' };
  my_snprintf (buf, 0, "%d", 12345);
  return buf[0] != 'D';
}]])],
        [gl_cv_func_vsnprintf_zerosize_c99=yes],
        [gl_cv_func_vsnprintf_zerosize_c99=no],
        [
changequote(,)dnl
         case "$host_os" in
                                 # Guess yes on glibc systems.
           *-gnu* | gnu*)        gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on musl systems.
           *-musl*)              gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on FreeBSD >= 5.
           freebsd[1-4].*)       gl_cv_func_vsnprintf_zerosize_c99="guessing no";;
           freebsd* | kfreebsd*) gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
           midnightbsd*)         gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on Mac OS X >= 10.3.
           darwin[1-6].*)        gl_cv_func_vsnprintf_zerosize_c99="guessing no";;
           darwin*)              gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on Cygwin.
           cygwin*)              gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on Solaris >= 2.6.
           solaris2.[0-5] | solaris2.[0-5].*)
                                 gl_cv_func_vsnprintf_zerosize_c99="guessing no";;
           solaris*)             gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on AIX >= 4.
           aix[1-3]*)            gl_cv_func_vsnprintf_zerosize_c99="guessing no";;
           aix*)                 gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on IRIX >= 6.5.
           irix6.5)              gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on NetBSD >= 3.
           netbsd[1-2]* | netbsdelf[1-2]* | netbsdaout[1-2]* | netbsdcoff[1-2]*)
                                 gl_cv_func_vsnprintf_zerosize_c99="guessing no";;
           netbsd*)              gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on BeOS.
           beos*)                gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on Android.
           linux*-android*)      gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # Guess yes on native Windows.
           mingw* | pw*)         gl_cv_func_vsnprintf_zerosize_c99="guessing yes";;
                                 # If we don't know, obey --enable-cross-guesses.
           *)                    gl_cv_func_vsnprintf_zerosize_c99="$gl_cross_guess_normal";;
         esac
changequote([,])dnl
        ])
    ])
])

dnl The results of these tests on various platforms are:
dnl
dnl 1 = gl_PRINTF_SIZES_C99
dnl 2 = gl_PRINTF_LONG_DOUBLE
dnl 3 = gl_PRINTF_INFINITE
dnl 4 = gl_PRINTF_INFINITE_LONG_DOUBLE
dnl 5 = gl_PRINTF_DIRECTIVE_A
dnl 6 = gl_PRINTF_DIRECTIVE_F
dnl 7 = gl_PRINTF_DIRECTIVE_N
dnl 8 = gl_PRINTF_DIRECTIVE_LS
dnl 9 = gl_PRINTF_POSITIONS
dnl 10 = gl_PRINTF_FLAG_GROUPING
dnl 11 = gl_PRINTF_FLAG_LEFTADJUST
dnl 12 = gl_PRINTF_FLAG_ZERO
dnl 13 = gl_PRINTF_PRECISION
dnl 14 = gl_PRINTF_ENOMEM
dnl 15 = gl_SNPRINTF_PRESENCE
dnl 16 = gl_SNPRINTF_TRUNCATION_C99
dnl 17 = gl_SNPRINTF_RETVAL_C99
dnl 18 = gl_SNPRINTF_DIRECTIVE_N
dnl 19 = gl_SNPRINTF_SIZE1
dnl 20 = gl_VSNPRINTF_ZEROSIZE_C99
dnl
dnl 1 = checking whether printf supports size specifiers as in C99...
dnl 2 = checking whether printf supports 'long double' arguments...
dnl 3 = checking whether printf supports infinite 'double' arguments...
dnl 4 = checking whether printf supports infinite 'long double' arguments...
dnl 5 = checking whether printf supports the 'a' and 'A' directives...
dnl 6 = checking whether printf supports the 'F' directive...
dnl 7 = checking whether printf supports the 'n' directive...
dnl 8 = checking whether printf supports the 'ls' directive...
dnl 9 = checking whether printf supports POSIX/XSI format strings with positions...
dnl 10 = checking whether printf supports the grouping flag...
dnl 11 = checking whether printf supports the left-adjust flag correctly...
dnl 12 = checking whether printf supports the zero flag correctly...
dnl 13 = checking whether printf supports large precisions...
dnl 14 = checking whether printf survives out-of-memory conditions...
dnl 15 = checking for snprintf...
dnl 16 = checking whether snprintf truncates the result as in C99...
dnl 17 = checking whether snprintf returns a byte count as in C99...
dnl 18 = checking whether snprintf fully supports the 'n' directive...
dnl 19 = checking whether snprintf respects a size of 1...
dnl 20 = checking whether vsnprintf respects a zero size as in C99...
dnl
dnl . = yes, # = no.
dnl
dnl                                  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
dnl   glibc 2.5                      .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .
dnl   glibc 2.3.6                    .  .  .  .  #  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .
dnl   FreeBSD 13.0                   .  .  .  .  #  .  .  .  .  .  .  .  .  #  .  .  .  .  .  .
dnl   FreeBSD 5.4, 6.1               .  .  .  .  #  .  .  .  .  .  .  #  .  #  .  .  .  .  .  .
dnl   Mac OS X 10.13.5               .  .  .  #  #  .  #  .  .  .  .  .  .  .  .  .  .  #  .  .
dnl   Mac OS X 10.5.8                .  .  .  #  #  .  .  .  .  .  .  #  .  .  .  .  .  .  .  .
dnl   Mac OS X 10.3.9                .  .  .  .  #  .  .  .  .  .  .  #  .  #  .  .  .  .  .  .
dnl   OpenBSD 6.0, 6.7               .  .  .  .  #  .  .  .  .  .  .  .  .  #  .  .  .  .  .  .
dnl   OpenBSD 3.9, 4.0               .  .  #  #  #  #  .  #  .  #  .  #  .  #  .  .  .  .  .  .
dnl   Cygwin 1.7.0 (2009)            .  .  .  #  .  .  .  ?  .  .  .  .  .  ?  .  .  .  .  .  .
dnl   Cygwin 1.5.25 (2008)           .  .  .  #  #  .  .  #  .  .  .  .  .  #  .  .  .  .  .  .
dnl   Cygwin 1.5.19 (2006)           #  .  .  #  #  #  .  #  .  #  .  #  #  #  .  .  .  .  .  .
dnl   Solaris 11.4                   .  .  #  #  #  .  .  #  .  .  .  #  .  .  .  .  .  .  .  .
dnl   Solaris 11.3                   .  .  .  .  #  .  .  #  .  .  .  .  .  .  .  .  .  .  .  .
dnl   Solaris 11.0                   .  .  #  #  #  .  .  #  .  .  .  #  .  .  .  .  .  .  .  .
dnl   Solaris 10                     .  .  #  #  #  .  .  #  .  .  .  #  #  .  .  .  .  .  .  .
dnl   Solaris 2.6 ... 9              #  .  #  #  #  #  .  #  .  .  .  #  #  .  .  .  #  .  .  .
dnl   Solaris 2.5.1                  #  .  #  #  #  #  .  #  .  .  .  #  .  .  #  #  #  #  #  #
dnl   AIX 7.1                        .  .  #  #  #  .  .  .  .  .  .  #  #  .  .  .  .  .  .  .
dnl   AIX 5.2                        .  .  #  #  #  .  .  .  .  .  .  #  .  .  .  .  .  .  .  .
dnl   AIX 4.3.2, 5.1                 #  .  #  #  #  #  .  .  .  .  .  #  .  .  .  .  #  .  .  .
dnl   HP-UX 11.31                    .  .  .  .  #  .  .  .  .  .  .  #  .  .  .  .  #  #  .  .
dnl   HP-UX 11.{00,11,23}            #  .  .  .  #  #  .  .  .  .  .  #  .  .  .  .  #  #  .  #
dnl   HP-UX 10.20                    #  .  #  .  #  #  .  ?  .  .  #  #  .  .  .  .  #  #  ?  #
dnl   IRIX 6.5                       #  .  #  #  #  #  .  #  .  .  .  #  .  .  .  .  #  .  .  .
dnl   OSF/1 5.1                      #  .  #  #  #  #  .  .  .  .  .  #  .  .  .  .  #  .  .  #
dnl   OSF/1 4.0d                     #  .  #  #  #  #  .  .  .  .  .  #  .  .  #  #  #  #  #  #
dnl   NetBSD 9.0                     .  .  .  .  #  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .
dnl   NetBSD 5.0                     .  .  .  #  #  .  .  .  .  .  .  #  .  #  .  .  .  .  .  .
dnl   NetBSD 4.0                     .  ?  ?  ?  ?  ?  .  ?  .  ?  ?  ?  ?  ?  .  .  .  ?  ?  ?
dnl   NetBSD 3.0                     .  .  .  .  #  #  .  ?  #  #  ?  #  .  #  .  .  .  .  .  .
dnl   Haiku                          .  .  .  #  #  #  .  #  .  .  .  .  .  ?  .  .  ?  .  .  .
dnl   BeOS                           #  #  .  #  #  #  .  ?  #  .  ?  .  #  ?  .  .  ?  .  .  .
dnl   Android 4.3                    .  .  #  #  #  #  #  #  .  #  .  #  .  #  .  .  .  #  .  .
dnl   old mingw / msvcrt             #  #  #  #  #  #  .  .  #  #  .  #  #  ?  .  #  #  #  .  .
dnl   MSVC 9                         #  #  #  #  #  #  #  .  #  #  .  #  #  ?  #  #  #  #  .  .
dnl   mingw 2009-2011                .  #  .  #  .  .  .  .  #  #  .  .  .  ?  .  .  .  .  .  .
dnl   mingw-w64 2011                 #  #  #  #  #  #  .  .  #  #  .  #  #  ?  .  #  #  #  .  .

# pthread_rwlock_rdlock.m4 serial 4
dnl Copyright (C) 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Inspired by
dnl https://github.com/linux-test-project/ltp/blob/master/testcases/open_posix_testsuite/conformance/interfaces/pthread_rwlock_rdlock/2-2.c
dnl by Intel Corporation.

dnl Test whether in a situation where
dnl   - an rwlock is taken by a reader and has a writer waiting,
dnl   - an additional reader requests the lock,
dnl   - the waiting writer and the requesting reader threads have the same
dnl     priority,
dnl the requesting reader thread gets blocked, so that at some point the
dnl waiting writer can acquire the lock.
dnl Without such a guarantee, when there a N readers and each of the readers
dnl spends more than 1/Nth of the time with the lock held, there is a high
dnl probability that the waiting writer will not get the lock in a given finite
dnl time, a phenomenon called "writer starvation".
dnl Without such a guarantee, applications have a hard time avoiding writer
dnl starvation.
dnl
dnl POSIX:2017 makes this requirement only for implementations that support TPS
dnl (Thread Priority Scheduling) and only for the scheduling policies SCHED_FIFO
dnl and SCHED_RR, see
dnl https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_rwlock_rdlock.html
dnl but this test verifies the guarantee regardless of TPS and regardless of
dnl scheduling policy.
dnl Glibc does not provide this guarantee (and never will on Linux), see
dnl https://sourceware.org/bugzilla/show_bug.cgi?id=13701
dnl https://bugzilla.redhat.com/show_bug.cgi?id=1410052
AC_DEFUN([gl_PTHREAD_RWLOCK_RDLOCK_PREFER_WRITER],
[
  AC_REQUIRE([gl_THREADLIB_EARLY])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether pthread_rwlock_rdlock prefers a writer to a reader],
    [gl_cv_pthread_rwlock_rdlock_prefer_writer],
    [save_LIBS="$LIBS"
     LIBS="$LIBS $LIBMULTITHREAD"
     AC_RUN_IFELSE(
       [AC_LANG_SOURCE([[
#include <errno.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>

#define SUCCEED() exit (0)
#define FAILURE() exit (1)
#define UNEXPECTED(n) (exit (10 + (n)))

/* The main thread creates the waiting writer and the requesting reader threads
   in the default way; this guarantees that they have the same priority.
   We can reuse the main thread as first reader thread.  */

static pthread_rwlock_t lock;
static pthread_t reader1;
static pthread_t writer;
static pthread_t reader2;
static pthread_t timer;
/* Used to pass control from writer to reader2 and from reader2 to timer,
   as in a relay race.
   Passing control from one running thread to another running thread
   is most likely faster than to create the second thread.  */
static pthread_mutex_t baton;

static void *
timer_func (void *ignored)
{
  /* Step 13 (can be before or after step 12):
     The timer thread takes the baton, then waits a moment to make sure
     it can tell whether the second reader thread is blocked at step 12.  */
  if (pthread_mutex_lock (&baton))
    UNEXPECTED (13);
  usleep (100000);
  /* By the time we get here, it's clear that the second reader thread is
     blocked at step 12.  This is the desired behaviour.  */
  SUCCEED ();
}

static void *
reader2_func (void *ignored)
{
  int err;

  /* Step 8 (can be before or after step 7):
     The second reader thread takes the baton, then waits a moment to make sure
     the writer thread has reached step 7.  */
  if (pthread_mutex_lock (&baton))
    UNEXPECTED (8);
  usleep (100000);
  /* Step 9: The second reader thread requests the lock.  */
  err = pthread_rwlock_tryrdlock (&lock);
  if (err == 0)
    FAILURE ();
  else if (err != EBUSY)
    UNEXPECTED (9);
  /* Step 10: Launch a timer, to test whether the next call blocks.  */
  if (pthread_create (&timer, NULL, timer_func, NULL))
    UNEXPECTED (10);
  /* Step 11: Release the baton.  */
  if (pthread_mutex_unlock (&baton))
    UNEXPECTED (11);
  /* Step 12: The second reader thread requests the lock.  */
  err = pthread_rwlock_rdlock (&lock);
  if (err == 0)
    FAILURE ();
  else
    UNEXPECTED (12);
}

static void *
writer_func (void *ignored)
{
  /* Step 4: Take the baton, so that the second reader thread does not go ahead
     too early.  */
  if (pthread_mutex_lock (&baton))
    UNEXPECTED (4);
  /* Step 5: Create the second reader thread.  */
  if (pthread_create (&reader2, NULL, reader2_func, NULL))
    UNEXPECTED (5);
  /* Step 6: Release the baton.  */
  if (pthread_mutex_unlock (&baton))
    UNEXPECTED (6);
  /* Step 7: The writer thread requests the lock.  */
  if (pthread_rwlock_wrlock (&lock))
    UNEXPECTED (7);
  return NULL;
}

int
main ()
{
  reader1 = pthread_self ();

  /* Step 1: The main thread initializes the lock and the baton.  */
  if (pthread_rwlock_init (&lock, NULL))
    UNEXPECTED (1);
  if (pthread_mutex_init (&baton, NULL))
    UNEXPECTED (1);
  /* Step 2: The main thread acquires the lock as a reader.  */
  if (pthread_rwlock_rdlock (&lock))
    UNEXPECTED (2);
  /* Step 3: Create the writer thread.  */
  if (pthread_create (&writer, NULL, writer_func, NULL))
    UNEXPECTED (3);
  /* Job done.  Go to sleep.  */
  for (;;)
    {
      sleep (1);
    }
}
]])],
       [gl_cv_pthread_rwlock_rdlock_prefer_writer=yes],
       [gl_cv_pthread_rwlock_rdlock_prefer_writer=no],
       [case "$host_os" in
                         # Guess no on glibc systems.
          *-gnu* | gnu*) gl_cv_pthread_rwlock_rdlock_prefer_writer="guessing no" ;;
                         # Guess no on musl systems.
          *-musl*)       gl_cv_pthread_rwlock_rdlock_prefer_writer="guessing no" ;;
                         # Guess no on bionic systems.
          *-android*)    gl_cv_pthread_rwlock_rdlock_prefer_writer="guessing no" ;;
                         # Guess yes on native Windows with the mingw-w64 winpthreads library.
                         # Guess no on native Windows with the gnulib windows-rwlock module.
          mingw*)        if test "$gl_use_threads" = yes || test "$gl_use_threads" = posix; then
                           gl_cv_pthread_rwlock_rdlock_prefer_writer="guessing yes"
                         else
                           gl_cv_pthread_rwlock_rdlock_prefer_writer="guessing no"
                         fi
                         ;;
                         # If we don't know, obey --enable-cross-guesses.
          *)             gl_cv_pthread_rwlock_rdlock_prefer_writer="$gl_cross_guess_normal" ;;
         esac
       ])
     LIBS="$save_LIBS"
    ])
  case "$gl_cv_pthread_rwlock_rdlock_prefer_writer" in
    *yes)
      AC_DEFINE([HAVE_PTHREAD_RWLOCK_RDLOCK_PREFER_WRITER], [1],
        [Define if the 'pthread_rwlock_rdlock' function prefers a writer to a reader.])
      ;;
  esac
])

# raise.m4 serial 4
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_RAISE],
[
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS([raise])
  if test $ac_cv_func_raise = no; then
    HAVE_RAISE=0
  else
    m4_ifdef([gl_MSVC_INVAL], [
      AC_REQUIRE([gl_MSVC_INVAL])
      if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
        REPLACE_RAISE=1
      fi
    ])
    m4_ifdef([gl_SIGNALBLOCKING], [
      gl_SIGNALBLOCKING
      if test $HAVE_POSIX_SIGNALBLOCKING = 0; then
        m4_ifdef([gl_SIGNAL_SIGPIPE], [
          gl_SIGNAL_SIGPIPE
          if test $gl_cv_header_signal_h_SIGPIPE != yes; then
            REPLACE_RAISE=1
          fi
        ], [:])
      fi
    ])
  fi
])

# Prerequisites of lib/raise.c.
AC_DEFUN([gl_PREREQ_RAISE], [:])

# readdir.m4 serial 1
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_READDIR],
[
  AC_REQUIRE([gl_DIRENT_H_DEFAULTS])

  AC_CHECK_FUNCS([readdir])
  if test $ac_cv_func_readdir = no; then
    HAVE_READDIR=0
  fi
])

# realloc.m4 serial 24
dnl Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# This is adapted with modifications from upstream Autoconf here:
# https://git.savannah.gnu.org/cgit/autoconf.git/tree/lib/autoconf/functions.m4?id=v2.70#n1455
AC_DEFUN([_AC_FUNC_REALLOC_IF],
[
  AC_REQUIRE([AC_CANONICAL_HOST])dnl for cross-compiles
  AC_CACHE_CHECK([whether realloc (0, 0) returns nonnull],
    [ac_cv_func_realloc_0_nonnull],
    [AC_RUN_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdlib.h>
          ]],
          [[void *p = realloc (0, 0);
            int result = !p;
            free (p);
            return result;]])
       ],
       [ac_cv_func_realloc_0_nonnull=yes],
       [ac_cv_func_realloc_0_nonnull=no],
       [case "$host_os" in
          # Guess yes on platforms where we know the result.
          *-gnu* | freebsd* | netbsd* | openbsd* | bitrig* \
          | gnu* | *-musl* | midnightbsd* \
          | hpux* | solaris* | cygwin* | mingw* | msys* )
            ac_cv_func_realloc_0_nonnull="guessing yes" ;;
          # If we don't know, obey --enable-cross-guesses.
          *) ac_cv_func_realloc_0_nonnull="$gl_cross_guess_normal" ;;
        esac
       ])
    ])
  AS_CASE([$ac_cv_func_realloc_0_nonnull], [*yes], [$1], [$2])
])# AC_FUNC_REALLOC

# gl_FUNC_REALLOC_GNU
# -------------------
# Replace realloc if it is not compatible with GNU libc.
AC_DEFUN([gl_FUNC_REALLOC_GNU],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_REALLOC_POSIX])
  if test $REPLACE_REALLOC = 0; then
    _AC_FUNC_REALLOC_IF([], [REPLACE_REALLOC=1])
  fi
])# gl_FUNC_REALLOC_GNU

# gl_FUNC_REALLOC_POSIX
# ---------------------
# Test whether 'realloc' is POSIX compliant (sets errno to ENOMEM when it
# fails, and doesn't mess up with ptrdiff_t overflow),
# and replace realloc if it is not.
AC_DEFUN([gl_FUNC_REALLOC_POSIX],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_MALLOC_POSIX])
  if test $REPLACE_MALLOC = 1; then
    REPLACE_REALLOC=1
  fi
])

# serial 73

# Copyright (C) 1996-2001, 2003-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl Initially derived from code in GNU grep.
dnl Mostly written by Jim Meyering.

AC_PREREQ([2.50])

AC_DEFUN([gl_REGEX],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_ARG_WITH([included-regex],
    [AS_HELP_STRING([--without-included-regex],
                    [don't compile regex; this is the default on systems
                     with recent-enough versions of the GNU C Library
                     (use with caution on other systems).])])

  case $with_included_regex in #(
  yes|no) ac_use_included_regex=$with_included_regex
        ;;
  '')
    # If the system regex support is good enough that it passes the
    # following run test, then default to *not* using the included regex.c.
    # If cross compiling, assume the test would fail and use the included
    # regex.c.
    AC_CHECK_DECLS_ONCE([alarm])
    AC_CHECK_HEADERS_ONCE([malloc.h])
    AC_CACHE_CHECK([for working re_compile_pattern],
                   [gl_cv_func_re_compile_pattern_working],
      [AC_RUN_IFELSE(
        [AC_LANG_PROGRAM(
          [[#include <regex.h>

            #include <locale.h>
            #include <limits.h>
            #include <string.h>

            #if defined M_CHECK_ACTION || HAVE_DECL_ALARM
            # include <signal.h>
            # include <unistd.h>
            #endif

            #if HAVE_MALLOC_H
            # include <malloc.h>
            #endif

            #ifdef M_CHECK_ACTION
            /* Exit with distinguishable exit code.  */
            static void sigabrt_no_core (int sig) { raise (SIGTERM); }
            #endif
          ]],
          [[int result = 0;
            static struct re_pattern_buffer regex;
            unsigned char folded_chars[UCHAR_MAX + 1];
            int i;
            const char *s;
            struct re_registers regs;

            /* Some builds of glibc go into an infinite loop on this
               test.  Use alarm to force death, and mallopt to avoid
               malloc recursion in diagnosing the corrupted heap. */
#if HAVE_DECL_ALARM
            signal (SIGALRM, SIG_DFL);
            alarm (2);
#endif
#ifdef M_CHECK_ACTION
            signal (SIGABRT, sigabrt_no_core);
            mallopt (M_CHECK_ACTION, 2);
#endif

            if (setlocale (LC_ALL, "en_US.UTF-8"))
              {
                {
                  /* https://sourceware.org/ml/libc-hacker/2006-09/msg00008.html
                     This test needs valgrind to catch the bug on Debian
                     GNU/Linux 3.1 x86, but it might catch the bug better
                     on other platforms and it shouldn't hurt to try the
                     test here.  */
                  static char const pat[] = "insert into";
                  static char const data[] =
                    "\xFF\0\x12\xA2\xAA\xC4\xB1,K\x12\xC4\xB1*\xACK";
                  re_set_syntax (RE_SYNTAX_GREP | RE_HAT_LISTS_NOT_NEWLINE
                                 | RE_ICASE);
                  memset (&regex, 0, sizeof regex);
                  s = re_compile_pattern (pat, sizeof pat - 1, &regex);
                  if (s)
                    result |= 1;
                  else
                    {
                      if (re_search (&regex, data, sizeof data - 1,
                                     0, sizeof data - 1, &regs)
                          != -1)
                        result |= 1;
                      regfree (&regex);
                    }
                }

                {
                  /* This test is from glibc bug 15078.
                     The test case is from Andreas Schwab in
                     <https://sourceware.org/ml/libc-alpha/2013-01/msg00967.html>.
                     */
                  static char const pat[] = "[^x]x";
                  static char const data[] =
                    /* <U1000><U103B><U103D><U1014><U103A><U102F><U1015><U103A> */
                    "\xe1\x80\x80"
                    "\xe1\x80\xbb"
                    "\xe1\x80\xbd"
                    "\xe1\x80\x94"
                    "\xe1\x80\xba"
                    "\xe1\x80\xaf"
                    "\xe1\x80\x95"
                    "\xe1\x80\xba"
                    "x";
                  re_set_syntax (0);
                  memset (&regex, 0, sizeof regex);
                  s = re_compile_pattern (pat, sizeof pat - 1, &regex);
                  if (s)
                    result |= 1;
                  else
                    {
                      i = re_search (&regex, data, sizeof data - 1,
                                     0, sizeof data - 1, 0);
                      if (i != 0 && i != 21)
                        result |= 1;
                      regfree (&regex);
                    }
                }

                if (! setlocale (LC_ALL, "C"))
                  return 1;
              }

            /* This test is from glibc bug 3957, reported by Andrew Mackey.  */
            re_set_syntax (RE_SYNTAX_EGREP | RE_HAT_LISTS_NOT_NEWLINE);
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("a[^x]b", 6, &regex);
            if (s)
              result |= 2;
            else
              {
                /* This should fail, but succeeds for glibc-2.5.  */
                if (re_search (&regex, "a\nb", 3, 0, 3, &regs) != -1)
                  result |= 2;
                regfree (&regex);
              }

            /* This regular expression is from Spencer ere test number 75
               in grep-2.3.  */
            re_set_syntax (RE_SYNTAX_POSIX_EGREP);
            memset (&regex, 0, sizeof regex);
            for (i = 0; i <= UCHAR_MAX; i++)
              folded_chars[i] = i;
            regex.translate = folded_chars;
            s = re_compile_pattern ("a[[:@:>@:]]b\n", 11, &regex);
            /* This should fail with _Invalid character class name_ error.  */
            if (!s)
              {
                result |= 4;
                regfree (&regex);
              }

            /* Ensure that [b-a] is diagnosed as invalid, when
               using RE_NO_EMPTY_RANGES. */
            re_set_syntax (RE_SYNTAX_POSIX_EGREP | RE_NO_EMPTY_RANGES);
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("a[b-a]", 6, &regex);
            if (s == 0)
              {
                result |= 8;
                regfree (&regex);
              }

            /* This should succeed, but does not for glibc-2.1.3.  */
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("{1", 2, &regex);
            if (s)
              result |= 8;
            else
              regfree (&regex);

            /* The following example is derived from a problem report
               against gawk from Jorge Stolfi <stolfi@ic.unicamp.br>.  */
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("[an\371]*n", 7, &regex);
            if (s)
              result |= 8;
            else
              {
                /* This should match, but does not for glibc-2.2.1.  */
                if (re_match (&regex, "an", 2, 0, &regs) != 2)
                  result |= 8;
                else
                  {
                    free (regs.start);
                    free (regs.end);
                  }
                regfree (&regex);
              }

            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("x", 1, &regex);
            if (s)
              result |= 8;
            else
              {
                /* glibc-2.2.93 does not work with a negative RANGE argument.  */
                if (re_search (&regex, "wxy", 3, 2, -2, &regs) != 1)
                  result |= 8;
                else
                  {
                    free (regs.start);
                    free (regs.end);
                  }
                regfree (&regex);
              }

            /* The version of regex.c in older versions of gnulib
               ignored RE_ICASE.  Detect that problem too.  */
            re_set_syntax (RE_SYNTAX_EMACS | RE_ICASE);
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("x", 1, &regex);
            if (s)
              result |= 16;
            else
              {
                if (re_search (&regex, "WXY", 3, 0, 3, &regs) < 0)
                  result |= 16;
                else
                  {
                    free (regs.start);
                    free (regs.end);
                  }
                regfree (&regex);
              }

            /* Catch a bug reported by Vin Shelton in
               https://lists.gnu.org/r/bug-coreutils/2007-06/msg00089.html
               */
            re_set_syntax (RE_SYNTAX_POSIX_BASIC
                           & ~RE_CONTEXT_INVALID_DUP
                           & ~RE_NO_EMPTY_RANGES);
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("[[:alnum:]_-]\\\\+\$", 16, &regex);
            if (s)
              result |= 32;
            else
              regfree (&regex);

            /* REG_STARTEND was added to glibc on 2004-01-15.
               Reject older versions.  */
            if (! REG_STARTEND)
              result |= 64;

            /* Matching with the compiled form of this regexp would provoke
               an assertion failure prior to glibc-2.28:
                 regexec.c:1375: pop_fail_stack: Assertion 'num >= 0' failed
               With glibc-2.28, compilation fails and reports the invalid
               back reference.  */
            re_set_syntax (RE_SYNTAX_POSIX_EGREP);
            memset (&regex, 0, sizeof regex);
            s = re_compile_pattern ("0|()0|\\\\1|0", 10, &regex);
            if (!s)
              {
                memset (&regs, 0, sizeof regs);
                i = re_search (&regex, "x", 1, 0, 1, &regs);
                if (i != -1)
                  result |= 64;
                if (0 <= i)
                  {
                    free (regs.start);
                    free (regs.end);
                  }
                regfree (&regex);
              }
            else
              {
                if (strcmp (s, "Invalid back reference"))
                  result |= 64;
              }

            /* glibc bug 11053.  */
            re_set_syntax (RE_SYNTAX_POSIX_BASIC);
            memset (&regex, 0, sizeof regex);
            static char const pat_sub2[] = "\\\\(a*\\\\)*a*\\\\1";
            s = re_compile_pattern (pat_sub2, sizeof pat_sub2 - 1, &regex);
            if (s)
              result |= 64;
            else
              {
                memset (&regs, 0, sizeof regs);
                static char const data[] = "a";
                int datalen = sizeof data - 1;
                i = re_search (&regex, data, datalen, 0, datalen, &regs);
                if (i != 0)
                  result |= 64;
                else if (regs.num_regs < 2)
                  result |= 64;
                else if (! (regs.start[0] == 0 && regs.end[0] == 1))
                  result |= 64;
                else if (! (regs.start[1] == 0 && regs.end[1] == 0))
                  result |= 64;
                regfree (&regex);
                free (regs.start);
                free (regs.end);
              }

#if 0
            /* It would be nice to reject hosts whose regoff_t values are too
               narrow (including glibc on hosts with 64-bit ptrdiff_t and
               32-bit int), but we should wait until glibc implements this
               feature.  Otherwise, support for equivalence classes and
               multibyte collation symbols would always be broken except
               when compiling --without-included-regex.   */
            if (sizeof (regoff_t) < sizeof (ptrdiff_t)
                || sizeof (regoff_t) < sizeof (ssize_t))
              result |= 64;
#endif

            return result;
          ]])],
        [gl_cv_func_re_compile_pattern_working=yes],
        [gl_cv_func_re_compile_pattern_working=no],
        [case "$host_os" in
                   # Guess no on native Windows.
           mingw*) gl_cv_func_re_compile_pattern_working="guessing no" ;;
                   # Otherwise obey --enable-cross-guesses.
           *)      gl_cv_func_re_compile_pattern_working="$gl_cross_guess_normal" ;;
         esac
        ])
      ])
    case "$gl_cv_func_re_compile_pattern_working" in #(
      *yes) ac_use_included_regex=no;; #(
      *no) ac_use_included_regex=yes;;
    esac
    ;;
  *) AC_MSG_ERROR([Invalid value for --with-included-regex: $with_included_regex])
    ;;
  esac

  if test $ac_use_included_regex = yes; then
    AC_DEFINE([_REGEX_INCLUDE_LIMITS_H], [1],
      [Define if you want <regex.h> to include <limits.h>, so that it
       consistently overrides <limits.h>'s RE_DUP_MAX.])
    AC_DEFINE([_REGEX_LARGE_OFFSETS], [1],
      [Define if you want regoff_t to be at least as wide POSIX requires.])
    AC_DEFINE([re_syntax_options], [rpl_re_syntax_options],
      [Define to rpl_re_syntax_options if the replacement should be used.])
    AC_DEFINE([re_set_syntax], [rpl_re_set_syntax],
      [Define to rpl_re_set_syntax if the replacement should be used.])
    AC_DEFINE([re_compile_pattern], [rpl_re_compile_pattern],
      [Define to rpl_re_compile_pattern if the replacement should be used.])
    AC_DEFINE([re_compile_fastmap], [rpl_re_compile_fastmap],
      [Define to rpl_re_compile_fastmap if the replacement should be used.])
    AC_DEFINE([re_search], [rpl_re_search],
      [Define to rpl_re_search if the replacement should be used.])
    AC_DEFINE([re_search_2], [rpl_re_search_2],
      [Define to rpl_re_search_2 if the replacement should be used.])
    AC_DEFINE([re_match], [rpl_re_match],
      [Define to rpl_re_match if the replacement should be used.])
    AC_DEFINE([re_match_2], [rpl_re_match_2],
      [Define to rpl_re_match_2 if the replacement should be used.])
    AC_DEFINE([re_set_registers], [rpl_re_set_registers],
      [Define to rpl_re_set_registers if the replacement should be used.])
    AC_DEFINE([re_comp], [rpl_re_comp],
      [Define to rpl_re_comp if the replacement should be used.])
    AC_DEFINE([re_exec], [rpl_re_exec],
      [Define to rpl_re_exec if the replacement should be used.])
    AC_DEFINE([regcomp], [rpl_regcomp],
      [Define to rpl_regcomp if the replacement should be used.])
    AC_DEFINE([regexec], [rpl_regexec],
      [Define to rpl_regexec if the replacement should be used.])
    AC_DEFINE([regerror], [rpl_regerror],
      [Define to rpl_regerror if the replacement should be used.])
    AC_DEFINE([regfree], [rpl_regfree],
      [Define to rpl_regfree if the replacement should be used.])
  fi
])

# Prerequisites of lib/regex.c and lib/regex_internal.c.
AC_DEFUN([gl_PREREQ_REGEX],
[
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([AC_C_INLINE])
  AC_REQUIRE([AC_C_RESTRICT])
  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  AC_REQUIRE([gl_EEMALLOC])
  AC_CHECK_HEADERS([libintl.h])
  AC_CHECK_FUNCS_ONCE([isblank iswctype])
  AC_CHECK_DECLS([isblank], [], [], [[#include <ctype.h>]])
])

# setlocale_null.m4 serial 5
dnl Copyright (C) 2019-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_SETLOCALE_NULL],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_PTHREADLIB])
  AC_CHECK_HEADERS_ONCE([threads.h])

  AC_CACHE_CHECK([whether setlocale (LC_ALL, NULL) is multithread-safe],
    [gl_cv_func_setlocale_null_all_mtsafe],
    [case "$host_os" in
       # Guess no on musl libc, macOS, FreeBSD, NetBSD, OpenBSD, AIX, Haiku, Cygwin.
       *-musl* | darwin* | freebsd* | midnightbsd* | netbsd* | openbsd* | aix* | haiku* | cygwin*)
         gl_cv_func_setlocale_null_all_mtsafe=no ;;
       # Guess yes on glibc, HP-UX, IRIX, Solaris, native Windows.
       *-gnu* | gnu* | hpux* | irix* | solaris* | mingw*)
         gl_cv_func_setlocale_null_all_mtsafe=yes ;;
       # If we don't know, obey --enable-cross-guesses.
       *)
         gl_cv_func_setlocale_null_all_mtsafe="$gl_cross_guess_normal" ;;
     esac
    ])
  dnl On platforms without multithreading, there is no issue.
  case "$host_os" in
    mingw*) ;;
    *)
      if test $gl_pthread_api = no && test $ac_cv_header_threads_h = no; then
        gl_cv_func_setlocale_null_all_mtsafe="trivially yes"
      fi
      ;;
  esac
  case "$gl_cv_func_setlocale_null_all_mtsafe" in
    *yes) SETLOCALE_NULL_ALL_MTSAFE=1 ;;
    *)    SETLOCALE_NULL_ALL_MTSAFE=0 ;;
  esac
  AC_DEFINE_UNQUOTED([SETLOCALE_NULL_ALL_MTSAFE], [$SETLOCALE_NULL_ALL_MTSAFE],
    [Define to 1 if setlocale (LC_ALL, NULL) is multithread-safe.])

  dnl This is about a single category (not LC_ALL).
  AC_CACHE_CHECK([whether setlocale (category, NULL) is multithread-safe],
    [gl_cv_func_setlocale_null_one_mtsafe],
    [case "$host_os" in
       # Guess no on OpenBSD, AIX.
       openbsd* | aix*)
         gl_cv_func_setlocale_null_one_mtsafe=no ;;
       # Guess yes on glibc, musl libc, macOS, FreeBSD, NetBSD, HP-UX, IRIX, Solaris, Haiku, Cygwin, native Windows.
       *-gnu* | gnu* | *-musl* | darwin* | freebsd* | midnightbsd* | netbsd* | hpux* | irix* | solaris* | haiku* | cygwin* | mingw*)
         gl_cv_func_setlocale_null_one_mtsafe=yes ;;
       # If we don't know, obey --enable-cross-guesses.
       *)
         gl_cv_func_setlocale_null_one_mtsafe="$gl_cross_guess_normal" ;;
     esac
    ])
  dnl On platforms without multithreading, there is no issue.
  case "$host_os" in
    mingw*) ;;
    *)
      if test $gl_pthread_api = no && test $ac_cv_header_threads_h = no; then
        gl_cv_func_setlocale_null_one_mtsafe="trivially yes"
      fi
      ;;
  esac
  case "$gl_cv_func_setlocale_null_one_mtsafe" in
    *yes) SETLOCALE_NULL_ONE_MTSAFE=1 ;;
    *)    SETLOCALE_NULL_ONE_MTSAFE=0 ;;
  esac
  AC_DEFINE_UNQUOTED([SETLOCALE_NULL_ONE_MTSAFE], [$SETLOCALE_NULL_ONE_MTSAFE],
    [Define to 1 if setlocale (category, NULL) is multithread-safe.])

  dnl Determine link dependencies of lib/setlocale_null.c and lib/setlocale-lock.c.
  if test $SETLOCALE_NULL_ALL_MTSAFE = 0 || test $SETLOCALE_NULL_ONE_MTSAFE = 0; then
    case "$host_os" in
      mingw*) LIB_SETLOCALE_NULL= ;;
      *)
        gl_WEAK_SYMBOLS
        case "$gl_cv_have_weak" in
          *yes) LIB_SETLOCALE_NULL= ;;
          *)    LIB_SETLOCALE_NULL="$LIBPTHREAD" ;;
        esac
        ;;
    esac
  else
    LIB_SETLOCALE_NULL=
  fi
  dnl LIB_SETLOCALE_NULL is expected to be '-pthread' or '-lpthread' on AIX
  dnl with gcc or xlc, and empty otherwise.
  AC_SUBST([LIB_SETLOCALE_NULL])
])

# Prerequisites of lib/setlocale-lock.c.
AC_DEFUN([gl_PREREQ_SETLOCALE_LOCK],
[
  gl_VISIBILITY
])

# sigaction.m4 serial 7
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Determine if sigaction interface is present.
AC_DEFUN([gl_SIGACTION],
[
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([sigaction])
  if test $ac_cv_func_sigaction = yes; then
    AC_CHECK_MEMBERS([struct sigaction.sa_sigaction], , ,
                     [[#include <signal.h>]])
    if test $ac_cv_member_struct_sigaction_sa_sigaction = no; then
      HAVE_STRUCT_SIGACTION_SA_SIGACTION=0
    fi
  else
    HAVE_SIGACTION=0
  fi
])

# Prerequisites of the part of lib/signal.in.h and of lib/sigaction.c.
AC_DEFUN([gl_PREREQ_SIGACTION],
[
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
  AC_REQUIRE([AC_C_RESTRICT])
  AC_REQUIRE([AC_TYPE_UID_T])
  AC_REQUIRE([gl_PREREQ_SIG_HANDLER_H])
  AC_CHECK_FUNCS_ONCE([sigaltstack siginterrupt])
  AC_CHECK_TYPES([siginfo_t], [], [], [[
#include <signal.h>
  ]])
  if test $ac_cv_type_siginfo_t = no; then
    HAVE_SIGINFO_T=0
  fi
])

# Prerequisites of lib/sig-handler.h.
AC_DEFUN([gl_PREREQ_SIG_HANDLER_H], [:])

# signal_h.m4 serial 22
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_SIGNAL_H],
[
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_TYPE_SIGSET_T])
  gl_NEXT_HEADERS([signal.h])

# AIX declares sig_atomic_t to already include volatile, and C89 compilers
# then choke on 'volatile sig_atomic_t'.  C99 requires that it compile.
  AC_CHECK_TYPE([volatile sig_atomic_t], [],
    [HAVE_TYPE_VOLATILE_SIG_ATOMIC_T=0], [[
#include <signal.h>
    ]])

  dnl Ensure the type pid_t gets defined.
  AC_REQUIRE([AC_TYPE_PID_T])

  AC_REQUIRE([AC_TYPE_UID_T])

  dnl Persuade glibc <signal.h> to define sighandler_t.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])
  AC_CHECK_TYPE([sighandler_t], [], [HAVE_SIGHANDLER_T=0], [[
#include <signal.h>
    ]])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <signal.h>
    ]], [pthread_sigmask sigaction
    sigaddset sigdelset sigemptyset sigfillset sigismember
    sigpending sigprocmask])

  AC_REQUIRE([AC_C_RESTRICT])
])

AC_DEFUN([gl_CHECK_TYPE_SIGSET_T],
[
  AC_CHECK_TYPES([sigset_t],
    [gl_cv_type_sigset_t=yes], [gl_cv_type_sigset_t=no],
    [[
      #include <signal.h>
      /* Mingw defines sigset_t not in <signal.h>, but in <sys/types.h>.  */
      #include <sys/types.h>
    ]])
  if test $gl_cv_type_sigset_t != yes; then
    HAVE_SIGSET_T=0
  fi
])

# gl_SIGNAL_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SIGNAL_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SIGNAL_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SIGNAL_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SIGNAL_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PTHREAD_SIGMASK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RAISE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGNAL_H_SIGPIPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGPROCMASK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGACTION])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SIGNAL_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
])

AC_DEFUN([gl_SIGNAL_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_POSIX_SIGNALBLOCKING=1; AC_SUBST([HAVE_POSIX_SIGNALBLOCKING])
  HAVE_PTHREAD_SIGMASK=1;      AC_SUBST([HAVE_PTHREAD_SIGMASK])
  HAVE_RAISE=1;                AC_SUBST([HAVE_RAISE])
  HAVE_SIGSET_T=1;             AC_SUBST([HAVE_SIGSET_T])
  HAVE_SIGINFO_T=1;            AC_SUBST([HAVE_SIGINFO_T])
  HAVE_SIGACTION=1;            AC_SUBST([HAVE_SIGACTION])
  HAVE_STRUCT_SIGACTION_SA_SIGACTION=1;
                               AC_SUBST([HAVE_STRUCT_SIGACTION_SA_SIGACTION])
  HAVE_TYPE_VOLATILE_SIG_ATOMIC_T=1;
                               AC_SUBST([HAVE_TYPE_VOLATILE_SIG_ATOMIC_T])
  HAVE_SIGHANDLER_T=1;         AC_SUBST([HAVE_SIGHANDLER_T])
  REPLACE_PTHREAD_SIGMASK=0;   AC_SUBST([REPLACE_PTHREAD_SIGMASK])
  REPLACE_RAISE=0;             AC_SUBST([REPLACE_RAISE])
])

# signalblocking.m4 serial 17
dnl Copyright (C) 2001-2002, 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Determine available signal blocking primitives. Three different APIs exist:
# 1) POSIX: sigemptyset, sigaddset, sigprocmask
# 2) SYSV: sighold, sigrelse
# 3) BSD: sigblock, sigsetmask
# For simplicity, here we check only for the POSIX signal blocking.
AC_DEFUN([gl_SIGNALBLOCKING],
[
  AC_REQUIRE([gl_SIGNAL_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_TYPE_SIGSET_T])
  HAVE_POSIX_SIGNALBLOCKING=0
  if test "$gl_cv_type_sigset_t" = yes; then
    AC_CHECK_FUNC([sigprocmask], [HAVE_POSIX_SIGNALBLOCKING=1])
  fi
])

# Prerequisites of lib/sigprocmask.c.
AC_DEFUN([gl_PREREQ_SIGPROCMASK], [:])

# signbit.m4 serial 20
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_SIGNBIT],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([for signbit macro], [gl_cv_func_signbit],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <math.h>
/* If signbit is defined as a function, don't use it, since calling it for
   'float' or 'long double' arguments would involve conversions.
   If signbit is not declared at all but exists as a library function, don't
   use it, since the prototype may not match.
   If signbit is not declared at all but exists as a compiler built-in, don't
   use it, since it's preferable to use __builtin_signbit* (no warnings,
   no conversions).  */
#ifndef signbit
# error "signbit should be a macro"
#endif
#include <string.h>
]gl_SIGNBIT_TEST_PROGRAM
])],
        [gl_cv_func_signbit=yes],
        [gl_cv_func_signbit=no],
        [case "$host_os" in
                          # Guess yes on glibc systems.
           *-gnu* | gnu*) gl_cv_func_signbit="guessing yes" ;;
                          # Guess yes on musl systems.
           *-musl*)       gl_cv_func_signbit="guessing yes" ;;
                          # Guess yes on native Windows.
           mingw*)        gl_cv_func_signbit="guessing yes" ;;
                          # If we don't know, obey --enable-cross-guesses.
           *)             gl_cv_func_signbit="$gl_cross_guess_normal" ;;
         esac
        ])
    ])
  dnl GCC >= 4.0 and clang provide three built-ins for signbit.
  dnl They can be used without warnings, also in C++, regardless of <math.h>.
  dnl But they may expand to calls to functions, which may or may not be in
  dnl libc.
  AC_CACHE_CHECK([for signbit compiler built-ins],
    [gl_cv_func_signbit_builtins],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#if (__GNUC__ >= 4) || (__clang_major__ >= 4)
# define signbit(x) \
   (sizeof (x) == sizeof (long double) ? __builtin_signbitl (x) : \
    sizeof (x) == sizeof (double) ? __builtin_signbit (x) : \
    __builtin_signbitf (x))
#else
# error "signbit should be three compiler built-ins"
#endif
#include <string.h>
]gl_SIGNBIT_TEST_PROGRAM
])],
        [gl_cv_func_signbit_builtins=yes],
        [gl_cv_func_signbit_builtins=no],
        [case "$host_os" in
                          # Guess yes on glibc systems.
           *-gnu* | gnu*) gl_cv_func_signbit_builtins="guessing yes" ;;
                          # Guess yes on musl systems.
           *-musl*)       gl_cv_func_signbit_builtins="guessing yes" ;;
                          # Guess yes on mingw, no on MSVC.
           mingw*)        if test -n "$GCC"; then
                            gl_cv_func_signbit_builtins="guessing yes"
                          else
                            gl_cv_func_signbit_builtins="guessing no"
                          fi
                          ;;
                          # If we don't know, obey --enable-cross-guesses.
           *)             gl_cv_func_signbit_builtins="$gl_cross_guess_normal" ;;
         esac
        ])
    ])
  dnl Use the compiler built-ins whenever possible, because they are more
  dnl efficient than the system library functions (if they exist).
  case "$gl_cv_func_signbit_builtins" in
    *yes)
      REPLACE_SIGNBIT_USING_BUILTINS=1
      ;;
    *)
      case "$gl_cv_func_signbit" in
        *yes) ;;
        *)
          dnl REPLACE_SIGNBIT=1 makes sure the signbit[fdl] functions get built.
          REPLACE_SIGNBIT=1
          ;;
      esac
      ;;
  esac
  dnl On Solaris 10, with CC in C++ mode, signbit is not available although
  dnl is with cc in C mode. This cannot be worked around by defining
  dnl _XOPEN_SOURCE=600, because the latter does not work in C++ mode on
  dnl Solaris 11.0. Therefore use the replacement functions on Solaris.
  case "$host_os" in
    solaris*)
      REPLACE_SIGNBIT=1
      ;;
  esac
  if test $REPLACE_SIGNBIT = 1; then
    gl_FLOAT_SIGN_LOCATION
    gl_DOUBLE_SIGN_LOCATION
    gl_LONG_DOUBLE_SIGN_LOCATION
    if test "$gl_cv_cc_float_signbit" = unknown; then
      dnl Test whether copysignf() is declared.
      AC_CHECK_DECLS([copysignf], , , [[#include <math.h>]])
      if test "$ac_cv_have_decl_copysignf" = yes; then
        dnl Test whether copysignf() can be used without libm.
        AC_CACHE_CHECK([whether copysignf can be used without linking with libm],
          [gl_cv_func_copysignf_no_libm],
          [
            AC_LINK_IFELSE(
              [AC_LANG_PROGRAM(
                 [[#include <math.h>
                   float x, y;]],
                 [[return copysignf (x, y) < 0;]])],
              [gl_cv_func_copysignf_no_libm=yes],
              [gl_cv_func_copysignf_no_libm=no])
          ])
        if test $gl_cv_func_copysignf_no_libm = yes; then
          AC_DEFINE([HAVE_COPYSIGNF_IN_LIBC], [1],
            [Define if the copysignf function is declared in <math.h> and available in libc.])
        fi
      fi
    fi
    if test "$gl_cv_cc_double_signbit" = unknown; then
      dnl Test whether copysign() is declared.
      AC_CHECK_DECLS([copysign], , , [[#include <math.h>]])
      if test "$ac_cv_have_decl_copysign" = yes; then
        dnl Test whether copysign() can be used without libm.
        AC_CACHE_CHECK([whether copysign can be used without linking with libm],
          [gl_cv_func_copysign_no_libm],
          [
            AC_LINK_IFELSE(
              [AC_LANG_PROGRAM(
                 [[#include <math.h>
                   double x, y;]],
                 [[return copysign (x, y) < 0;]])],
              [gl_cv_func_copysign_no_libm=yes],
              [gl_cv_func_copysign_no_libm=no])
          ])
        if test $gl_cv_func_copysign_no_libm = yes; then
          AC_DEFINE([HAVE_COPYSIGN_IN_LIBC], [1],
            [Define if the copysign function is declared in <math.h> and available in libc.])
        fi
      fi
    fi
    if test "$gl_cv_cc_long_double_signbit" = unknown; then
      dnl Test whether copysignl() is declared.
      AC_CHECK_DECLS([copysignl], , , [[#include <math.h>]])
      if test "$ac_cv_have_decl_copysignl" = yes; then
        dnl Test whether copysignl() can be used without libm.
        AC_CACHE_CHECK([whether copysignl can be used without linking with libm],
          [gl_cv_func_copysignl_no_libm],
          [
            AC_LINK_IFELSE(
              [AC_LANG_PROGRAM(
                 [[#include <math.h>
                   long double x, y;]],
                 [[return copysignl (x, y) < 0;]])],
              [gl_cv_func_copysignl_no_libm=yes],
              [gl_cv_func_copysignl_no_libm=no])
          ])
        if test $gl_cv_func_copysignl_no_libm = yes; then
          AC_DEFINE([HAVE_COPYSIGNL_IN_LIBC], [1],
            [Define if the copysignl function is declared in <math.h> and available in libc.])
        fi
      fi
    fi
  fi
])

AC_DEFUN([gl_SIGNBIT_TEST_PROGRAM], [[
/* Global variables.
   Needed because GCC 4 constant-folds __builtin_signbitl (literal)
   but cannot constant-fold            __builtin_signbitl (variable).  */
float vf;
double vd;
long double vl;
int main ()
{
/* HP cc on HP-UX 10.20 has a bug with the constant expression -0.0.
   So we use -p0f and -p0d instead.  */
float p0f = 0.0f;
float m0f = -p0f;
double p0d = 0.0;
double m0d = -p0d;
/* On HP-UX 10.20, negating 0.0L does not yield -0.0L.
   So we use another constant expression instead.
   But that expression does not work on other platforms, such as when
   cross-compiling to PowerPC on Mac OS X 10.5.  */
long double p0l = 0.0L;
#if defined __hpux || defined __sgi
long double m0l = -LDBL_MIN * LDBL_MIN;
#else
long double m0l = -p0l;
#endif
  int result = 0;
  if (signbit (vf)) /* link check */
    vf++;
  {
    float plus_inf = 1.0f / p0f;
    float minus_inf = -1.0f / p0f;
    if (!(!signbit (255.0f)
          && signbit (-255.0f)
          && !signbit (p0f)
          && (memcmp (&m0f, &p0f, sizeof (float)) == 0 || signbit (m0f))
          && !signbit (plus_inf)
          && signbit (minus_inf)))
      result |= 1;
  }
  if (signbit (vd)) /* link check */
    vd++;
  {
    double plus_inf = 1.0 / p0d;
    double minus_inf = -1.0 / p0d;
    if (!(!signbit (255.0)
          && signbit (-255.0)
          && !signbit (p0d)
          && (memcmp (&m0d, &p0d, sizeof (double)) == 0 || signbit (m0d))
          && !signbit (plus_inf)
          && signbit (minus_inf)))
      result |= 2;
  }
  if (signbit (vl)) /* link check */
    vl++;
  {
    long double plus_inf = 1.0L / p0l;
    long double minus_inf = -1.0L / p0l;
    if (signbit (255.0L))
      result |= 4;
    if (!signbit (-255.0L))
      result |= 4;
    if (signbit (p0l))
      result |= 8;
    if (!(memcmp (&m0l, &p0l, sizeof (long double)) == 0 || signbit (m0l)))
      result |= 16;
    if (signbit (plus_inf))
      result |= 32;
    if (!signbit (minus_inf))
      result |= 64;
  }
  return result;
}
]])

AC_DEFUN([gl_FLOAT_SIGN_LOCATION],
[
  gl_FLOATTYPE_SIGN_LOCATION([float], [gl_cv_cc_float_signbit], [f], [FLT])
])

AC_DEFUN([gl_DOUBLE_SIGN_LOCATION],
[
  gl_FLOATTYPE_SIGN_LOCATION([double], [gl_cv_cc_double_signbit], [], [DBL])
])

AC_DEFUN([gl_LONG_DOUBLE_SIGN_LOCATION],
[
  gl_FLOATTYPE_SIGN_LOCATION([long double], [gl_cv_cc_long_double_signbit], [L], [LDBL])
])

AC_DEFUN([gl_FLOATTYPE_SIGN_LOCATION],
[
  AC_CACHE_CHECK([where to find the sign bit in a '$1'],
    [$2],
    [
      AC_RUN_IFELSE(
        [AC_LANG_SOURCE([[
#include <stddef.h>
#include <stdio.h>
#define NWORDS \
  ((sizeof ($1) + sizeof (unsigned int) - 1) / sizeof (unsigned int))
typedef union { $1 value; unsigned int word[NWORDS]; }
        memory_float;
static memory_float plus = { 1.0$3 };
static memory_float minus = { -1.0$3 };
int main ()
{
  size_t j, k, i;
  unsigned int m;
  FILE *fp = fopen ("conftest.out", "w");
  if (fp == NULL)
    return 1;
  /* Find the different bit.  */
  k = 0; m = 0;
  for (j = 0; j < NWORDS; j++)
    {
      unsigned int x = plus.word[j] ^ minus.word[j];
      if ((x & (x - 1)) || (x && m))
        {
          /* More than one bit difference.  */
          fprintf (fp, "unknown");
          fclose (fp);
          return 2;
        }
      if (x)
        {
          k = j;
          m = x;
        }
    }
  if (m == 0)
    {
      /* No difference.  */
      fprintf (fp, "unknown");
      fclose (fp);
      return 3;
    }
  /* Now m = plus.word[k] ^ ~minus.word[k].  */
  if (plus.word[k] & ~minus.word[k])
    {
      /* Oh? The sign bit is set in the positive and cleared in the negative
         numbers?  */
      fprintf (fp, "unknown");
      fclose (fp);
      return 4;
    }
  for (i = 0; ; i++)
    if ((m >> i) & 1)
      break;
  fprintf (fp, "word %d bit %d", (int) k, (int) i);
  if (fclose (fp) != 0)
    return 5;
  return 0;
}
        ]])],
        [$2=`cat conftest.out`],
        [$2="unknown"],
        [
          dnl When cross-compiling, we don't know. It depends on the
          dnl ABI and compiler version. There are too many cases.
          $2="unknown"
        ])
      rm -f conftest.out
    ])
  case "$]$2[" in
    word*bit*)
      word=`echo "$]$2[" | sed -e 's/word //' -e 's/ bit.*//'`
      bit=`echo "$]$2[" | sed -e 's/word.*bit //'`
      AC_DEFINE_UNQUOTED([$4][_SIGNBIT_WORD], [$word],
        [Define as the word index where to find the sign of '$1'.])
      AC_DEFINE_UNQUOTED([$4][_SIGNBIT_BIT], [$bit],
        [Define as the bit index in the word where to find the sign of '$1'.])
      ;;
  esac
])

# Expands to code that defines a function signbitf(float).
# It extracts the sign bit of a non-NaN value.
AC_DEFUN([gl_FLOAT_SIGNBIT_CODE],
[
  gl_FLOATTYPE_SIGNBIT_CODE([float], [f], [f])
])

# Expands to code that defines a function signbitd(double).
# It extracts the sign bit of a non-NaN value.
AC_DEFUN([gl_DOUBLE_SIGNBIT_CODE],
[
  gl_FLOATTYPE_SIGNBIT_CODE([double], [d], [])
])

# Expands to code that defines a function signbitl(long double).
# It extracts the sign bit of a non-NaN value.
AC_DEFUN([gl_LONG_DOUBLE_SIGNBIT_CODE],
[
  gl_FLOATTYPE_SIGNBIT_CODE([long double], [l], [L])
])

AC_DEFUN([gl_FLOATTYPE_SIGNBIT_CODE],
[[
static int
signbit$2 ($1 value)
{
  typedef union { $1 f; unsigned char b[sizeof ($1)]; } float_union;
  static float_union plus_one = { 1.0$3 };   /* unused bits are zero here */
  static float_union minus_one = { -1.0$3 }; /* unused bits are zero here */
  /* Compute the sign bit mask as the XOR of plus_one and minus_one.  */
  float_union u;
  unsigned int i;
  u.f = value;
  for (i = 0; i < sizeof ($1); i++)
    if (u.b[i] & (plus_one.b[i] ^ minus_one.b[i]))
      return 1;
  return 0;
}
]])

# size_max.m4 serial 12
dnl Copyright (C) 2003, 2005-2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_PREREQ([2.61])

AC_DEFUN([gl_SIZE_MAX],
[
  AC_CHECK_HEADERS([stdint.h])
  dnl First test whether the system already has SIZE_MAX.
  AC_CACHE_CHECK([for SIZE_MAX], [gl_cv_size_max], [
    gl_cv_size_max=no
    AC_EGREP_CPP([Found it], [
#include <limits.h>
#if HAVE_STDINT_H
#include <stdint.h>
#endif
#ifdef SIZE_MAX
Found it
#endif
], [gl_cv_size_max=yes])
    if test $gl_cv_size_max != yes; then
      dnl Define it ourselves. Here we assume that the type 'size_t' is not wider
      dnl than the type 'unsigned long'. Try hard to find a definition that can
      dnl be used in a preprocessor #if, i.e. doesn't contain a cast.
      AC_COMPUTE_INT([size_t_bits_minus_1], [sizeof (size_t) * CHAR_BIT - 1],
        [#include <stddef.h>
#include <limits.h>], [size_t_bits_minus_1=])
      AC_COMPUTE_INT([fits_in_uint], [sizeof (size_t) <= sizeof (unsigned int)],
        [#include <stddef.h>], [fits_in_uint=])
      if test -n "$size_t_bits_minus_1" && test -n "$fits_in_uint"; then
        if test $fits_in_uint = 1; then
          dnl Even though SIZE_MAX fits in an unsigned int, it must be of type
          dnl 'unsigned long' if the type 'size_t' is the same as 'unsigned long'.
          AC_COMPILE_IFELSE(
            [AC_LANG_PROGRAM(
               [[#include <stddef.h>
                 extern size_t foo;
                 extern unsigned long foo;
               ]],
               [[]])],
            [fits_in_uint=0])
        fi
        dnl We cannot use 'expr' to simplify this expression, because 'expr'
        dnl works only with 'long' integers in the host environment, while we
        dnl might be cross-compiling from a 32-bit platform to a 64-bit platform.
        if test $fits_in_uint = 1; then
          gl_cv_size_max="(((1U << $size_t_bits_minus_1) - 1) * 2 + 1)"
        else
          gl_cv_size_max="(((1UL << $size_t_bits_minus_1) - 1) * 2 + 1)"
        fi
      else
        dnl Shouldn't happen, but who knows...
        gl_cv_size_max='((size_t)~(size_t)0)'
      fi
    fi
  ])
  if test "$gl_cv_size_max" != yes; then
    AC_DEFINE_UNQUOTED([SIZE_MAX], [$gl_cv_size_max],
      [Define as the maximum value of type 'size_t', if the system doesn't define it.])
  fi
  dnl Don't redefine SIZE_MAX in config.h if config.h is re-included after
  dnl <stdint.h>. Remember that the #undef in AH_VERBATIM gets replaced with
  dnl #define by AC_DEFINE_UNQUOTED.
  AH_VERBATIM([SIZE_MAX],
[/* Define as the maximum value of type 'size_t', if the system doesn't define
   it. */
#ifndef SIZE_MAX
# undef SIZE_MAX
#endif])
])

# snprintf-posix.m4 serial 14
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_SNPRINTF_POSIX],
[
  AC_REQUIRE([gl_PRINTF_SIZES_C99])
  AC_REQUIRE([gl_PRINTF_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_INFINITE])
  AC_REQUIRE([gl_PRINTF_INFINITE_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_A])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_F])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_N])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_LS])
  AC_REQUIRE([gl_PRINTF_POSITIONS])
  AC_REQUIRE([gl_PRINTF_FLAG_GROUPING])
  AC_REQUIRE([gl_PRINTF_FLAG_LEFTADJUST])
  AC_REQUIRE([gl_PRINTF_FLAG_ZERO])
  AC_REQUIRE([gl_PRINTF_PRECISION])
  AC_REQUIRE([gl_PRINTF_ENOMEM])
  gl_cv_func_snprintf_posix=no
  AC_CHECK_FUNCS([snprintf])
  if test $ac_cv_func_snprintf = yes; then
    gl_SNPRINTF_TRUNCATION_C99
    gl_SNPRINTF_RETVAL_C99
    gl_SNPRINTF_DIRECTIVE_N
    gl_SNPRINTF_SIZE1
    gl_VSNPRINTF_ZEROSIZE_C99
    case "$gl_cv_func_printf_sizes_c99" in
      *yes)
        case "$gl_cv_func_printf_long_double" in
          *yes)
            case "$gl_cv_func_printf_infinite" in
              *yes)
                case "$gl_cv_func_printf_infinite_long_double" in
                  *yes)
                    case "$gl_cv_func_printf_directive_a" in
                      *yes)
                        case "$gl_cv_func_printf_directive_f" in
                          *yes)
                            case "$gl_cv_func_printf_directive_n" in
                              *yes)
                                case "$gl_cv_func_printf_directive_ls" in
                                  *yes)
                                    case "$gl_cv_func_printf_positions" in
                                      *yes)
                                        case "$gl_cv_func_printf_flag_grouping" in
                                          *yes)
                                            case "$gl_cv_func_printf_flag_leftadjust" in
                                              *yes)
                                                case "$gl_cv_func_printf_flag_zero" in
                                                  *yes)
                                                    case "$gl_cv_func_printf_precision" in
                                                      *yes)
                                                        case "$gl_cv_func_printf_enomem" in
                                                          *yes)
                                                            case "$gl_cv_func_snprintf_truncation_c99" in
                                                              *yes)
                                                                case "$gl_cv_func_snprintf_retval_c99" in
                                                                  *yes)
                                                                    case "$gl_cv_func_snprintf_directive_n" in
                                                                      *yes)
                                                                        case "$gl_cv_func_snprintf_size1" in
                                                                          *yes)
                                                                            case "$gl_cv_func_vsnprintf_zerosize_c99" in
                                                                              *yes)
                                                                                # snprintf exists and is
                                                                                # already POSIX compliant.
                                                                                gl_cv_func_snprintf_posix=yes
                                                                                ;;
                                                                            esac
                                                                            ;;
                                                                        esac
                                                                        ;;
                                                                    esac
                                                                    ;;
                                                                esac
                                                                ;;
                                                            esac
                                                            ;;
                                                        esac
                                                        ;;
                                                    esac
                                                    ;;
                                                esac
                                                ;;
                                            esac
                                            ;;
                                        esac
                                        ;;
                                    esac
                                    ;;
                                esac
                                ;;
                            esac
                            ;;
                        esac
                        ;;
                    esac
                    ;;
                esac
                ;;
            esac
            ;;
        esac
        ;;
    esac
  fi
  if test $gl_cv_func_snprintf_posix = no; then
    gl_PREREQ_VASNPRINTF_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_DIRECTIVE_A
    gl_PREREQ_VASNPRINTF_DIRECTIVE_F
    gl_PREREQ_VASNPRINTF_DIRECTIVE_LS
    gl_PREREQ_VASNPRINTF_FLAG_GROUPING
    gl_PREREQ_VASNPRINTF_FLAG_LEFTADJUST
    gl_PREREQ_VASNPRINTF_FLAG_ZERO
    gl_PREREQ_VASNPRINTF_PRECISION
    gl_PREREQ_VASNPRINTF_ENOMEM
    gl_REPLACE_VASNPRINTF
    gl_REPLACE_SNPRINTF
  fi
])

# snprintf.m4 serial 7
dnl Copyright (C) 2002-2004, 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Libintl 0.17 will replace snprintf only if it does not support %1$s,
dnl but defers to any gnulib snprintf replacements.  Therefore, gnulib
dnl must guarantee that the decision for replacing snprintf is a superset
dnl of the reasons checked by libintl.
AC_DEFUN([gl_FUNC_SNPRINTF],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  gl_cv_func_snprintf_usable=no
  AC_CHECK_FUNCS([snprintf])
  if test $ac_cv_func_snprintf = yes; then
    gl_SNPRINTF_SIZE1
    case "$gl_cv_func_snprintf_size1" in
      *yes)
        gl_SNPRINTF_RETVAL_C99
        case "$gl_cv_func_snprintf_retval_c99" in
          *yes)
            gl_PRINTF_POSITIONS
            case "$gl_cv_func_printf_positions" in
              *yes)
                gl_cv_func_snprintf_usable=yes
                ;;
            esac
            ;;
        esac
        ;;
    esac
  fi
  if test $gl_cv_func_snprintf_usable = no; then
    gl_REPLACE_SNPRINTF
  fi
  AC_CHECK_DECLS_ONCE([snprintf])
  if test $ac_cv_have_decl_snprintf = no; then
    HAVE_DECL_SNPRINTF=0
  fi
])

AC_DEFUN([gl_REPLACE_SNPRINTF],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  AC_LIBOBJ([snprintf])
  if test $ac_cv_func_snprintf = yes; then
    REPLACE_SNPRINTF=1
  else
    AC_CHECK_DECLS_ONCE([snprintf])
    if test $ac_cv_have_decl_snprintf = yes; then
      dnl If the function is declared but does not appear to exist, it may be
      dnl defined as an inline function. In order to avoid a conflict, we have
      dnl to define rpl_snprintf, not snprintf.
      REPLACE_SNPRINTF=1
    fi
  fi
  gl_PREREQ_SNPRINTF
])

# Prerequisites of lib/snprintf.c.
AC_DEFUN([gl_PREREQ_SNPRINTF], [:])

# ssize_t.m4 serial 5 (gettext-0.18.2)
dnl Copyright (C) 2001-2003, 2006, 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether ssize_t is defined.

AC_DEFUN([gt_TYPE_SSIZE_T],
[
  AC_CACHE_CHECK([for ssize_t], [gt_cv_ssize_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <sys/types.h>]],
          [[int x = sizeof (ssize_t *) + sizeof (ssize_t);
            return !x;]])],
       [gt_cv_ssize_t=yes], [gt_cv_ssize_t=no])])
  if test $gt_cv_ssize_t = no; then
    AC_DEFINE([ssize_t], [int],
              [Define as a signed type of the same size as size_t.])
  fi
])

# Checks for stat-related time functions.

# Copyright (C) 1998-1999, 2001, 2003, 2005-2007, 2009-2021 Free Software
# Foundation, Inc.

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# st_atim.tv_nsec - Linux, Solaris, Cygwin
# st_atimespec.tv_nsec - FreeBSD, NetBSD, if ! defined _POSIX_SOURCE
# st_atimensec - FreeBSD, NetBSD, if defined _POSIX_SOURCE
# st_atim.st__tim.tv_nsec - UnixWare (at least 2.1.2 through 7.1)

# st_birthtimespec - FreeBSD, NetBSD (hidden on OpenBSD 3.9, anyway)
# st_birthtim - Cygwin 1.7.0+

AC_DEFUN([gl_STAT_TIME],
[
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_CHECK_HEADERS_ONCE([sys/time.h])

  AC_CHECK_MEMBERS([struct stat.st_atim.tv_nsec],
    [AC_CACHE_CHECK([whether struct stat.st_atim is of type struct timespec],
       [ac_cv_typeof_struct_stat_st_atim_is_struct_timespec],
       [AC_COMPILE_IFELSE([AC_LANG_PROGRAM(
          [[
            #include <sys/types.h>
            #include <sys/stat.h>
            #if HAVE_SYS_TIME_H
            # include <sys/time.h>
            #endif
            #include <time.h>
            struct timespec ts;
            struct stat st;
          ]],
          [[
            st.st_atim = ts;
          ]])],
          [ac_cv_typeof_struct_stat_st_atim_is_struct_timespec=yes],
          [ac_cv_typeof_struct_stat_st_atim_is_struct_timespec=no])])
     if test $ac_cv_typeof_struct_stat_st_atim_is_struct_timespec = yes; then
       AC_DEFINE([TYPEOF_STRUCT_STAT_ST_ATIM_IS_STRUCT_TIMESPEC], [1],
         [Define to 1 if the type of the st_atim member of a struct stat is
          struct timespec.])
     fi],
    [AC_CHECK_MEMBERS([struct stat.st_atimespec.tv_nsec], [],
       [AC_CHECK_MEMBERS([struct stat.st_atimensec], [],
          [AC_CHECK_MEMBERS([struct stat.st_atim.st__tim.tv_nsec], [], [],
             [#include <sys/types.h>
              #include <sys/stat.h>])],
          [#include <sys/types.h>
           #include <sys/stat.h>])],
       [#include <sys/types.h>
        #include <sys/stat.h>])],
    [#include <sys/types.h>
     #include <sys/stat.h>])
])

# Check for st_birthtime, a feature from UFS2 (FreeBSD, NetBSD, OpenBSD, etc.)
# and NTFS (Cygwin).
# There was a time when this field was named st_createtime (21 June
# 2002 to 16 July 2002) But that window is very small and applied only
# to development code, so systems still using that configuration are
# not supported.  See revisions 1.10 and 1.11 of FreeBSD's
# src/sys/ufs/ufs/dinode.h.
#
AC_DEFUN([gl_STAT_BIRTHTIME],
[
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_CHECK_HEADERS_ONCE([sys/time.h])
  AC_CHECK_MEMBERS([struct stat.st_birthtimespec.tv_nsec], [],
    [AC_CHECK_MEMBERS([struct stat.st_birthtimensec], [],
      [AC_CHECK_MEMBERS([struct stat.st_birthtim.tv_nsec], [], [],
         [#include <sys/types.h>
          #include <sys/stat.h>])],
       [#include <sys/types.h>
        #include <sys/stat.h>])],
    [#include <sys/types.h>
     #include <sys/stat.h>])
])

# serial 18

# Copyright (C) 2009-2021 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_STAT],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([lstat])
  case "$host_os" in
    mingw*)
      dnl On this platform, the original stat() returns st_atime, st_mtime,
      dnl st_ctime values that are affected by the time zone.
      REPLACE_STAT=1
      ;;
    *)
      dnl AIX 7.1, Solaris 9, mingw64 mistakenly succeed on stat("file/").
      dnl (For mingw, this is due to a broken stat() override in libmingwex.a.)
      dnl FreeBSD 7.2 mistakenly succeeds on stat("link-to-file/").
      AC_CACHE_CHECK([whether stat handles trailing slashes on files],
        [gl_cv_func_stat_file_slash],
        [touch conftest.tmp
         # Assume that if we have lstat, we can also check symlinks.
         if test $ac_cv_func_lstat = yes; then
           ln -s conftest.tmp conftest.lnk
         fi
         AC_RUN_IFELSE(
           [AC_LANG_PROGRAM(
             [[#include <sys/stat.h>
]], [[int result = 0;
               struct stat st;
               if (!stat ("conftest.tmp/", &st))
                 result |= 1;
#if HAVE_LSTAT
               if (!stat ("conftest.lnk/", &st))
                 result |= 2;
#endif
               return result;
             ]])],
           [gl_cv_func_stat_file_slash=yes], [gl_cv_func_stat_file_slash=no],
           [case "$host_os" in
                               # Guess yes on Linux systems.
              linux-* | linux) gl_cv_func_stat_file_slash="guessing yes" ;;
                               # Guess yes on glibc systems.
              *-gnu* | gnu*)   gl_cv_func_stat_file_slash="guessing yes" ;;
                               # If we don't know, obey --enable-cross-guesses.
              *)               gl_cv_func_stat_file_slash="$gl_cross_guess_normal" ;;
            esac
           ])
         rm -f conftest.tmp conftest.lnk])
      case $gl_cv_func_stat_file_slash in
        *no)
          REPLACE_STAT=1
          AC_DEFINE([REPLACE_FUNC_STAT_FILE], [1], [Define to 1 if stat needs
            help when passed a file name with a trailing slash]);;
      esac
      case $host_os in
        dnl Solaris stat can return a negative tv_nsec.
        solaris*)
          REPLACE_FSTAT=1 ;;
      esac
      ;;
  esac
])

# Prerequisites of lib/stat.c and lib/stat-w32.c.
AC_DEFUN([gl_PREREQ_STAT], [
  AC_REQUIRE([gl_SYS_STAT_H])
  AC_REQUIRE([gl_PREREQ_STAT_W32])
  :
])

# Prerequisites of lib/stat-w32.c.
AC_DEFUN([gl_PREREQ_STAT_W32], [
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_CHECK_HEADERS([sdkddkver.h])
      ;;
  esac
])

# Check for stdalign.h that conforms to C11.

dnl Copyright 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Prepare for substituting <stdalign.h> if it is not supported.

AC_DEFUN([gl_STDALIGN_H],
[
  AC_CACHE_CHECK([for working stdalign.h],
    [gl_cv_header_working_stdalign_h],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdint.h>
            #include <stdalign.h>
            #include <stddef.h>

            /* Test that alignof yields a result consistent with offsetof.
               This catches GCC bug 52023
               <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=52023>.  */
            #ifdef __cplusplus
               template <class t> struct alignof_helper { char a; t b; };
            # define ao(type) offsetof (alignof_helper<type>, b)
            #else
            # define ao(type) offsetof (struct { char a; type b; }, b)
            #endif
            char test_double[ao (double) % _Alignof (double) == 0 ? 1 : -1];
            char test_long[ao (long int) % _Alignof (long int) == 0 ? 1 : -1];
            char test_alignof[alignof (double) == _Alignof (double) ? 1 : -1];

            /* Test _Alignas only on platforms where gnulib can help.  */
            #if \
                ((defined __cplusplus && 201103 <= __cplusplus) \
                 || (__TINYC__ && defined __attribute__) \
                 || (defined __APPLE__ && defined __MACH__ \
                     ? 4 < __GNUC__ + (1 <= __GNUC_MINOR__) \
                     : __GNUC__) \
                 || (__ia64 && (61200 <= __HP_cc || 61200 <= __HP_aCC)) \
                 || __ICC || 0x590 <= __SUNPRO_C || 0x0600 <= __xlC__ \
                 || 1300 <= _MSC_VER)
              struct alignas_test { char c; char alignas (8) alignas_8; };
              char test_alignas[offsetof (struct alignas_test, alignas_8) == 8
                                ? 1 : -1];
            #endif
          ]])],
       [gl_cv_header_working_stdalign_h=yes],
       [gl_cv_header_working_stdalign_h=no])])

  if test $gl_cv_header_working_stdalign_h = yes; then
    STDALIGN_H=''
  else
    STDALIGN_H='stdalign.h'
  fi

  AC_SUBST([STDALIGN_H])
  AM_CONDITIONAL([GL_GENERATE_STDALIGN_H], [test -n "$STDALIGN_H"])
])

# stdarg.m4 serial 7
dnl Copyright (C) 2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Provide a working va_copy in combination with <stdarg.h>.

AC_DEFUN([gl_STDARG_H],
[
  STDARG_H=''
  NEXT_STDARG_H='<stdarg.h>'
  AC_CACHE_CHECK([for va_copy],
    [gl_cv_func_va_copy],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stdarg.h>]],
          [[
#ifndef va_copy
void (*func) (va_list, va_list) = va_copy;
#endif
          ]])],
       [gl_cv_func_va_copy=yes],
       [gl_cv_func_va_copy=no])
    ])
  if test $gl_cv_func_va_copy = no; then
    dnl Provide a substitute.
    dnl Usually a simple definition in <config.h> is enough. Not so on AIX 5
    dnl with some versions of the /usr/vac/bin/cc compiler. It has an <stdarg.h>
    dnl which does '#undef va_copy', leading to a missing va_copy symbol. For
    dnl this platform, we use an <stdarg.h> substitute. But we cannot use this
    dnl approach on other platforms, because <stdarg.h> often defines only
    dnl preprocessor macros and gl_ABSOLUTE_HEADER, gl_CHECK_NEXT_HEADERS do
    dnl not work in this situation.
    AC_EGREP_CPP([vaccine],
      [#if defined _AIX && !defined __GNUC__
        AIX vaccine
       #endif
      ], [gl_aixcc=yes], [gl_aixcc=no])
    if test $gl_aixcc = yes; then
      dnl Provide a substitute <stdarg.h> file.
      STDARG_H=stdarg.h
      gl_NEXT_HEADERS([stdarg.h])
      dnl Fallback for the case when <stdarg.h> contains only macro definitions.
      if test "$gl_cv_next_stdarg_h" = '""'; then
        gl_cv_next_stdarg_h='"///usr/include/stdarg.h"'
        NEXT_STDARG_H="$gl_cv_next_stdarg_h"
      fi
    else
      dnl Provide a substitute in <config.h>, either __va_copy or as a simple
      dnl assignment.
      gl_CACHE_VAL_SILENT([gl_cv_func___va_copy], [
        AC_COMPILE_IFELSE(
          [AC_LANG_PROGRAM(
             [[#include <stdarg.h>]],
             [[
#ifndef __va_copy
error, bail out
#endif
             ]])],
          [gl_cv_func___va_copy=yes],
          [gl_cv_func___va_copy=no])])
      if test $gl_cv_func___va_copy = yes; then
        AC_DEFINE([va_copy], [__va_copy],
          [Define as a macro for copying va_list variables.])
      else
        AH_VERBATIM([gl_VA_COPY], [/* A replacement for va_copy, if needed.  */
#define gl_va_copy(a,b) ((a) = (b))])
        AC_DEFINE([va_copy], [gl_va_copy],
          [Define as a macro for copying va_list variables.])
      fi
    fi
  fi
  AC_SUBST([STDARG_H])
  AM_CONDITIONAL([GL_GENERATE_STDARG_H], [test -n "$STDARG_H"])
  AC_SUBST([NEXT_STDARG_H])
])

# Check for stdbool.h that conforms to C99.

dnl Copyright (C) 2002-2006, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

#serial 8

# Prepare for substituting <stdbool.h> if it is not supported.

AC_DEFUN([AM_STDBOOL_H],
[
  AC_REQUIRE([AC_CHECK_HEADER_STDBOOL])
  AC_REQUIRE([AC_CANONICAL_HOST])

  dnl On some platforms, <stdbool.h> does not exist or does not conform to C99.
  dnl On Solaris 10 with CC=cc CXX=CC, <stdbool.h> exists but is not usable
  dnl in C++ mode (and no <cstdbool> exists). In this case, we use our
  dnl replacement, also in C mode (for binary compatibility between C and C++).
  if test "$ac_cv_header_stdbool_h" = yes; then
    case "$host_os" in
      solaris*)
        if test -z "$GCC"; then
          STDBOOL_H='stdbool.h'
        else
          STDBOOL_H=''
        fi
        ;;
      *)
        STDBOOL_H=''
        ;;
    esac
  else
    STDBOOL_H='stdbool.h'
  fi
  AC_SUBST([STDBOOL_H])
  AM_CONDITIONAL([GL_GENERATE_STDBOOL_H], [test -n "$STDBOOL_H"])

  if test "$ac_cv_type__Bool" = yes; then
    HAVE__BOOL=1
  else
    HAVE__BOOL=0
  fi
  AC_SUBST([HAVE__BOOL])
])

# AM_STDBOOL_H will be renamed to gl_STDBOOL_H in the future.
AC_DEFUN([gl_STDBOOL_H], [AM_STDBOOL_H])

# This version of the macro is needed in autoconf <= 2.68.

AC_DEFUN([AC_CHECK_HEADER_STDBOOL],
  [AC_CACHE_CHECK([for stdbool.h that conforms to C99],
     [ac_cv_header_stdbool_h],
     [AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM(
           [[
             #include <stdbool.h>

             #ifdef __cplusplus
              typedef bool Bool;
             #else
              typedef _Bool Bool;
              #ifndef bool
               "error: bool is not defined"
              #endif
              #ifndef false
               "error: false is not defined"
              #endif
              #if false
               "error: false is not 0"
              #endif
              #ifndef true
               "error: true is not defined"
              #endif
              #if true != 1
               "error: true is not 1"
              #endif
             #endif

             #ifndef __bool_true_false_are_defined
              "error: __bool_true_false_are_defined is not defined"
             #endif

             struct s { Bool s: 1; Bool t; bool u: 1; bool v; } s;

             char a[true == 1 ? 1 : -1];
             char b[false == 0 ? 1 : -1];
             char c[__bool_true_false_are_defined == 1 ? 1 : -1];
             char d[(bool) 0.5 == true ? 1 : -1];
             /* See body of main program for 'e'.  */
             char f[(Bool) 0.0 == false ? 1 : -1];
             char g[true];
             char h[sizeof (Bool)];
             char i[sizeof s.t];
             enum { j = false, k = true, l = false * true, m = true * 256 };
             /* The following fails for
                HP aC++/ANSI C B3910B A.05.55 [Dec 04 2003]. */
             Bool n[m];
             char o[sizeof n == m * sizeof n[0] ? 1 : -1];
             char p[-1 - (Bool) 0 < 0 && -1 - (bool) 0 < 0 ? 1 : -1];
             /* Catch a bug in an HP-UX C compiler.  See
                https://gcc.gnu.org/ml/gcc-patches/2003-12/msg02303.html
                https://lists.gnu.org/r/bug-coreutils/2005-11/msg00161.html
              */
             Bool q = true;
             Bool *pq = &q;
             bool *qq = &q;
           ]],
           [[
             bool e = &s;
             *pq |= q; *pq |= ! q;
             *qq |= q; *qq |= ! q;
             /* Refer to every declared value, to avoid compiler optimizations.  */
             return (!a + !b + !c + !d + !e + !f + !g + !h + !i + !!j + !k + !!l
                     + !m + !n + !o + !p + !q + !pq + !qq);
           ]])],
        [ac_cv_header_stdbool_h=yes],
        [ac_cv_header_stdbool_h=no])])
   AC_CHECK_TYPES([_Bool])
])

# stddef_h.m4 serial 11
dnl Copyright (C) 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl A placeholder for <stddef.h>, for platforms that have issues.

AC_DEFUN_ONCE([gl_STDDEF_H],
[
  AC_REQUIRE([gl_STDDEF_H_DEFAULTS])
  AC_REQUIRE([gt_TYPE_WCHAR_T])

  dnl Persuade OpenBSD <stddef.h> to declare max_align_t.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  STDDEF_H=

  dnl Test whether the type max_align_t exists and whether its alignment
  dnl "is as great as is supported by the implementation in all contexts".
  AC_CACHE_CHECK([for good max_align_t],
    [gl_cv_type_max_align_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stddef.h>
            unsigned int s = sizeof (max_align_t);
            #if defined __GNUC__ || defined __clang__ || defined __IBM__ALIGNOF__
            int check1[2 * (__alignof__ (double) <= __alignof__ (max_align_t)) - 1];
            int check2[2 * (__alignof__ (long double) <= __alignof__ (max_align_t)) - 1];
            #endif
            typedef struct { char a; max_align_t b; } max_helper;
            typedef struct { char a; long b; } long_helper;
            typedef struct { char a; double b; } double_helper;
            typedef struct { char a; long double b; } long_double_helper;
            int check3[2 * (offsetof (long_helper, b) <= offsetof (max_helper, b)) - 1];
            int check4[2 * (offsetof (double_helper, b) <= offsetof (max_helper, b)) - 1];
            int check5[2 * (offsetof (long_double_helper, b) <= offsetof (max_helper, b)) - 1];
          ]])],
       [gl_cv_type_max_align_t=yes],
       [gl_cv_type_max_align_t=no])
    ])
  if test $gl_cv_type_max_align_t = no; then
    HAVE_MAX_ALIGN_T=0
    STDDEF_H=stddef.h
  fi

  if test $gt_cv_c_wchar_t = no; then
    HAVE_WCHAR_T=0
    STDDEF_H=stddef.h
  fi

  AC_CACHE_CHECK([whether NULL can be used in arbitrary expressions],
    [gl_cv_decl_null_works],
    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <stddef.h>
      int test[2 * (sizeof NULL == sizeof (void *)) -1];
]])],
      [gl_cv_decl_null_works=yes],
      [gl_cv_decl_null_works=no])])
  if test $gl_cv_decl_null_works = no; then
    REPLACE_NULL=1
    STDDEF_H=stddef.h
  fi

  AC_SUBST([STDDEF_H])
  AM_CONDITIONAL([GL_GENERATE_STDDEF_H], [test -n "$STDDEF_H"])
  if test -n "$STDDEF_H"; then
    gl_NEXT_HEADERS([stddef.h])
  fi
])

# gl_STDDEF_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_STDDEF_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_STDDEF_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_STDDEF_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_STDDEF_H_MODULE_INDICATOR_DEFAULTS], [
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_STDDEF_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_STDDEF_H_DEFAULTS])
])

AC_DEFUN([gl_STDDEF_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  REPLACE_NULL=0;                AC_SUBST([REPLACE_NULL])
  HAVE_MAX_ALIGN_T=1;            AC_SUBST([HAVE_MAX_ALIGN_T])
  HAVE_WCHAR_T=1;                AC_SUBST([HAVE_WCHAR_T])
])

# stdint.m4 serial 60
dnl Copyright (C) 2001-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert and Bruno Haible.
dnl Test whether <stdint.h> is supported or must be substituted.

AC_PREREQ([2.61])

AC_DEFUN_ONCE([gl_STDINT_H],
[
  AC_PREREQ([2.59])dnl
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  AC_REQUIRE([gl_LIMITS_H])
  AC_REQUIRE([gt_TYPE_WINT_T])

  dnl For backward compatibility. Some packages may still be testing these
  dnl macros.
  AC_DEFINE([HAVE_LONG_LONG_INT], [1],
    [Define to 1 if the system has the type 'long long int'.])
  AC_DEFINE([HAVE_UNSIGNED_LONG_LONG_INT], [1],
    [Define to 1 if the system has the type 'unsigned long long int'.])

  dnl Check for <wchar.h>, in the same way as gl_WCHAR_H does.
  AC_CHECK_HEADERS_ONCE([wchar.h])
  if test $ac_cv_header_wchar_h = yes; then
    HAVE_WCHAR_H=1
  else
    HAVE_WCHAR_H=0
  fi
  AC_SUBST([HAVE_WCHAR_H])

  dnl Check for <inttypes.h>.
  AC_CHECK_HEADERS_ONCE([inttypes.h])
  if test $ac_cv_header_inttypes_h = yes; then
    HAVE_INTTYPES_H=1
  else
    HAVE_INTTYPES_H=0
  fi
  AC_SUBST([HAVE_INTTYPES_H])

  dnl Check for <sys/types.h>.
  AC_CHECK_HEADERS_ONCE([sys/types.h])
  if test $ac_cv_header_sys_types_h = yes; then
    HAVE_SYS_TYPES_H=1
  else
    HAVE_SYS_TYPES_H=0
  fi
  AC_SUBST([HAVE_SYS_TYPES_H])

  gl_CHECK_NEXT_HEADERS([stdint.h])
  if test $ac_cv_header_stdint_h = yes; then
    HAVE_STDINT_H=1
  else
    HAVE_STDINT_H=0
  fi
  AC_SUBST([HAVE_STDINT_H])

  dnl Now see whether we need a substitute <stdint.h>.
  if test $ac_cv_header_stdint_h = yes; then
    AC_CACHE_CHECK([whether stdint.h conforms to C99],
      [gl_cv_header_working_stdint_h],
      [gl_cv_header_working_stdint_h=no
       AC_COMPILE_IFELSE([
         AC_LANG_PROGRAM([[
#define _GL_JUST_INCLUDE_SYSTEM_STDINT_H 1 /* work if build isn't clean */
#define __STDC_CONSTANT_MACROS 1
#define __STDC_LIMIT_MACROS 1
#include <stdint.h>
/* Dragonfly defines WCHAR_MIN, WCHAR_MAX only in <wchar.h>.  */
#if !(defined WCHAR_MIN && defined WCHAR_MAX)
#error "WCHAR_MIN, WCHAR_MAX not defined in <stdint.h>"
#endif
]
gl_STDINT_INCLUDES
[
#ifdef INT8_MAX
int8_t a1 = INT8_MAX;
int8_t a1min = INT8_MIN;
#endif
#ifdef INT16_MAX
int16_t a2 = INT16_MAX;
int16_t a2min = INT16_MIN;
#endif
#ifdef INT32_MAX
int32_t a3 = INT32_MAX;
int32_t a3min = INT32_MIN;
#endif
#ifdef INT64_MAX
int64_t a4 = INT64_MAX;
int64_t a4min = INT64_MIN;
#endif
#ifdef UINT8_MAX
uint8_t b1 = UINT8_MAX;
#else
typedef int b1[(unsigned char) -1 != 255 ? 1 : -1];
#endif
#ifdef UINT16_MAX
uint16_t b2 = UINT16_MAX;
#endif
#ifdef UINT32_MAX
uint32_t b3 = UINT32_MAX;
#endif
#ifdef UINT64_MAX
uint64_t b4 = UINT64_MAX;
#endif
int_least8_t c1 = INT8_C (0x7f);
int_least8_t c1max = INT_LEAST8_MAX;
int_least8_t c1min = INT_LEAST8_MIN;
int_least16_t c2 = INT16_C (0x7fff);
int_least16_t c2max = INT_LEAST16_MAX;
int_least16_t c2min = INT_LEAST16_MIN;
int_least32_t c3 = INT32_C (0x7fffffff);
int_least32_t c3max = INT_LEAST32_MAX;
int_least32_t c3min = INT_LEAST32_MIN;
int_least64_t c4 = INT64_C (0x7fffffffffffffff);
int_least64_t c4max = INT_LEAST64_MAX;
int_least64_t c4min = INT_LEAST64_MIN;
uint_least8_t d1 = UINT8_C (0xff);
uint_least8_t d1max = UINT_LEAST8_MAX;
uint_least16_t d2 = UINT16_C (0xffff);
uint_least16_t d2max = UINT_LEAST16_MAX;
uint_least32_t d3 = UINT32_C (0xffffffff);
uint_least32_t d3max = UINT_LEAST32_MAX;
uint_least64_t d4 = UINT64_C (0xffffffffffffffff);
uint_least64_t d4max = UINT_LEAST64_MAX;
int_fast8_t e1 = INT_FAST8_MAX;
int_fast8_t e1min = INT_FAST8_MIN;
int_fast16_t e2 = INT_FAST16_MAX;
int_fast16_t e2min = INT_FAST16_MIN;
int_fast32_t e3 = INT_FAST32_MAX;
int_fast32_t e3min = INT_FAST32_MIN;
int_fast64_t e4 = INT_FAST64_MAX;
int_fast64_t e4min = INT_FAST64_MIN;
uint_fast8_t f1 = UINT_FAST8_MAX;
uint_fast16_t f2 = UINT_FAST16_MAX;
uint_fast32_t f3 = UINT_FAST32_MAX;
uint_fast64_t f4 = UINT_FAST64_MAX;
#ifdef INTPTR_MAX
intptr_t g = INTPTR_MAX;
intptr_t gmin = INTPTR_MIN;
#endif
#ifdef UINTPTR_MAX
uintptr_t h = UINTPTR_MAX;
#endif
intmax_t i = INTMAX_MAX;
uintmax_t j = UINTMAX_MAX;

/* Check that SIZE_MAX has the correct type, if possible.  */
#if 201112 <= __STDC_VERSION__
int k = _Generic (SIZE_MAX, size_t: 0);
#elif (2 <= __GNUC__ || 4 <= __clang_major__ || defined __IBM__TYPEOF__ \
       || (0x5110 <= __SUNPRO_C && !__STDC__))
extern size_t k;
extern __typeof__ (SIZE_MAX) k;
#endif

#include <limits.h> /* for CHAR_BIT */
#define TYPE_MINIMUM(t) \
  ((t) ((t) 0 < (t) -1 ? (t) 0 : ~ TYPE_MAXIMUM (t)))
#define TYPE_MAXIMUM(t) \
  ((t) ((t) 0 < (t) -1 \
        ? (t) -1 \
        : ((((t) 1 << (sizeof (t) * CHAR_BIT - 2)) - 1) * 2 + 1)))
struct s {
  int check_PTRDIFF:
      PTRDIFF_MIN == TYPE_MINIMUM (ptrdiff_t)
      && PTRDIFF_MAX == TYPE_MAXIMUM (ptrdiff_t)
      ? 1 : -1;
  /* Detect bug in FreeBSD 6.0/ia64 and FreeBSD 13.0/arm64.  */
  int check_SIG_ATOMIC:
      SIG_ATOMIC_MIN == TYPE_MINIMUM (sig_atomic_t)
      && SIG_ATOMIC_MAX == TYPE_MAXIMUM (sig_atomic_t)
      ? 1 : -1;
  int check_SIZE: SIZE_MAX == TYPE_MAXIMUM (size_t) ? 1 : -1;
  int check_WCHAR:
      WCHAR_MIN == TYPE_MINIMUM (wchar_t)
      && WCHAR_MAX == TYPE_MAXIMUM (wchar_t)
      ? 1 : -1;
  /* Detect bug in mingw.  */
  int check_WINT:
      WINT_MIN == TYPE_MINIMUM (wint_t)
      && WINT_MAX == TYPE_MAXIMUM (wint_t)
      ? 1 : -1;

  /* Detect bugs in glibc 2.4 and Solaris 10 stdint.h, among others.  */
  int check_UINT8_C:
        (-1 < UINT8_C (0)) == (-1 < (uint_least8_t) 0) ? 1 : -1;
  int check_UINT16_C:
        (-1 < UINT16_C (0)) == (-1 < (uint_least16_t) 0) ? 1 : -1;

  /* Detect bugs in OpenBSD 3.9 stdint.h.  */
#ifdef UINT8_MAX
  int check_uint8: (uint8_t) -1 == UINT8_MAX ? 1 : -1;
#endif
#ifdef UINT16_MAX
  int check_uint16: (uint16_t) -1 == UINT16_MAX ? 1 : -1;
#endif
#ifdef UINT32_MAX
  int check_uint32: (uint32_t) -1 == UINT32_MAX ? 1 : -1;
#endif
#ifdef UINT64_MAX
  int check_uint64: (uint64_t) -1 == UINT64_MAX ? 1 : -1;
#endif
  int check_uint_least8: (uint_least8_t) -1 == UINT_LEAST8_MAX ? 1 : -1;
  int check_uint_least16: (uint_least16_t) -1 == UINT_LEAST16_MAX ? 1 : -1;
  int check_uint_least32: (uint_least32_t) -1 == UINT_LEAST32_MAX ? 1 : -1;
  int check_uint_least64: (uint_least64_t) -1 == UINT_LEAST64_MAX ? 1 : -1;
  int check_uint_fast8: (uint_fast8_t) -1 == UINT_FAST8_MAX ? 1 : -1;
  int check_uint_fast16: (uint_fast16_t) -1 == UINT_FAST16_MAX ? 1 : -1;
  int check_uint_fast32: (uint_fast32_t) -1 == UINT_FAST32_MAX ? 1 : -1;
  int check_uint_fast64: (uint_fast64_t) -1 == UINT_FAST64_MAX ? 1 : -1;
  int check_uintptr: (uintptr_t) -1 == UINTPTR_MAX ? 1 : -1;
  int check_uintmax: (uintmax_t) -1 == UINTMAX_MAX ? 1 : -1;
  int check_size: (size_t) -1 == SIZE_MAX ? 1 : -1;
};
         ]])],
         [dnl Determine whether the various *_MIN, *_MAX macros are usable
          dnl in preprocessor expression. We could do it by compiling a test
          dnl program for each of these macros. It is faster to run a program
          dnl that inspects the macro expansion.
          dnl This detects a bug on HP-UX 11.23/ia64.
          AC_RUN_IFELSE([
            AC_LANG_PROGRAM([[
#define _GL_JUST_INCLUDE_SYSTEM_STDINT_H 1 /* work if build isn't clean */
#define __STDC_CONSTANT_MACROS 1
#define __STDC_LIMIT_MACROS 1
#include <stdint.h>
]
gl_STDINT_INCLUDES
[
#include <stdio.h>
#include <string.h>
#define MVAL(macro) MVAL1(macro)
#define MVAL1(expression) #expression
static const char *macro_values[] =
  {
#ifdef INT8_MAX
    MVAL (INT8_MAX),
#endif
#ifdef INT16_MAX
    MVAL (INT16_MAX),
#endif
#ifdef INT32_MAX
    MVAL (INT32_MAX),
#endif
#ifdef INT64_MAX
    MVAL (INT64_MAX),
#endif
#ifdef UINT8_MAX
    MVAL (UINT8_MAX),
#endif
#ifdef UINT16_MAX
    MVAL (UINT16_MAX),
#endif
#ifdef UINT32_MAX
    MVAL (UINT32_MAX),
#endif
#ifdef UINT64_MAX
    MVAL (UINT64_MAX),
#endif
    NULL
  };
]], [[
  const char **mv;
  for (mv = macro_values; *mv != NULL; mv++)
    {
      const char *value = *mv;
      /* Test whether it looks like a cast expression.  */
      if (strncmp (value, "((unsigned int)"/*)*/, 15) == 0
          || strncmp (value, "((unsigned short)"/*)*/, 17) == 0
          || strncmp (value, "((unsigned char)"/*)*/, 16) == 0
          || strncmp (value, "((int)"/*)*/, 6) == 0
          || strncmp (value, "((signed short)"/*)*/, 15) == 0
          || strncmp (value, "((signed char)"/*)*/, 14) == 0)
        return mv - macro_values + 1;
    }
  return 0;
]])],
              [gl_cv_header_working_stdint_h=yes],
              [],
              [case "$host_os" in
                         # Guess yes on native Windows.
                 mingw*) gl_cv_header_working_stdint_h="guessing yes" ;;
                         # In general, assume it works.
                 *)      gl_cv_header_working_stdint_h="guessing yes" ;;
               esac
              ])
         ])
      ])
  fi

  HAVE_C99_STDINT_H=0
  HAVE_SYS_BITYPES_H=0
  HAVE_SYS_INTTYPES_H=0
  STDINT_H=stdint.h
  case "$gl_cv_header_working_stdint_h" in
    *yes)
      HAVE_C99_STDINT_H=1
      dnl Now see whether the system <stdint.h> works without
      dnl __STDC_CONSTANT_MACROS/__STDC_LIMIT_MACROS defined.
      dnl If not, there would be problems when stdint.h is included from C++.
      AC_CACHE_CHECK([whether stdint.h works without ISO C predefines],
        [gl_cv_header_stdint_without_STDC_macros],
        [gl_cv_header_stdint_without_STDC_macros=no
         AC_COMPILE_IFELSE([
           AC_LANG_PROGRAM([[
#define _GL_JUST_INCLUDE_SYSTEM_STDINT_H 1 /* work if build isn't clean */
#include <stdint.h>
]
gl_STDINT_INCLUDES
[
intmax_t im = INTMAX_MAX;
int32_t i32 = INT32_C (0x7fffffff);
           ]])],
           [gl_cv_header_stdint_without_STDC_macros=yes])
        ])

      if test $gl_cv_header_stdint_without_STDC_macros = no; then
        AC_DEFINE([__STDC_CONSTANT_MACROS], [1],
          [Define to 1 if the system <stdint.h> predates C++11.])
        AC_DEFINE([__STDC_LIMIT_MACROS], [1],
          [Define to 1 if the system <stdint.h> predates C++11.])
      fi
      AC_CACHE_CHECK([whether stdint.h has UINTMAX_WIDTH etc.],
        [gl_cv_header_stdint_width],
        [gl_cv_header_stdint_width=no
         AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM([[
              /* Work if build is not clean.  */
              #define _GL_JUST_INCLUDE_SYSTEM_STDINT_H 1
              #ifndef __STDC_WANT_IEC_60559_BFP_EXT__
               #define __STDC_WANT_IEC_60559_BFP_EXT__ 1
              #endif
              #include <stdint.h>
              ]gl_STDINT_INCLUDES[
              int iw = UINTMAX_WIDTH;
              ]])],
           [gl_cv_header_stdint_width=yes])])
      if test "$gl_cv_header_stdint_width" = yes; then
        STDINT_H=
      fi
      ;;
    *)
      dnl Check for <sys/inttypes.h>, and for
      dnl <sys/bitypes.h> (used in Linux libc4 >= 4.6.7 and libc5).
      AC_CHECK_HEADERS([sys/inttypes.h sys/bitypes.h])
      if test $ac_cv_header_sys_inttypes_h = yes; then
        HAVE_SYS_INTTYPES_H=1
      fi
      if test $ac_cv_header_sys_bitypes_h = yes; then
        HAVE_SYS_BITYPES_H=1
      fi
      gl_STDINT_TYPE_PROPERTIES
      ;;
  esac

  dnl The substitute stdint.h needs the substitute limit.h's _GL_INTEGER_WIDTH.
  gl_REPLACE_LIMITS_H

  AC_SUBST([HAVE_C99_STDINT_H])
  AC_SUBST([HAVE_SYS_BITYPES_H])
  AC_SUBST([HAVE_SYS_INTTYPES_H])
  AC_SUBST([STDINT_H])
  AM_CONDITIONAL([GL_GENERATE_STDINT_H], [test -n "$STDINT_H"])
])

dnl gl_STDINT_BITSIZEOF(TYPES, INCLUDES)
dnl Determine the size of each of the given types in bits.
AC_DEFUN([gl_STDINT_BITSIZEOF],
[
  dnl Use a shell loop, to avoid bloating configure, and
  dnl - extra AH_TEMPLATE calls, so that autoheader knows what to put into
  dnl   config.h.in,
  dnl - extra AC_SUBST calls, so that the right substitutions are made.
  m4_foreach_w([gltype], [$1],
    [AH_TEMPLATE([BITSIZEOF_]m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_]),
       [Define to the number of bits in type ']gltype['.])])
  for gltype in $1 ; do
    AC_CACHE_CHECK([for bit size of $gltype], [gl_cv_bitsizeof_${gltype}],
      [AC_COMPUTE_INT([result], [sizeof ($gltype) * CHAR_BIT],
         [$2
#include <limits.h>], [result=unknown])
       eval gl_cv_bitsizeof_${gltype}=\$result
      ])
    eval result=\$gl_cv_bitsizeof_${gltype}
    if test $result = unknown; then
      dnl Use a nonempty default, because some compilers, such as IRIX 5 cc,
      dnl do a syntax check even on unused #if conditions and give an error
      dnl on valid C code like this:
      dnl   #if 0
      dnl   # if  > 32
      dnl   # endif
      dnl   #endif
      result=0
    fi
    GLTYPE=`echo "$gltype" | tr 'abcdefghijklmnopqrstuvwxyz ' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ_'`
    AC_DEFINE_UNQUOTED([BITSIZEOF_${GLTYPE}], [$result])
    eval BITSIZEOF_${GLTYPE}=\$result
  done
  m4_foreach_w([gltype], [$1],
    [AC_SUBST([BITSIZEOF_]m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_]))])
])

dnl gl_CHECK_TYPES_SIGNED(TYPES, INCLUDES)
dnl Determine the signedness of each of the given types.
dnl Define HAVE_SIGNED_TYPE if type is signed.
AC_DEFUN([gl_CHECK_TYPES_SIGNED],
[
  dnl Use a shell loop, to avoid bloating configure, and
  dnl - extra AH_TEMPLATE calls, so that autoheader knows what to put into
  dnl   config.h.in,
  dnl - extra AC_SUBST calls, so that the right substitutions are made.
  m4_foreach_w([gltype], [$1],
    [AH_TEMPLATE([HAVE_SIGNED_]m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_]),
       [Define to 1 if ']gltype[' is a signed integer type.])])
  for gltype in $1 ; do
    AC_CACHE_CHECK([whether $gltype is signed], [gl_cv_type_${gltype}_signed],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([$2[
            int verify[2 * (($gltype) -1 < ($gltype) 0) - 1];]])],
         result=yes, result=no)
       eval gl_cv_type_${gltype}_signed=\$result
      ])
    eval result=\$gl_cv_type_${gltype}_signed
    GLTYPE=`echo $gltype | tr 'abcdefghijklmnopqrstuvwxyz ' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ_'`
    if test "$result" = yes; then
      AC_DEFINE_UNQUOTED([HAVE_SIGNED_${GLTYPE}], [1])
      eval HAVE_SIGNED_${GLTYPE}=1
    else
      eval HAVE_SIGNED_${GLTYPE}=0
    fi
  done
  m4_foreach_w([gltype], [$1],
    [AC_SUBST([HAVE_SIGNED_]m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_]))])
])

dnl gl_INTEGER_TYPE_SUFFIX(TYPES, INCLUDES)
dnl Determine the suffix to use for integer constants of the given types.
dnl Define t_SUFFIX for each such type.
AC_DEFUN([gl_INTEGER_TYPE_SUFFIX],
[
  dnl Use a shell loop, to avoid bloating configure, and
  dnl - extra AH_TEMPLATE calls, so that autoheader knows what to put into
  dnl   config.h.in,
  dnl - extra AC_SUBST calls, so that the right substitutions are made.
  m4_foreach_w([gltype], [$1],
    [AH_TEMPLATE(m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_])[_SUFFIX],
       [Define to l, ll, u, ul, ull, etc., as suitable for
        constants of type ']gltype['.])])
  for gltype in $1 ; do
    AC_CACHE_CHECK([for $gltype integer literal suffix],
      [gl_cv_type_${gltype}_suffix],
      [eval gl_cv_type_${gltype}_suffix=no
       eval result=\$gl_cv_type_${gltype}_signed
       if test "$result" = yes; then
         glsufu=
       else
         glsufu=u
       fi
       for glsuf in "$glsufu" ${glsufu}l ${glsufu}ll ${glsufu}i64; do
         case $glsuf in
           '')  gltype1='int';;
           l)   gltype1='long int';;
           ll)  gltype1='long long int';;
           i64) gltype1='__int64';;
           u)   gltype1='unsigned int';;
           ul)  gltype1='unsigned long int';;
           ull) gltype1='unsigned long long int';;
           ui64)gltype1='unsigned __int64';;
         esac
         AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM([$2[
              extern $gltype foo;
              extern $gltype1 foo;]])],
           [eval gl_cv_type_${gltype}_suffix=\$glsuf])
         eval result=\$gl_cv_type_${gltype}_suffix
         test "$result" != no && break
       done])
    GLTYPE=`echo $gltype | tr 'abcdefghijklmnopqrstuvwxyz ' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ_'`
    eval result=\$gl_cv_type_${gltype}_suffix
    test "$result" = no && result=
    eval ${GLTYPE}_SUFFIX=\$result
    AC_DEFINE_UNQUOTED([${GLTYPE}_SUFFIX], [$result])
  done
  m4_foreach_w([gltype], [$1],
    [AC_SUBST(m4_translit(gltype,[abcdefghijklmnopqrstuvwxyz ],[ABCDEFGHIJKLMNOPQRSTUVWXYZ_])[_SUFFIX])])
])

dnl gl_STDINT_INCLUDES
AC_DEFUN([gl_STDINT_INCLUDES],
[[
  #include <stddef.h>
  #include <signal.h>
  #if HAVE_WCHAR_H
  # include <wchar.h>
  #endif
]])

dnl gl_STDINT_TYPE_PROPERTIES
dnl Compute HAVE_SIGNED_t, BITSIZEOF_t and t_SUFFIX, for all the types t
dnl of interest to stdint.in.h.
AC_DEFUN([gl_STDINT_TYPE_PROPERTIES],
[
  AC_REQUIRE([gl_MULTIARCH])
  if test $APPLE_UNIVERSAL_BUILD = 0; then
    gl_STDINT_BITSIZEOF([ptrdiff_t size_t],
      [gl_STDINT_INCLUDES])
  fi
  gl_STDINT_BITSIZEOF([sig_atomic_t wchar_t wint_t],
    [gl_STDINT_INCLUDES])
  gl_CHECK_TYPES_SIGNED([sig_atomic_t wchar_t wint_t],
    [gl_STDINT_INCLUDES])
  gl_cv_type_ptrdiff_t_signed=yes
  gl_cv_type_size_t_signed=no
  if test $APPLE_UNIVERSAL_BUILD = 0; then
    gl_INTEGER_TYPE_SUFFIX([ptrdiff_t size_t],
      [gl_STDINT_INCLUDES])
  fi
  gl_INTEGER_TYPE_SUFFIX([sig_atomic_t wchar_t wint_t],
    [gl_STDINT_INCLUDES])

  dnl If wint_t is smaller than 'int', it cannot satisfy the ISO C 99
  dnl requirement that wint_t is "unchanged by default argument promotions".
  dnl In this case gnulib's <wchar.h> and <wctype.h> override wint_t.
  dnl Set the variable BITSIZEOF_WINT_T accordingly.
  if test $GNULIBHEADERS_OVERRIDE_WINT_T = 1; then
    BITSIZEOF_WINT_T=32
  fi
])

# stdint_h.m4 serial 9
dnl Copyright (C) 1997-2004, 2006, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Paul Eggert.

# Define HAVE_STDINT_H_WITH_UINTMAX if <stdint.h> exists,
# doesn't clash with <sys/types.h>, and declares uintmax_t.

AC_DEFUN([gl_AC_HEADER_STDINT_H],
[
  AC_CACHE_CHECK([for stdint.h], [gl_cv_header_stdint_h],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <sys/types.h>
            #include <stdint.h>]],
          [[uintmax_t i = (uintmax_t) -1; return !i;]])],
       [gl_cv_header_stdint_h=yes],
       [gl_cv_header_stdint_h=no])])
  if test $gl_cv_header_stdint_h = yes; then
    AC_DEFINE_UNQUOTED([HAVE_STDINT_H_WITH_UINTMAX], [1],
      [Define if <stdint.h> exists, doesn't clash with <sys/types.h>,
       and declares uintmax_t. ])
  fi
])

# stdio_h.m4 serial 56
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_STDIO_H],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  AH_VERBATIM([MINGW_ANSI_STDIO],
[/* Use GNU style printf and scanf.  */
#ifndef __USE_MINGW_ANSI_STDIO
# undef __USE_MINGW_ANSI_STDIO
#endif
])
  AC_DEFINE([__USE_MINGW_ANSI_STDIO])
  gl_NEXT_HEADERS([stdio.h])

  dnl Determine whether __USE_MINGW_ANSI_STDIO makes printf and
  dnl inttypes.h behave like gnu instead of system; we must give our
  dnl printf wrapper the right attribute to match.
  AC_CACHE_CHECK([which flavor of printf attribute matches inttypes macros],
    [gl_cv_func_printf_attribute_flavor],
    [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
       #define __STDC_FORMAT_MACROS 1
       #include <stdio.h>
       #include <inttypes.h>
       /* For non-mingw systems, compilation will trivially succeed.
          For mingw, compilation will succeed for older mingw (system
          printf, "I64d") and fail for newer mingw (gnu printf, "lld"). */
       #if (defined _WIN32 && ! defined __CYGWIN__) && \
         (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 4))
       extern char PRIdMAX_probe[sizeof PRIdMAX == sizeof "I64d" ? 1 : -1];
       #endif
      ]])], [gl_cv_func_printf_attribute_flavor=system],
      [gl_cv_func_printf_attribute_flavor=gnu])])
  if test "$gl_cv_func_printf_attribute_flavor" = gnu; then
    AC_DEFINE([GNULIB_PRINTF_ATTRIBUTE_FLAVOR_GNU], [1],
      [Define to 1 if printf and friends should be labeled with
       attribute "__gnu_printf__" instead of "__printf__"])
  fi

  dnl This ifdef is necessary to avoid an error "missing file lib/stdio-read.c"
  dnl "expected source file, required through AC_LIBSOURCES, not found". It is
  dnl also an optimization, to avoid performing a configure check whose result
  dnl is not used. But it does not make the test of GNULIB_STDIO_H_NONBLOCKING
  dnl or GNULIB_NONBLOCKING redundant.
  m4_ifdef([gl_NONBLOCKING_IO], [
    gl_NONBLOCKING_IO
    if test $gl_cv_have_nonblocking != yes; then
      REPLACE_STDIO_READ_FUNCS=1
      AC_LIBOBJ([stdio-read])
    fi
  ])

  dnl This ifdef is necessary to avoid an error "missing file lib/stdio-write.c"
  dnl "expected source file, required through AC_LIBSOURCES, not found". It is
  dnl also an optimization, to avoid performing a configure check whose result
  dnl is not used. But it does not make the test of GNULIB_STDIO_H_SIGPIPE or
  dnl GNULIB_SIGPIPE redundant.
  m4_ifdef([gl_SIGNAL_SIGPIPE], [
    gl_SIGNAL_SIGPIPE
    if test $gl_cv_header_signal_h_SIGPIPE != yes; then
      REPLACE_STDIO_WRITE_FUNCS=1
      AC_LIBOBJ([stdio-write])
    fi
  ])
  dnl This ifdef is necessary to avoid an error "missing file lib/stdio-write.c"
  dnl "expected source file, required through AC_LIBSOURCES, not found". It is
  dnl also an optimization, to avoid performing a configure check whose result
  dnl is not used. But it does not make the test of GNULIB_STDIO_H_NONBLOCKING
  dnl or GNULIB_NONBLOCKING redundant.
  m4_ifdef([gl_NONBLOCKING_IO], [
    gl_NONBLOCKING_IO
    if test $gl_cv_have_nonblocking != yes; then
      REPLACE_STDIO_WRITE_FUNCS=1
      AC_LIBOBJ([stdio-write])
    fi
  ])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use, and which is not
  dnl guaranteed by both C89 and C11.
  gl_WARN_ON_USE_PREPARE([[#include <stdio.h>
    ]], [dprintf fpurge fseeko ftello getdelim getline gets pclose popen
    renameat snprintf tmpfile vdprintf vsnprintf])

  AC_REQUIRE([AC_C_RESTRICT])

  AC_CHECK_DECLS_ONCE([fcloseall])
  if test $ac_cv_have_decl_fcloseall = no; then
    HAVE_DECL_FCLOSEALL=0
  fi
])

# gl_STDIO_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_STDIO_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_STDIO_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_STDIO_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_STDIO_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FCLOSE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FDOPEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FFLUSH])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FGETC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FGETS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FOPEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FPRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FPURGE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FPUTC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FPUTS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREAD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREOPEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSCANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSEEK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSEEKO])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FTELL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FTELLO])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FWRITE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETCHAR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETDELIM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETLINE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OBSTACK_PRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OBSTACK_PRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PCLOSE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PERROR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_POPEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PUTC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PUTCHAR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PUTS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REMOVE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RENAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RENAMEAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SCANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SNPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SPRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STDIO_H_NONBLOCKING])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STDIO_H_SIGPIPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TMPFILE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VASPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VFSCANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VSCANF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VDPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VFPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VFPRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VPRINTF_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VSNPRINTF])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_VSPRINTF_POSIX])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_FCLOSEALL], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_FDOPEN], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_FILENO], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_GETW], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_PUTW], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_TEMPNAM], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_STDIO_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
])

AC_DEFUN([gl_STDIO_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_DECL_FCLOSEALL=1;         AC_SUBST([HAVE_DECL_FCLOSEALL])
  HAVE_DECL_FPURGE=1;            AC_SUBST([HAVE_DECL_FPURGE])
  HAVE_DECL_FSEEKO=1;            AC_SUBST([HAVE_DECL_FSEEKO])
  HAVE_DECL_FTELLO=1;            AC_SUBST([HAVE_DECL_FTELLO])
  HAVE_DECL_GETDELIM=1;          AC_SUBST([HAVE_DECL_GETDELIM])
  HAVE_DECL_GETLINE=1;           AC_SUBST([HAVE_DECL_GETLINE])
  HAVE_DECL_OBSTACK_PRINTF=1;    AC_SUBST([HAVE_DECL_OBSTACK_PRINTF])
  HAVE_DECL_SNPRINTF=1;          AC_SUBST([HAVE_DECL_SNPRINTF])
  HAVE_DECL_VSNPRINTF=1;         AC_SUBST([HAVE_DECL_VSNPRINTF])
  HAVE_DPRINTF=1;                AC_SUBST([HAVE_DPRINTF])
  HAVE_FSEEKO=1;                 AC_SUBST([HAVE_FSEEKO])
  HAVE_FTELLO=1;                 AC_SUBST([HAVE_FTELLO])
  HAVE_PCLOSE=1;                 AC_SUBST([HAVE_PCLOSE])
  HAVE_POPEN=1;                  AC_SUBST([HAVE_POPEN])
  HAVE_RENAMEAT=1;               AC_SUBST([HAVE_RENAMEAT])
  HAVE_VASPRINTF=1;              AC_SUBST([HAVE_VASPRINTF])
  HAVE_VDPRINTF=1;               AC_SUBST([HAVE_VDPRINTF])
  REPLACE_DPRINTF=0;             AC_SUBST([REPLACE_DPRINTF])
  REPLACE_FCLOSE=0;              AC_SUBST([REPLACE_FCLOSE])
  REPLACE_FDOPEN=0;              AC_SUBST([REPLACE_FDOPEN])
  REPLACE_FFLUSH=0;              AC_SUBST([REPLACE_FFLUSH])
  REPLACE_FOPEN=0;               AC_SUBST([REPLACE_FOPEN])
  REPLACE_FPRINTF=0;             AC_SUBST([REPLACE_FPRINTF])
  REPLACE_FPURGE=0;              AC_SUBST([REPLACE_FPURGE])
  REPLACE_FREOPEN=0;             AC_SUBST([REPLACE_FREOPEN])
  REPLACE_FSEEK=0;               AC_SUBST([REPLACE_FSEEK])
  REPLACE_FSEEKO=0;              AC_SUBST([REPLACE_FSEEKO])
  REPLACE_FTELL=0;               AC_SUBST([REPLACE_FTELL])
  REPLACE_FTELLO=0;              AC_SUBST([REPLACE_FTELLO])
  REPLACE_GETDELIM=0;            AC_SUBST([REPLACE_GETDELIM])
  REPLACE_GETLINE=0;             AC_SUBST([REPLACE_GETLINE])
  REPLACE_OBSTACK_PRINTF=0;      AC_SUBST([REPLACE_OBSTACK_PRINTF])
  REPLACE_PERROR=0;              AC_SUBST([REPLACE_PERROR])
  REPLACE_POPEN=0;               AC_SUBST([REPLACE_POPEN])
  REPLACE_PRINTF=0;              AC_SUBST([REPLACE_PRINTF])
  REPLACE_REMOVE=0;              AC_SUBST([REPLACE_REMOVE])
  REPLACE_RENAME=0;              AC_SUBST([REPLACE_RENAME])
  REPLACE_RENAMEAT=0;            AC_SUBST([REPLACE_RENAMEAT])
  REPLACE_SNPRINTF=0;            AC_SUBST([REPLACE_SNPRINTF])
  REPLACE_SPRINTF=0;             AC_SUBST([REPLACE_SPRINTF])
  REPLACE_STDIO_READ_FUNCS=0;    AC_SUBST([REPLACE_STDIO_READ_FUNCS])
  REPLACE_STDIO_WRITE_FUNCS=0;   AC_SUBST([REPLACE_STDIO_WRITE_FUNCS])
  REPLACE_TMPFILE=0;             AC_SUBST([REPLACE_TMPFILE])
  REPLACE_VASPRINTF=0;           AC_SUBST([REPLACE_VASPRINTF])
  REPLACE_VDPRINTF=0;            AC_SUBST([REPLACE_VDPRINTF])
  REPLACE_VFPRINTF=0;            AC_SUBST([REPLACE_VFPRINTF])
  REPLACE_VPRINTF=0;             AC_SUBST([REPLACE_VPRINTF])
  REPLACE_VSNPRINTF=0;           AC_SUBST([REPLACE_VSNPRINTF])
  REPLACE_VSPRINTF=0;            AC_SUBST([REPLACE_VSPRINTF])
])

# stdlib_h.m4 serial 63
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_STDLIB_H],
[
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
  gl_NEXT_HEADERS([stdlib.h])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use, and which is not
  dnl guaranteed by C89.
  gl_WARN_ON_USE_PREPARE([[#include <stdlib.h>
#if HAVE_SYS_LOADAVG_H
/* OpenIndiana has a bug: <sys/time.h> must be included before
   <sys/loadavg.h>.  */
# include <sys/time.h>
# include <sys/loadavg.h>
#endif
#if HAVE_RANDOM_H
# include <random.h>
#endif
    ]], [_Exit aligned_alloc atoll canonicalize_file_name free
    getloadavg getsubopt grantpt
    initstate initstate_r mbtowc mkdtemp mkostemp mkostemps mkstemp mkstemps
    posix_memalign posix_openpt ptsname ptsname_r qsort_r
    random random_r reallocarray realpath rpmatch secure_getenv setenv
    setstate setstate_r srandom srandom_r
    strtod strtol strtold strtoll strtoul strtoull unlockpt unsetenv])

  AC_REQUIRE([AC_C_RESTRICT])

  AC_CHECK_DECLS_ONCE([ecvt])
  if test $ac_cv_have_decl_ecvt = no; then
    HAVE_DECL_ECVT=0
  fi
  AC_CHECK_DECLS_ONCE([fcvt])
  if test $ac_cv_have_decl_fcvt = no; then
    HAVE_DECL_FCVT=0
  fi
  AC_CHECK_DECLS_ONCE([gcvt])
  if test $ac_cv_have_decl_gcvt = no; then
    HAVE_DECL_GCVT=0
  fi
])

# gl_STDLIB_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_STDLIB_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_STDLIB_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_STDLIB_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_STDLIB_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB__EXIT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ALIGNED_ALLOC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ATOLL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CALLOC_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CANONICALIZE_FILE_NAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FREE_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETLOADAVG])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETSUBOPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GRANTPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MALLOC_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBTOWC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKDTEMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKOSTEMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKOSTEMPS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKSTEMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKSTEMPS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_POSIX_MEMALIGN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_POSIX_OPENPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PTSNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PTSNAME_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PUTENV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_QSORT_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RANDOM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RANDOM_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REALLOCARRAY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REALLOC_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_REALPATH])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RPMATCH])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SECURE_GETENV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SETENV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOLD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOLL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOUL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOULL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SYSTEM_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNLOCKPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNSETENV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCTOMB])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_ECVT], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_FCVT], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_GCVT], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_MKTEMP], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_PUTENV], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_STDLIB_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_STDLIB_H_DEFAULTS])
])

AC_DEFUN([gl_STDLIB_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE__EXIT=1;              AC_SUBST([HAVE__EXIT])
  HAVE_ALIGNED_ALLOC=1;      AC_SUBST([HAVE_ALIGNED_ALLOC])
  HAVE_ATOLL=1;              AC_SUBST([HAVE_ATOLL])
  HAVE_CANONICALIZE_FILE_NAME=1;  AC_SUBST([HAVE_CANONICALIZE_FILE_NAME])
  HAVE_DECL_ECVT=1;          AC_SUBST([HAVE_DECL_ECVT])
  HAVE_DECL_FCVT=1;          AC_SUBST([HAVE_DECL_FCVT])
  HAVE_DECL_GCVT=1;          AC_SUBST([HAVE_DECL_GCVT])
  HAVE_DECL_GETLOADAVG=1;    AC_SUBST([HAVE_DECL_GETLOADAVG])
  HAVE_GETSUBOPT=1;          AC_SUBST([HAVE_GETSUBOPT])
  HAVE_GRANTPT=1;            AC_SUBST([HAVE_GRANTPT])
  HAVE_INITSTATE=1;          AC_SUBST([HAVE_INITSTATE])
  HAVE_DECL_INITSTATE=1;     AC_SUBST([HAVE_DECL_INITSTATE])
  HAVE_MBTOWC=1;             AC_SUBST([HAVE_MBTOWC])
  HAVE_MKDTEMP=1;            AC_SUBST([HAVE_MKDTEMP])
  HAVE_MKOSTEMP=1;           AC_SUBST([HAVE_MKOSTEMP])
  HAVE_MKOSTEMPS=1;          AC_SUBST([HAVE_MKOSTEMPS])
  HAVE_MKSTEMP=1;            AC_SUBST([HAVE_MKSTEMP])
  HAVE_MKSTEMPS=1;           AC_SUBST([HAVE_MKSTEMPS])
  HAVE_POSIX_MEMALIGN=1;     AC_SUBST([HAVE_POSIX_MEMALIGN])
  HAVE_POSIX_OPENPT=1;       AC_SUBST([HAVE_POSIX_OPENPT])
  HAVE_PTSNAME=1;            AC_SUBST([HAVE_PTSNAME])
  HAVE_PTSNAME_R=1;          AC_SUBST([HAVE_PTSNAME_R])
  HAVE_QSORT_R=1;            AC_SUBST([HAVE_QSORT_R])
  HAVE_RANDOM=1;             AC_SUBST([HAVE_RANDOM])
  HAVE_RANDOM_H=1;           AC_SUBST([HAVE_RANDOM_H])
  HAVE_RANDOM_R=1;           AC_SUBST([HAVE_RANDOM_R])
  HAVE_REALLOCARRAY=1;       AC_SUBST([HAVE_REALLOCARRAY])
  HAVE_REALPATH=1;           AC_SUBST([HAVE_REALPATH])
  HAVE_RPMATCH=1;            AC_SUBST([HAVE_RPMATCH])
  HAVE_SECURE_GETENV=1;      AC_SUBST([HAVE_SECURE_GETENV])
  HAVE_SETENV=1;             AC_SUBST([HAVE_SETENV])
  HAVE_DECL_SETENV=1;        AC_SUBST([HAVE_DECL_SETENV])
  HAVE_SETSTATE=1;           AC_SUBST([HAVE_SETSTATE])
  HAVE_DECL_SETSTATE=1;      AC_SUBST([HAVE_DECL_SETSTATE])
  HAVE_STRTOD=1;             AC_SUBST([HAVE_STRTOD])
  HAVE_STRTOL=1;             AC_SUBST([HAVE_STRTOL])
  HAVE_STRTOLD=1;            AC_SUBST([HAVE_STRTOLD])
  HAVE_STRTOLL=1;            AC_SUBST([HAVE_STRTOLL])
  HAVE_STRTOUL=1;            AC_SUBST([HAVE_STRTOUL])
  HAVE_STRTOULL=1;           AC_SUBST([HAVE_STRTOULL])
  HAVE_STRUCT_RANDOM_DATA=1; AC_SUBST([HAVE_STRUCT_RANDOM_DATA])
  HAVE_SYS_LOADAVG_H=0;      AC_SUBST([HAVE_SYS_LOADAVG_H])
  HAVE_UNLOCKPT=1;           AC_SUBST([HAVE_UNLOCKPT])
  HAVE_DECL_UNSETENV=1;      AC_SUBST([HAVE_DECL_UNSETENV])
  REPLACE_ALIGNED_ALLOC=0;   AC_SUBST([REPLACE_ALIGNED_ALLOC])
  REPLACE_CALLOC=0;          AC_SUBST([REPLACE_CALLOC])
  REPLACE_CANONICALIZE_FILE_NAME=0;  AC_SUBST([REPLACE_CANONICALIZE_FILE_NAME])
  REPLACE_FREE=0;            AC_SUBST([REPLACE_FREE])
  REPLACE_INITSTATE=0;       AC_SUBST([REPLACE_INITSTATE])
  REPLACE_MALLOC=0;          AC_SUBST([REPLACE_MALLOC])
  REPLACE_MBTOWC=0;          AC_SUBST([REPLACE_MBTOWC])
  REPLACE_MKSTEMP=0;         AC_SUBST([REPLACE_MKSTEMP])
  REPLACE_POSIX_MEMALIGN=0;  AC_SUBST([REPLACE_POSIX_MEMALIGN])
  REPLACE_PTSNAME=0;         AC_SUBST([REPLACE_PTSNAME])
  REPLACE_PTSNAME_R=0;       AC_SUBST([REPLACE_PTSNAME_R])
  REPLACE_PUTENV=0;          AC_SUBST([REPLACE_PUTENV])
  REPLACE_QSORT_R=0;         AC_SUBST([REPLACE_QSORT_R])
  REPLACE_RANDOM=0;          AC_SUBST([REPLACE_RANDOM])
  REPLACE_RANDOM_R=0;        AC_SUBST([REPLACE_RANDOM_R])
  REPLACE_REALLOC=0;         AC_SUBST([REPLACE_REALLOC])
  REPLACE_REALLOCARRAY=0;    AC_SUBST([REPLACE_REALLOCARRAY])
  REPLACE_REALPATH=0;        AC_SUBST([REPLACE_REALPATH])
  REPLACE_SETENV=0;          AC_SUBST([REPLACE_SETENV])
  REPLACE_SETSTATE=0;        AC_SUBST([REPLACE_SETSTATE])
  REPLACE_STRTOD=0;          AC_SUBST([REPLACE_STRTOD])
  REPLACE_STRTOL=0;          AC_SUBST([REPLACE_STRTOL])
  REPLACE_STRTOLD=0;         AC_SUBST([REPLACE_STRTOLD])
  REPLACE_STRTOLL=0;         AC_SUBST([REPLACE_STRTOLL])
  REPLACE_STRTOUL=0;         AC_SUBST([REPLACE_STRTOUL])
  REPLACE_STRTOULL=0;        AC_SUBST([REPLACE_STRTOULL])
  REPLACE_UNSETENV=0;        AC_SUBST([REPLACE_UNSETENV])
  REPLACE_WCTOMB=0;          AC_SUBST([REPLACE_WCTOMB])
])

# strcase.m4 serial 12
dnl Copyright (C) 2002, 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_STRCASE],
[
  gl_FUNC_STRCASECMP
  gl_FUNC_STRNCASECMP
])

AC_DEFUN([gl_FUNC_STRCASECMP],
[
  AC_REQUIRE([gl_STRINGS_H_DEFAULTS])
  AC_CHECK_FUNCS([strcasecmp])
  if test $ac_cv_func_strcasecmp = no; then
    HAVE_STRCASECMP=0
  fi
])

AC_DEFUN([gl_FUNC_STRNCASECMP],
[
  AC_REQUIRE([gl_STRINGS_H_DEFAULTS])
  AC_CHECK_FUNCS([strncasecmp])
  if test $ac_cv_func_strncasecmp = yes; then
    HAVE_STRNCASECMP=1
  else
    HAVE_STRNCASECMP=0
  fi
  AC_CHECK_DECLS([strncasecmp])
  if test $ac_cv_have_decl_strncasecmp = no; then
    HAVE_DECL_STRNCASECMP=0
  fi
])

# Prerequisites of lib/strcasecmp.c.
AC_DEFUN([gl_PREREQ_STRCASECMP], [
  :
])

# Prerequisites of lib/strncasecmp.c.
AC_DEFUN([gl_PREREQ_STRNCASECMP], [
  :
])

# strcasestr.m4 serial 28
dnl Copyright (C) 2005, 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Check that strcasestr is present and works.
AC_DEFUN([gl_FUNC_STRCASESTR_SIMPLE],
[
  AC_REQUIRE([gl_STRING_H_DEFAULTS])

  dnl Persuade glibc <string.h> to declare strcasestr().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_REQUIRE([gl_FUNC_MEMCHR])
  AC_CHECK_FUNCS([strcasestr])
  if test $ac_cv_func_strcasestr = no; then
    HAVE_STRCASESTR=0
  else
    if test $REPLACE_MEMCHR = 1; then
      REPLACE_STRCASESTR=1
    else
      dnl Detect https://sourceware.org/bugzilla/show_bug.cgi?id=12092
      dnl and https://sourceware.org/bugzilla/show_bug.cgi?id=23637.
      AC_CACHE_CHECK([whether strcasestr works],
        [gl_cv_func_strcasestr_works_always],
        [AC_RUN_IFELSE(
           [AC_LANG_PROGRAM([[
#include <string.h> /* for __GNU_LIBRARY__, strcasestr */
#ifdef __GNU_LIBRARY__
 #include <features.h>
 #if __GLIBC__ == 2 && __GLIBC_MINOR__ == 28
  Unlucky user
 #endif
#endif
#define P "_EF_BF_BD"
#define HAYSTACK "F_BD_CE_BD" P P P P "_C3_88_20" P P P "_C3_A7_20" P
#define NEEDLE P P P P P
]],
              [[return !!strcasestr (HAYSTACK, NEEDLE);
              ]])],
           [gl_cv_func_strcasestr_works_always=yes],
           [gl_cv_func_strcasestr_works_always=no],
           [dnl glibc 2.12 and cygwin 1.7.7 have a known bug.  uClibc is not
            dnl affected, since it uses different source code for strcasestr
            dnl than glibc.
            dnl Assume that it works on all other platforms, even if it is not
            dnl linear.
            AC_EGREP_CPP([Lucky user],
              [
#include <string.h> /* for __GNU_LIBRARY__ */
#ifdef __GNU_LIBRARY__
 #include <features.h>
 #if ((__GLIBC__ == 2 && __GLIBC_MINOR__ > 12) || (__GLIBC__ > 2)) \
     || defined __UCLIBC__
  Lucky user
 #endif
#elif defined __CYGWIN__
 #include <cygwin/version.h>
 #if CYGWIN_VERSION_DLL_COMBINED > CYGWIN_VERSION_DLL_MAKE_COMBINED (1007, 7)
  Lucky user
 #endif
#else
  Lucky user
#endif
              ],
              [gl_cv_func_strcasestr_works_always="guessing yes"],
              [gl_cv_func_strcasestr_works_always="$gl_cross_guess_normal"])
           ])
        ])
      case "$gl_cv_func_strcasestr_works_always" in
        *yes) ;;
        *)
          REPLACE_STRCASESTR=1
          ;;
      esac
    fi
  fi
]) # gl_FUNC_STRCASESTR_SIMPLE

dnl Additionally, check that strcasestr is efficient.
AC_DEFUN([gl_FUNC_STRCASESTR],
[
  AC_REQUIRE([gl_FUNC_STRCASESTR_SIMPLE])
  if test $HAVE_STRCASESTR = 1 && test $REPLACE_STRCASESTR = 0; then
    AC_CACHE_CHECK([whether strcasestr works in linear time],
      [gl_cv_func_strcasestr_linear],
      [AC_RUN_IFELSE([AC_LANG_PROGRAM([[
#include <signal.h> /* for signal */
#include <string.h> /* for strcasestr */
#include <stdlib.h> /* for malloc */
#include <unistd.h> /* for alarm */
static void quit (int sig) { _exit (sig + 128); }
]], [[
    int result = 0;
    size_t m = 1000000;
    char *haystack = (char *) malloc (2 * m + 2);
    char *needle = (char *) malloc (m + 2);
    /* Failure to compile this test due to missing alarm is okay,
       since all such platforms (mingw) also lack strcasestr.  */
    signal (SIGALRM, quit);
    alarm (5);
    /* Check for quadratic performance.  */
    if (haystack && needle)
      {
        memset (haystack, 'A', 2 * m);
        haystack[2 * m] = 'B';
        haystack[2 * m + 1] = 0;
        memset (needle, 'A', m);
        needle[m] = 'B';
        needle[m + 1] = 0;
        if (!strcasestr (haystack, needle))
          result |= 1;
      }
    /* Free allocated memory, in case some sanitizer is watching.  */
    free (haystack);
    free (needle);
    return result;
    ]])],
        [gl_cv_func_strcasestr_linear=yes], [gl_cv_func_strcasestr_linear=no],
        [dnl Only glibc > 2.12 and cygwin > 1.7.7 are known to have a
         dnl strcasestr that works in linear time.
         AC_EGREP_CPP([Lucky user],
           [
#include <features.h>
#ifdef __GNU_LIBRARY__
 #if ((__GLIBC__ == 2 && __GLIBC_MINOR__ > 12) || (__GLIBC__ > 2)) \
     && !defined __UCLIBC__
  Lucky user
 #endif
#endif
#ifdef __CYGWIN__
 #include <cygwin/version.h>
 #if CYGWIN_VERSION_DLL_COMBINED > CYGWIN_VERSION_DLL_MAKE_COMBINED (1007, 7)
  Lucky user
 #endif
#endif
           ],
           [gl_cv_func_strcasestr_linear="guessing yes"],
           [gl_cv_func_strcasestr_linear="$gl_cross_guess_normal"])
        ])
      ])
    case "$gl_cv_func_strcasestr_linear" in
      *yes) ;;
      *)
        REPLACE_STRCASESTR=1
        ;;
    esac
  fi
]) # gl_FUNC_STRCASESTR

# Prerequisites of lib/strcasestr.c.
AC_DEFUN([gl_PREREQ_STRCASESTR], [
  :
])

# Configure a GNU-like replacement for <string.h>.

# Copyright (C) 2007-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 34

# Written by Paul Eggert.

AC_DEFUN_ONCE([gl_STRING_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_STRING_H_DEFAULTS])
  gl_NEXT_HEADERS([string.h])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use, and which is not
  dnl guaranteed by C89.
  gl_WARN_ON_USE_PREPARE([[#include <string.h>
    ]],
    [ffsl ffsll memmem mempcpy memrchr rawmemchr stpcpy stpncpy strchrnul
     strdup strncat strndup strnlen strpbrk strsep strcasestr strtok_r
     strerror_r strerrorname_np sigabbrev_np sigdescr_np strsignal strverscmp])

  AC_REQUIRE([AC_C_RESTRICT])
])

# gl_STRING_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_STRING_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_STRING_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_STRING_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_STRING_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXPLICIT_BZERO])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FFSL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FFSLL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MEMCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MEMMEM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MEMPCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MEMRCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RAWMEMCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STPCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STPNCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRCHRNUL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRDUP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRNCAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRNDUP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRNLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRPBRK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRSEP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRSTR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRCASESTR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRTOK_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSNLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSRCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSSTR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSCASECMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSNCASECMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSPCASECMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSCASESTR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSCSPN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSPBRK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSSPN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSSEP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSTOK_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRERROR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRERROR_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRERRORNAME_NP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGABBREV_NP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SIGDESCR_NP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRSIGNAL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRVERSCMP])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_MEMCCPY], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_STRDUP], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_STRING_H_MODULE_INDICATOR_DEFAULTS])
  dnl Make sure the shell variable for GNULIB_FREE_POSIX is initialized.
  gl_STDLIB_H_REQUIRE_DEFAULTS
  AC_REQUIRE([gl_STRING_H_DEFAULTS])
])

AC_DEFUN([gl_STRING_H_DEFAULTS],
[
  HAVE_MBSLEN=0;             AC_SUBST([HAVE_MBSLEN])
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_EXPLICIT_BZERO=1;        AC_SUBST([HAVE_EXPLICIT_BZERO])
  HAVE_FFSL=1;                  AC_SUBST([HAVE_FFSL])
  HAVE_FFSLL=1;                 AC_SUBST([HAVE_FFSLL])
  HAVE_DECL_MEMMEM=1;           AC_SUBST([HAVE_DECL_MEMMEM])
  HAVE_MEMPCPY=1;               AC_SUBST([HAVE_MEMPCPY])
  HAVE_DECL_MEMRCHR=1;          AC_SUBST([HAVE_DECL_MEMRCHR])
  HAVE_RAWMEMCHR=1;             AC_SUBST([HAVE_RAWMEMCHR])
  HAVE_STPCPY=1;                AC_SUBST([HAVE_STPCPY])
  HAVE_STPNCPY=1;               AC_SUBST([HAVE_STPNCPY])
  HAVE_STRCHRNUL=1;             AC_SUBST([HAVE_STRCHRNUL])
  HAVE_DECL_STRDUP=1;           AC_SUBST([HAVE_DECL_STRDUP])
  HAVE_DECL_STRNDUP=1;          AC_SUBST([HAVE_DECL_STRNDUP])
  HAVE_DECL_STRNLEN=1;          AC_SUBST([HAVE_DECL_STRNLEN])
  HAVE_STRPBRK=1;               AC_SUBST([HAVE_STRPBRK])
  HAVE_STRSEP=1;                AC_SUBST([HAVE_STRSEP])
  HAVE_STRCASESTR=1;            AC_SUBST([HAVE_STRCASESTR])
  HAVE_DECL_STRTOK_R=1;         AC_SUBST([HAVE_DECL_STRTOK_R])
  HAVE_DECL_STRERROR_R=1;       AC_SUBST([HAVE_DECL_STRERROR_R])
  HAVE_STRERRORNAME_NP=1;       AC_SUBST([HAVE_STRERRORNAME_NP])
  HAVE_SIGABBREV_NP=1;          AC_SUBST([HAVE_SIGABBREV_NP])
  HAVE_SIGDESCR_NP=1;           AC_SUBST([HAVE_SIGDESCR_NP])
  HAVE_DECL_STRSIGNAL=1;        AC_SUBST([HAVE_DECL_STRSIGNAL])
  HAVE_STRVERSCMP=1;            AC_SUBST([HAVE_STRVERSCMP])
  REPLACE_FFSLL=0;              AC_SUBST([REPLACE_FFSLL])
  REPLACE_MEMCHR=0;             AC_SUBST([REPLACE_MEMCHR])
  REPLACE_MEMMEM=0;             AC_SUBST([REPLACE_MEMMEM])
  REPLACE_STPNCPY=0;            AC_SUBST([REPLACE_STPNCPY])
  REPLACE_STRCHRNUL=0;          AC_SUBST([REPLACE_STRCHRNUL])
  REPLACE_STRDUP=0;             AC_SUBST([REPLACE_STRDUP])
  REPLACE_STRNCAT=0;            AC_SUBST([REPLACE_STRNCAT])
  REPLACE_STRNDUP=0;            AC_SUBST([REPLACE_STRNDUP])
  REPLACE_STRNLEN=0;            AC_SUBST([REPLACE_STRNLEN])
  REPLACE_STRSTR=0;             AC_SUBST([REPLACE_STRSTR])
  REPLACE_STRCASESTR=0;         AC_SUBST([REPLACE_STRCASESTR])
  REPLACE_STRTOK_R=0;           AC_SUBST([REPLACE_STRTOK_R])
  REPLACE_STRERROR=0;           AC_SUBST([REPLACE_STRERROR])
  REPLACE_STRERROR_R=0;         AC_SUBST([REPLACE_STRERROR_R])
  REPLACE_STRERRORNAME_NP=0;    AC_SUBST([REPLACE_STRERRORNAME_NP])
  REPLACE_STRSIGNAL=0;          AC_SUBST([REPLACE_STRSIGNAL])
  UNDEFINE_STRTOK_R=0;          AC_SUBST([UNDEFINE_STRTOK_R])
])

# Configure a replacement for <strings.h>.
# serial 9

# Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_STRINGS_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_STRINGS_H_DEFAULTS])

  gl_CHECK_NEXT_HEADERS([strings.h])
  if test $ac_cv_header_strings_h = yes; then
    HAVE_STRINGS_H=1
  else
    HAVE_STRINGS_H=0
  fi
  AC_SUBST([HAVE_STRINGS_H])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
    /* Minix 3.1.8 has a bug: <sys/types.h> must be included before
       <strings.h>.  */
    #include <sys/types.h>
    #include <strings.h>
    ]], [ffs strcasecmp strncasecmp])
])

# gl_STRINGS_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_STRINGS_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_STRINGS_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_STRINGS_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_STRINGS_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FFS])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_STRINGS_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_STRINGS_H_DEFAULTS])
])

AC_DEFUN([gl_STRINGS_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_FFS=1;              AC_SUBST([HAVE_FFS])
  HAVE_STRCASECMP=1;       AC_SUBST([HAVE_STRCASECMP])
  HAVE_DECL_STRNCASECMP=1; AC_SUBST([HAVE_DECL_STRNCASECMP])
])

# strnlen.m4 serial 14
dnl Copyright (C) 2002-2003, 2005-2007, 2009-2021 Free Software Foundation,
dnl Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_STRNLEN],
[
  AC_REQUIRE([gl_STRING_H_DEFAULTS])

  dnl Persuade glibc <string.h> to declare strnlen().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_CHECK_DECLS_ONCE([strnlen])
  if test $ac_cv_have_decl_strnlen = no; then
    HAVE_DECL_STRNLEN=0
  else
    m4_pushdef([AC_LIBOBJ], [:])
    dnl Note: AC_FUNC_STRNLEN does AC_LIBOBJ([strnlen]).
    AC_FUNC_STRNLEN
    m4_popdef([AC_LIBOBJ])
    if test $ac_cv_func_strnlen_working = no; then
      REPLACE_STRNLEN=1
    fi
  fi
])

# Prerequisites of lib/strnlen.c.
AC_DEFUN([gl_PREREQ_STRNLEN], [:])

# sys_random_h.m4 serial 8
dnl Copyright (C) 2020-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_SYS_RANDOM_H],
[
  AC_REQUIRE([gl_SYS_RANDOM_H_DEFAULTS])
  dnl <sys/random.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_CHECK_NEXT_HEADERS([sys/random.h])
  if test $ac_cv_header_sys_random_h = yes; then
    HAVE_SYS_RANDOM_H=1
  else
    HAVE_SYS_RANDOM_H=0
  fi
  AC_SUBST([HAVE_SYS_RANDOM_H])

  m4_ifdef([gl_UNISTD_H_DEFAULTS], [AC_REQUIRE([gl_UNISTD_H_DEFAULTS])])
  if test $ac_cv_header_sys_random_h = yes; then
    UNISTD_H_HAVE_SYS_RANDOM_H=1
  fi

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
#if HAVE_SYS_RANDOM_H
/* Additional includes are needed before <sys/random.h> on uClibc
   and Mac OS X.  */
# include <sys/types.h>
# include <stdlib.h>
# include <sys/random.h>
#endif
    ]],
    [getrandom])
])

# gl_SYS_RANDOM_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SYS_RANDOM_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SYS_RANDOM_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_RANDOM_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_RANDOM_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETRANDOM])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_RANDOM_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_RANDOM_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_RANDOM_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_GETRANDOM=1;       AC_SUBST([HAVE_GETRANDOM])
  REPLACE_GETRANDOM=0;    AC_SUBST([REPLACE_GETRANDOM])
])

# sys_socket_h.m4 serial 28
dnl Copyright (C) 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Simon Josefsson.

AC_DEFUN_ONCE([gl_SYS_SOCKET_H],
[
  AC_REQUIRE([gl_SYS_SOCKET_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])

  dnl On OSF/1, the functions recv(), send(), recvfrom(), sendto() have
  dnl old-style declarations (with return type 'int' instead of 'ssize_t')
  dnl unless _POSIX_PII_SOCKET is defined.
  case "$host_os" in
    osf*)
      AC_DEFINE([_POSIX_PII_SOCKET], [1],
        [Define to 1 in order to get the POSIX compatible declarations
         of socket functions.])
      ;;
  esac

  AC_CACHE_CHECK([whether <sys/socket.h> is self-contained],
    [gl_cv_header_sys_socket_h_selfcontained],
    [
      AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <sys/socket.h>]], [[]])],
        [gl_cv_header_sys_socket_h_selfcontained=yes],
        [gl_cv_header_sys_socket_h_selfcontained=no])
    ])
  if test $gl_cv_header_sys_socket_h_selfcontained = yes; then
    dnl If the shutdown function exists, <sys/socket.h> should define
    dnl SHUT_RD, SHUT_WR, SHUT_RDWR.
    AC_CHECK_FUNCS([shutdown])
    if test $ac_cv_func_shutdown = yes; then
      AC_CACHE_CHECK([whether <sys/socket.h> defines the SHUT_* macros],
        [gl_cv_header_sys_socket_h_shut],
        [
          AC_COMPILE_IFELSE(
            [AC_LANG_PROGRAM([[#include <sys/socket.h>]],
               [[int a[] = { SHUT_RD, SHUT_WR, SHUT_RDWR };]])],
            [gl_cv_header_sys_socket_h_shut=yes],
            [gl_cv_header_sys_socket_h_shut=no])
        ])
      if test $gl_cv_header_sys_socket_h_shut = no; then
        SYS_SOCKET_H='sys/socket.h'
      fi
    fi
  fi
  # We need to check for ws2tcpip.h now.
  gl_PREREQ_SYS_H_SOCKET
  AC_CHECK_TYPES([struct sockaddr_storage, sa_family_t],,,[
  /* sys/types.h is not needed according to POSIX, but the
     sys/socket.h in i386-unknown-freebsd4.10 and
     powerpc-apple-darwin5.5 required it. */
#include <sys/types.h>
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#ifdef HAVE_WS2TCPIP_H
#include <ws2tcpip.h>
#endif
])
  if test $ac_cv_type_struct_sockaddr_storage = no; then
    HAVE_STRUCT_SOCKADDR_STORAGE=0
  fi
  if test $ac_cv_type_sa_family_t = no; then
    HAVE_SA_FAMILY_T=0
  fi
  if test $ac_cv_type_struct_sockaddr_storage != no; then
    AC_CHECK_MEMBERS([struct sockaddr_storage.ss_family],
      [],
      [HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY=0],
      [#include <sys/types.h>
       #ifdef HAVE_SYS_SOCKET_H
       #include <sys/socket.h>
       #endif
       #ifdef HAVE_WS2TCPIP_H
       #include <ws2tcpip.h>
       #endif
      ])
  fi
  if test $HAVE_STRUCT_SOCKADDR_STORAGE = 0 || test $HAVE_SA_FAMILY_T = 0 \
     || test $HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY = 0; then
    SYS_SOCKET_H='sys/socket.h'
  fi
  gl_PREREQ_SYS_H_WINSOCK2

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
/* Some systems require prerequisite headers.  */
#include <sys/types.h>
#include <sys/socket.h>
    ]], [socket connect accept bind getpeername getsockname getsockopt
    listen recv send recvfrom sendto setsockopt shutdown accept4])

  AC_REQUIRE([AC_C_RESTRICT])
])

AC_DEFUN([gl_PREREQ_SYS_H_SOCKET],
[
  dnl Check prerequisites of the <sys/socket.h> replacement.
  AC_REQUIRE([gl_CHECK_SOCKET_HEADERS])
  gl_CHECK_NEXT_HEADERS([sys/socket.h])
  if test $ac_cv_header_sys_socket_h = yes; then
    HAVE_SYS_SOCKET_H=1
  else
    HAVE_SYS_SOCKET_H=0
  fi
  AC_SUBST([HAVE_SYS_SOCKET_H])
  gl_PREREQ_SYS_H_WS2TCPIP
])

# Common prerequisites of the <sys/socket.h> replacement and of the
# <sys/select.h> replacement.
# Sets and substitutes HAVE_WINSOCK2_H.
AC_DEFUN([gl_PREREQ_SYS_H_WINSOCK2],
[
  m4_ifdef([gl_UNISTD_H_DEFAULTS], [AC_REQUIRE([gl_UNISTD_H_DEFAULTS])])
  m4_ifdef([gl_SYS_IOCTL_H_DEFAULTS], [AC_REQUIRE([gl_SYS_IOCTL_H_DEFAULTS])])
  AC_CHECK_HEADERS_ONCE([sys/socket.h])
  if test $ac_cv_header_sys_socket_h != yes; then
    dnl We cannot use AC_CHECK_HEADERS_ONCE here, because that would make
    dnl the check for those headers unconditional; yet cygwin reports
    dnl that the headers are present but cannot be compiled (since on
    dnl cygwin, all socket information should come from sys/socket.h).
    AC_CHECK_HEADERS([winsock2.h])
  fi
  if test "$ac_cv_header_winsock2_h" = yes; then
    HAVE_WINSOCK2_H=1
    UNISTD_H_HAVE_WINSOCK2_H=1
    SYS_IOCTL_H_HAVE_WINSOCK2_H=1
  else
    HAVE_WINSOCK2_H=0
  fi
  AC_SUBST([HAVE_WINSOCK2_H])
])

# Common prerequisites of the <sys/socket.h> replacement and of the
# <arpa/inet.h> replacement.
# Sets and substitutes HAVE_WS2TCPIP_H.
AC_DEFUN([gl_PREREQ_SYS_H_WS2TCPIP],
[
  AC_REQUIRE([gl_CHECK_SOCKET_HEADERS])
  if test $ac_cv_header_sys_socket_h = yes; then
    HAVE_WS2TCPIP_H=0
  else
    if test $ac_cv_header_ws2tcpip_h = yes; then
      HAVE_WS2TCPIP_H=1
    else
      HAVE_WS2TCPIP_H=0
    fi
  fi
  AC_SUBST([HAVE_WS2TCPIP_H])
])

# gl_SYS_SOCKET_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SYS_SOCKET_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SYS_SOCKET_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_SOCKET_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_SOCKET_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SOCKET])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CONNECT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ACCEPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_BIND])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETPEERNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETSOCKNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETSOCKOPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LISTEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RECV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SEND])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RECVFROM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SENDTO])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SETSOCKOPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SHUTDOWN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ACCEPT4])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_SOCKET_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_SOCKET_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_SOCKET_H_DEFAULTS],
[
  HAVE_STRUCT_SOCKADDR_STORAGE=1; AC_SUBST([HAVE_STRUCT_SOCKADDR_STORAGE])
  HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY=1;
                        AC_SUBST([HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY])
  HAVE_SA_FAMILY_T=1;   AC_SUBST([HAVE_SA_FAMILY_T])
  HAVE_ACCEPT4=1;       AC_SUBST([HAVE_ACCEPT4])
])

# sys_stat_h.m4 serial 41   -*- Autoconf -*-
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Eric Blake.
dnl Provide a GNU-like <sys/stat.h>.

AC_DEFUN_ONCE([gl_SYS_STAT_H],
[
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])

  dnl Check for broken stat macros.
  AC_REQUIRE([AC_HEADER_STAT])

  gl_CHECK_NEXT_HEADERS([sys/stat.h])

  dnl Ensure the type mode_t gets defined.
  AC_REQUIRE([AC_TYPE_MODE_T])

  dnl Whether to enable precise timestamps in 'struct stat'.
  m4_ifdef([gl_WINDOWS_STAT_TIMESPEC], [
    AC_REQUIRE([gl_WINDOWS_STAT_TIMESPEC])
  ], [
    WINDOWS_STAT_TIMESPEC=0
  ])
  AC_SUBST([WINDOWS_STAT_TIMESPEC])

  dnl Whether to ensure that struct stat.st_size is 64-bit wide.
  m4_ifdef([gl_LARGEFILE], [
    AC_REQUIRE([gl_LARGEFILE])
  ], [
    WINDOWS_64_BIT_ST_SIZE=0
  ])
  AC_SUBST([WINDOWS_64_BIT_ST_SIZE])

  dnl Define types that are supposed to be defined in <sys/types.h> or
  dnl <sys/stat.h>.
  AC_CHECK_TYPE([nlink_t], [],
    [AC_DEFINE([nlink_t], [int],
       [Define to the type of st_nlink in struct stat, or a supertype.])],
    [#include <sys/types.h>
     #include <sys/stat.h>])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <sys/stat.h>
    ]], [fchmodat fstat fstatat futimens getumask lchmod lstat
    mkdirat mkfifo mkfifoat mknod mknodat stat utimensat])

  AC_REQUIRE([AC_C_RESTRICT])
])

# gl_SYS_STAT_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SYS_STAT_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SYS_STAT_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_STAT_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_STAT_H_MODULE_INDICATOR_DEFAULTS], [
    gl_UNISTD_H_REQUIRE_DEFAULTS dnl for REPLACE_FCHDIR
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FCHMODAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSTAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSTATAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FUTIMENS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETUMASK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LCHMOD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LSTAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKDIRAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKFIFO])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKFIFOAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKNOD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKNODAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UTIMENSAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_OVERRIDES_STRUCT_STAT])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_CHMOD], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_MKDIR], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_UMASK], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_STAT_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_STAT_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_STAT_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_FCHMODAT=1;      AC_SUBST([HAVE_FCHMODAT])
  HAVE_FSTATAT=1;       AC_SUBST([HAVE_FSTATAT])
  HAVE_FUTIMENS=1;      AC_SUBST([HAVE_FUTIMENS])
  HAVE_GETUMASK=1;      AC_SUBST([HAVE_GETUMASK])
  HAVE_LCHMOD=1;        AC_SUBST([HAVE_LCHMOD])
  HAVE_LSTAT=1;         AC_SUBST([HAVE_LSTAT])
  HAVE_MKDIRAT=1;       AC_SUBST([HAVE_MKDIRAT])
  HAVE_MKFIFO=1;        AC_SUBST([HAVE_MKFIFO])
  HAVE_MKFIFOAT=1;      AC_SUBST([HAVE_MKFIFOAT])
  HAVE_MKNOD=1;         AC_SUBST([HAVE_MKNOD])
  HAVE_MKNODAT=1;       AC_SUBST([HAVE_MKNODAT])
  HAVE_UTIMENSAT=1;     AC_SUBST([HAVE_UTIMENSAT])
  REPLACE_FCHMODAT=0;   AC_SUBST([REPLACE_FCHMODAT])
  REPLACE_FSTAT=0;      AC_SUBST([REPLACE_FSTAT])
  REPLACE_FSTATAT=0;    AC_SUBST([REPLACE_FSTATAT])
  REPLACE_FUTIMENS=0;   AC_SUBST([REPLACE_FUTIMENS])
  REPLACE_LSTAT=0;      AC_SUBST([REPLACE_LSTAT])
  REPLACE_MKDIR=0;      AC_SUBST([REPLACE_MKDIR])
  REPLACE_MKFIFO=0;     AC_SUBST([REPLACE_MKFIFO])
  REPLACE_MKFIFOAT=0;   AC_SUBST([REPLACE_MKFIFOAT])
  REPLACE_MKNOD=0;      AC_SUBST([REPLACE_MKNOD])
  REPLACE_MKNODAT=0;    AC_SUBST([REPLACE_MKNODAT])
  REPLACE_STAT=0;       AC_SUBST([REPLACE_STAT])
  REPLACE_UTIMENSAT=0;  AC_SUBST([REPLACE_UTIMENSAT])
])

# Configure a replacement for <sys/time.h>.
# serial 12

# Copyright (C) 2007, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Written by Paul Eggert and Martin Lambers.

AC_DEFUN_ONCE([gl_SYS_TIME_H],
[
  dnl Use AC_REQUIRE here, so that the REPLACE_GETTIMEOFDAY=0 statement
  dnl below is expanded once only, before all REPLACE_GETTIMEOFDAY=1
  dnl statements that occur in other macros.
  AC_REQUIRE([gl_SYS_TIME_H_DEFAULTS])
  AC_REQUIRE([AC_C_RESTRICT])
  AC_CHECK_HEADERS_ONCE([sys/time.h])
  gl_CHECK_NEXT_HEADERS([sys/time.h])

  if test $ac_cv_header_sys_time_h != yes; then
    HAVE_SYS_TIME_H=0
  fi

  dnl On native Windows with MSVC, 'struct timeval' is defined in <winsock2.h>
  dnl only. So include that header in the list.
  gl_PREREQ_SYS_H_WINSOCK2
  AC_CACHE_CHECK([for struct timeval], [gl_cv_sys_struct_timeval],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#if HAVE_SYS_TIME_H
             #include <sys/time.h>
            #endif
            #include <time.h>
            #if HAVE_WINSOCK2_H
            # include <winsock2.h>
            #endif
          ]],
          [[static struct timeval x; x.tv_sec = x.tv_usec;]])],
       [gl_cv_sys_struct_timeval=yes],
       [gl_cv_sys_struct_timeval=no])
    ])
  if test $gl_cv_sys_struct_timeval != yes; then
    HAVE_STRUCT_TIMEVAL=0
  else
    dnl On native Windows with a 64-bit 'time_t', 'struct timeval' is defined
    dnl (in <sys/time.h> and <winsock2.h> for mingw64, in <winsock2.h> only
    dnl for MSVC) with a tv_sec field of type 'long' (32-bit!), which is
    dnl smaller than the 'time_t' type mandated by POSIX.
    dnl On OpenBSD 5.1 amd64, tv_sec is 64 bits and time_t 32 bits, but
    dnl that is good enough.
    AC_CACHE_CHECK([for wide-enough struct timeval.tv_sec member],
      [gl_cv_sys_struct_timeval_tv_sec],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[#if HAVE_SYS_TIME_H
               #include <sys/time.h>
              #endif
              #include <time.h>
              #if HAVE_WINSOCK2_H
              # include <winsock2.h>
              #endif
            ]],
            [[static struct timeval x;
              typedef int verify_tv_sec_type[
                sizeof (time_t) <= sizeof x.tv_sec ? 1 : -1
              ];
            ]])],
         [gl_cv_sys_struct_timeval_tv_sec=yes],
         [gl_cv_sys_struct_timeval_tv_sec=no])
      ])
    if test $gl_cv_sys_struct_timeval_tv_sec != yes; then
      REPLACE_STRUCT_TIMEVAL=1
    fi
  fi

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
#if HAVE_SYS_TIME_H
# include <sys/time.h>
#endif
#include <time.h>
    ]], [gettimeofday])
])

# gl_SYS_TIME_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SYS_TIME_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SYS_TIME_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_TIME_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_TIME_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETTIMEOFDAY])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_TIME_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_TIME_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_TIME_H_DEFAULTS],
[
  dnl Assume POSIX behavior unless another module says otherwise.
  HAVE_GETTIMEOFDAY=1;       AC_SUBST([HAVE_GETTIMEOFDAY])
  HAVE_STRUCT_TIMEVAL=1;     AC_SUBST([HAVE_STRUCT_TIMEVAL])
  HAVE_SYS_TIME_H=1;         AC_SUBST([HAVE_SYS_TIME_H])
  REPLACE_GETTIMEOFDAY=0;    AC_SUBST([REPLACE_GETTIMEOFDAY])
  REPLACE_STRUCT_TIMEVAL=0;  AC_SUBST([REPLACE_STRUCT_TIMEVAL])
])

# sys_types_h.m4 serial 13
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_SYS_TYPES_H],
[
  AC_REQUIRE([gl_SYS_TYPES_H_DEFAULTS])

  dnl Use sane struct stat types in OpenVMS 8.2 and later.
  AC_DEFINE([_USE_STD_STAT], 1, [For standard stat data types on VMS.])

  gl_NEXT_HEADERS([sys/types.h])

  dnl Ensure the type pid_t gets defined.
  AC_REQUIRE([AC_TYPE_PID_T])

  dnl Ensure the type mode_t gets defined.
  AC_REQUIRE([AC_TYPE_MODE_T])

  dnl Whether to override the 'off_t' type.
  AC_REQUIRE([gl_TYPE_OFF_T])

  dnl Whether to override the 'dev_t' and 'ino_t' types.
  m4_ifdef([gl_WINDOWS_STAT_INODES], [
    AC_REQUIRE([gl_WINDOWS_STAT_INODES])
  ], [
    WINDOWS_STAT_INODES=0
  ])
  AC_SUBST([WINDOWS_STAT_INODES])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_TYPES_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_TYPE_H_MODULE_INDICATOR_DEFAULTS], [
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_TYPE_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_TYPES_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_TYPES_H_DEFAULTS],
[
])

# This works around a buggy version in autoconf <= 2.69.
# See <https://lists.gnu.org/r/autoconf/2016-08/msg00014.html>
# The 2.70 version isn't quoted properly, so override it too.

m4_version_prereq([2.70.1], [], [

m4_undefine([AC_HEADER_MAJOR])
AC_DEFUN([AC_HEADER_MAJOR],
[AC_CHECK_HEADERS_ONCE([sys/types.h])
AC_CHECK_HEADER([sys/mkdev.h],
                [AC_DEFINE([MAJOR_IN_MKDEV], [1],
                           [Define to 1 if `major', `minor', and `makedev' are
                            declared in <mkdev.h>.])])
if test $ac_cv_header_sys_mkdev_h = no; then
  AC_CHECK_HEADER([sys/sysmacros.h],
                  [AC_DEFINE([MAJOR_IN_SYSMACROS], [1],
                             [Define to 1 if `major', `minor', and `makedev'
                              are declared in <sysmacros.h>.])])
fi
])# AC_HEADER_MAJOR

])

# sys_wait_h.m4 serial 9
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN_ONCE([gl_SYS_WAIT_H],
[
  AC_REQUIRE([gl_SYS_WAIT_H_DEFAULTS])

  dnl <sys/wait.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_CHECK_NEXT_HEADERS([sys/wait.h])

  dnl Ensure the type pid_t gets defined.
  AC_REQUIRE([AC_TYPE_PID_T])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <sys/wait.h>]],
    [waitpid])
])

# gl_SYS_WAIT_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_SYS_WAIT_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_SYS_WAIT_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_SYS_WAIT_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_SYS_WAIT_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WAITPID])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_SYS_WAIT_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_SYS_WAIT_H_DEFAULTS])
])

AC_DEFUN([gl_SYS_WAIT_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
])

#serial 5

# Copyright (C) 2006-2007, 2009-2021 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# glibc provides __gen_tempname as a wrapper for mk[ds]temp.  Expose
# it as a public API, and provide it on systems that are lacking.
AC_DEFUN([gl_FUNC_GEN_TEMPNAME],
[
  gl_PREREQ_TEMPNAME
])

# Prerequisites of lib/tempname.c.
AC_DEFUN([gl_PREREQ_TEMPNAME],
[
  :
])

# threadlib.m4 serial 32
dnl Copyright (C) 2005-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_PREREQ([2.60])

dnl The general structure of the multithreading modules in gnulib is that we
dnl have three set of modules:
dnl
dnl   * POSIX API:
dnl     pthread, which combines
dnl       pthread-h
dnl       pthread-thread
dnl       pthread-once
dnl       pthread-mutex
dnl       pthread-rwlock
dnl       pthread-cond
dnl       pthread-tss
dnl       pthread-spin
dnl     sched_yield
dnl
dnl   * ISO C API:
dnl     threads, which combines
dnl       threads-h
dnl       thrd
dnl       mtx
dnl       cnd
dnl       tss
dnl
dnl   * Gnulib API, with an implementation that can be chosen at configure
dnl     time through the option --enable-threads=...
dnl       thread
dnl       lock
dnl       cond
dnl       tls
dnl       yield
dnl
dnl They are independent, except for the fact that
dnl   - the implementation of the ISO C API may use the POSIX (or some other
dnl     platform dependent) API,
dnl   - the implementation of the Gnulib API may use the POSIX or ISO C or
dnl     some other platform dependent API, depending on the --enable-threads
dnl     option.
dnl
dnl This file contains macros for all of these APIs!

dnl ============================================================================
dnl Macros for all thread APIs

AC_DEFUN([gl_ANYTHREADLIB_EARLY],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  if test -z "$gl_anythreadlib_early_done"; then
    case "$host_os" in
      osf*)
        # On OSF/1, the compiler needs the flag -D_REENTRANT so that it
        # groks <pthread.h>. cc also understands the flag -pthread, but
        # we don't use it because 1. gcc-2.95 doesn't understand -pthread,
        # 2. putting a flag into CPPFLAGS that has an effect on the linker
        # causes the AC_LINK_IFELSE test below to succeed unexpectedly,
        # leading to wrong values of LIBTHREAD and LTLIBTHREAD.
        CPPFLAGS="$CPPFLAGS -D_REENTRANT"
        ;;
    esac
    # Some systems optimize for single-threaded programs by default, and
    # need special flags to disable these optimizations. For example, the
    # definition of 'errno' in <errno.h>.
    case "$host_os" in
      aix* | freebsd*) CPPFLAGS="$CPPFLAGS -D_THREAD_SAFE" ;;
      solaris*) CPPFLAGS="$CPPFLAGS -D_REENTRANT" ;;
    esac
    gl_anythreadlib_early_done=done
  fi
])

dnl Checks whether the compiler and linker support weak declarations of symbols.

AC_DEFUN([gl_WEAK_SYMBOLS],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether imported symbols can be declared weak],
    [gl_cv_have_weak],
    [case "$host_os" in
       cygwin*)
         dnl On Cygwin 3.2.0 with gcc 10.2, the test below would succeed, but
         dnl programs that use pthread_in_use() with weak symbol references
         dnl crash miserably at runtime.
         gl_cv_have_weak="guessing no"
         ;;
       *)
         gl_cv_have_weak=no
         dnl First, test whether the compiler accepts it syntactically.
         AC_LINK_IFELSE(
           [AC_LANG_PROGRAM(
              [[extern void xyzzy ();
#pragma weak xyzzy]],
              [[xyzzy();]])],
           [gl_cv_have_weak=maybe])
         if test $gl_cv_have_weak = maybe; then
           dnl Second, test whether it actually works. On Cygwin 1.7.2, with
           dnl gcc 4.3, symbols declared weak always evaluate to the address 0.
           AC_RUN_IFELSE(
             [AC_LANG_SOURCE([[
#include <stdio.h>
#pragma weak fputs
int main ()
{
  return (fputs == NULL);
}]])],
             [gl_cv_have_weak=yes],
             [gl_cv_have_weak=no],
             [dnl When cross-compiling, assume that only ELF platforms support
              dnl weak symbols.
              AC_EGREP_CPP([Extensible Linking Format],
                [#ifdef __ELF__
                 Extensible Linking Format
                 #endif
                ],
                [gl_cv_have_weak="guessing yes"],
                [gl_cv_have_weak="guessing no"])
             ])
         fi
         ;;
     esac
     dnl But when linking statically, weak symbols don't work.
     case " $LDFLAGS " in
       *" -static "*) gl_cv_have_weak=no ;;
     esac
     dnl Test for a bug in FreeBSD 11: A link error occurs when using a weak
     dnl symbol and linking against a shared library that has a dependency on
     dnl the shared library that defines the symbol.
     case "$gl_cv_have_weak" in
       *yes)
         case "$host_os" in
           freebsd* | dragonfly* | midnightbsd*)
             : > conftest1.c
             $CC $CPPFLAGS $CFLAGS $LDFLAGS -fPIC -shared -o libempty.so conftest1.c -lpthread >&AS_MESSAGE_LOG_FD 2>&1
             cat <<EOF > conftest2.c
#include <pthread.h>
#pragma weak pthread_mutexattr_gettype
int main ()
{
  return (pthread_mutexattr_gettype != NULL);
}
EOF
             $CC $CPPFLAGS $CFLAGS $LDFLAGS -o conftest conftest2.c libempty.so >&AS_MESSAGE_LOG_FD 2>&1 \
               || gl_cv_have_weak=no
             rm -f conftest1.c libempty.so conftest2.c conftest
             ;;
         esac
         ;;
     esac
    ])
  case "$gl_cv_have_weak" in
    *yes)
      AC_DEFINE([HAVE_WEAK_SYMBOLS], [1],
        [Define to 1 if the compiler and linker support weak declarations of symbols.])
      ;;
  esac
])

dnl ============================================================================
dnl Macros for the POSIX API

dnl gl_PTHREADLIB
dnl -------------
dnl Tests for the libraries needs for using the POSIX threads API.
dnl Sets the variable LIBPTHREAD to the linker options for use in a Makefile.
dnl Sets the variable LIBPMULTITHREAD, for programs that really need
dnl multithread functionality. The difference between LIBPTHREAD and
dnl LIBPMULTITHREAD is that on platforms supporting weak symbols, typically
dnl LIBPTHREAD is empty whereas LIBPMULTITHREAD is not.
dnl Sets the variable LIB_SCHED_YIELD to the linker options needed to use the
dnl sched_yield() function.
dnl Adds to CPPFLAGS the flag -D_REENTRANT or -D_THREAD_SAFE if needed for
dnl multithread-safe programs.
dnl Defines the C macro HAVE_PTHREAD_API if (at least parts of) the POSIX
dnl threads API is available.

dnl The guts of gl_PTHREADLIB. Needs to be expanded only once.

AC_DEFUN([gl_PTHREADLIB_BODY],
[
  AC_REQUIRE([gl_ANYTHREADLIB_EARLY])
  if test -z "$gl_pthreadlib_body_done"; then
    gl_pthread_api=no
    LIBPTHREAD=
    LIBPMULTITHREAD=
    # On OSF/1, the compiler needs the flag -pthread or -D_REENTRANT so that
    # it groks <pthread.h>. It's added above, in gl_ANYTHREADLIB_EARLY.
    AC_CHECK_HEADER([pthread.h],
      [gl_have_pthread_h=yes], [gl_have_pthread_h=no])
    if test "$gl_have_pthread_h" = yes; then
      # Other possible tests:
      #   -lpthreads (FSU threads, PCthreads)
      #   -lgthreads
      # Test whether both pthread_mutex_lock and pthread_mutexattr_init exist
      # in libc. IRIX 6.5 has the first one in both libc and libpthread, but
      # the second one only in libpthread, and lock.c needs it.
      #
      # If -pthread works, prefer it to -lpthread, since Ubuntu 14.04
      # needs -pthread for some reason.  See:
      # https://lists.gnu.org/r/bug-gnulib/2014-09/msg00023.html
      save_LIBS=$LIBS
      for gl_pthread in '' '-pthread'; do
        LIBS="$LIBS $gl_pthread"
        AC_LINK_IFELSE(
          [AC_LANG_PROGRAM(
             [[#include <pthread.h>
               pthread_mutex_t m;
               pthread_mutexattr_t ma;
             ]],
             [[pthread_mutex_lock (&m);
               pthread_mutexattr_init (&ma);]])],
          [gl_pthread_api=yes
           LIBPTHREAD=$gl_pthread
           LIBPMULTITHREAD=$gl_pthread])
        LIBS=$save_LIBS
        test $gl_pthread_api = yes && break
      done
      echo "$as_me:__oline__: gl_pthread_api=$gl_pthread_api" >&AS_MESSAGE_LOG_FD
      echo "$as_me:__oline__: LIBPTHREAD=$LIBPTHREAD" >&AS_MESSAGE_LOG_FD

      gl_pthread_in_glibc=no
      # On Linux with glibc >= 2.34, libc contains the fully functional
      # pthread functions.
      case "$host_os" in
        linux*)
          AC_EGREP_CPP([Lucky user],
            [#include <features.h>
             #ifdef __GNU_LIBRARY__
              #if (__GLIBC__ == 2 && __GLIBC_MINOR__ >= 34) || (__GLIBC__ > 2)
               Lucky user
              #endif
             #endif
            ],
            [gl_pthread_in_glibc=yes],
            [])
          ;;
      esac
      echo "$as_me:__oline__: gl_pthread_in_glibc=$gl_pthread_in_glibc" >&AS_MESSAGE_LOG_FD

      # Test for libpthread by looking for pthread_kill. (Not pthread_self,
      # since it is defined as a macro on OSF/1.)
      if test $gl_pthread_api = yes && test -z "$LIBPTHREAD"; then
        # The program links fine without libpthread. But it may actually
        # need to link with libpthread in order to create multiple threads.
        AC_CHECK_LIB([pthread], [pthread_kill],
          [if test $gl_pthread_in_glibc = yes; then
             LIBPMULTITHREAD=
           else
             LIBPMULTITHREAD=-lpthread
             # On Solaris and HP-UX, most pthread functions exist also in libc.
             # Therefore pthread_in_use() needs to actually try to create a
             # thread: pthread_create from libc will fail, whereas
             # pthread_create will actually create a thread.
             # On Solaris 10 or newer, this test is no longer needed, because
             # libc contains the fully functional pthread functions.
             case "$host_os" in
               solaris | solaris2.[1-9] | solaris2.[1-9].* | hpux*)
                 AC_DEFINE([PTHREAD_IN_USE_DETECTION_HARD], [1],
                   [Define if the pthread_in_use() detection is hard.])
             esac
           fi
          ])
      elif test $gl_pthread_api != yes; then
        # Some library is needed. Try libpthread and libc_r.
        AC_CHECK_LIB([pthread], [pthread_kill],
          [gl_pthread_api=yes
           LIBPTHREAD=-lpthread
           LIBPMULTITHREAD=-lpthread])
        if test $gl_pthread_api != yes; then
          # For FreeBSD 4.
          AC_CHECK_LIB([c_r], [pthread_kill],
            [gl_pthread_api=yes
             LIBPTHREAD=-lc_r
             LIBPMULTITHREAD=-lc_r])
        fi
      fi
      echo "$as_me:__oline__: LIBPMULTITHREAD=$LIBPMULTITHREAD" >&AS_MESSAGE_LOG_FD
    fi
    AC_MSG_CHECKING([whether POSIX threads API is available])
    AC_MSG_RESULT([$gl_pthread_api])
    AC_SUBST([LIBPTHREAD])
    AC_SUBST([LIBPMULTITHREAD])
    if test $gl_pthread_api = yes; then
      AC_DEFINE([HAVE_PTHREAD_API], [1],
        [Define if you have the <pthread.h> header and the POSIX threads API.])
    fi

    dnl On some systems, sched_yield is in librt, rather than in libpthread.
    AC_LINK_IFELSE(
      [AC_LANG_PROGRAM(
         [[#include <sched.h>]],
         [[sched_yield ();]])],
      [LIB_SCHED_YIELD=
      ],
      [dnl Solaris 7...10 has sched_yield in librt, not in libpthread or libc.
       AC_CHECK_LIB([rt], [sched_yield], [LIB_SCHED_YIELD=-lrt],
         [dnl Solaris 2.5.1, 2.6 has sched_yield in libposix4, not librt.
          AC_CHECK_LIB([posix4], [sched_yield], [LIB_SCHED_YIELD=-lposix4])])
      ])
    AC_SUBST([LIB_SCHED_YIELD])

    gl_pthreadlib_body_done=done
  fi
])

AC_DEFUN([gl_PTHREADLIB],
[
  AC_REQUIRE([gl_ANYTHREADLIB_EARLY])
  gl_PTHREADLIB_BODY
])

dnl ============================================================================
dnl Macros for the ISO C API

dnl gl_STDTHREADLIB
dnl ---------------
dnl Tests for the libraries needs for using the ISO C threads API.
dnl Sets the variable LIBSTDTHREAD to the linker options for use in a Makefile.
dnl Adds to CPPFLAGS the flag -D_REENTRANT or -D_THREAD_SAFE if needed for
dnl multithread-safe programs.
dnl Defines the C macro HAVE_THREADS_H if (at least parts of) the ISO C threads
dnl API is available.

dnl The guts of gl_STDTHREADLIB. Needs to be expanded only once.

AC_DEFUN([gl_STDTHREADLIB_BODY],
[
  AC_REQUIRE([gl_ANYTHREADLIB_EARLY])
  AC_REQUIRE([AC_CANONICAL_HOST])
  if test -z "$gl_stdthreadlib_body_done"; then
    AC_CHECK_HEADERS_ONCE([threads.h])

    case "$host_os" in
      mingw*)
        LIBSTDTHREAD=
        ;;
      *)
        gl_PTHREADLIB_BODY
        if test $ac_cv_header_threads_h = yes; then
          dnl glibc >= 2.29 has thrd_create in libpthread.
          dnl FreeBSD >= 10 has thrd_create in libstdthreads; this library depends
          dnl on libpthread (for the symbol 'pthread_mutexattr_gettype').
          dnl glibc >= 2.34, AIX >= 7.1, and Solaris >= 11.4 have thrd_create in
          dnl libc.
          AC_CHECK_FUNCS([thrd_create])
          if test $ac_cv_func_thrd_create = yes; then
            LIBSTDTHREAD=
          else
            AC_CHECK_LIB([stdthreads], [thrd_create], [
              LIBSTDTHREAD='-lstdthreads -lpthread'
            ], [
              dnl Guess that thrd_create is in libpthread.
              LIBSTDTHREAD="$LIBPMULTITHREAD"
            ])
          fi
        else
          dnl Libraries needed by thrd.c, mtx.c, cnd.c, tss.c.
          LIBSTDTHREAD="$LIBPMULTITHREAD $LIB_SCHED_YIELD"
        fi
        ;;
    esac
    AC_SUBST([LIBSTDTHREAD])

    AC_MSG_CHECKING([whether ISO C threads API is available])
    AC_MSG_RESULT([$ac_cv_header_threads_h])
    gl_stdthreadlib_body_done=done
  fi
])

AC_DEFUN([gl_STDTHREADLIB],
[
  AC_REQUIRE([gl_ANYTHREADLIB_EARLY])
  gl_STDTHREADLIB_BODY
])

dnl ============================================================================
dnl Macros for the Gnulib API

dnl gl_THREADLIB
dnl ------------
dnl Tests for a multithreading library to be used.
dnl If the configure.ac contains a definition of the gl_THREADLIB_DEFAULT_NO
dnl (it must be placed before the invocation of gl_THREADLIB_EARLY!), then the
dnl default is 'no', otherwise it is system dependent. In both cases, the user
dnl can change the choice through the options --enable-threads=choice or
dnl --disable-threads.
dnl Defines at most one of the macros USE_ISOC_THREADS, USE_POSIX_THREADS,
dnl USE_ISOC_AND_POSIX_THREADS, USE_WINDOWS_THREADS.
dnl The choice --enable-threads=isoc+posix is available only on platforms that
dnl have both the ISO C and the POSIX threads APIs. It has the effect of using
dnl the ISO C API for most things and the POSIX API only for creating and
dnl controlling threads (because there is no equivalent to pthread_atfork in
dnl the ISO C API).
dnl Sets the variables LIBTHREAD and LTLIBTHREAD to the linker options for use
dnl in a Makefile (LIBTHREAD for use without libtool, LTLIBTHREAD for use with
dnl libtool).
dnl Sets the variables LIBMULTITHREAD and LTLIBMULTITHREAD similarly, for
dnl programs that really need multithread functionality. The difference
dnl between LIBTHREAD and LIBMULTITHREAD is that on platforms supporting weak
dnl symbols, typically LIBTHREAD is empty whereas LIBMULTITHREAD is not.
dnl Adds to CPPFLAGS the flag -D_REENTRANT or -D_THREAD_SAFE if needed for
dnl multithread-safe programs.
dnl Since support for GNU pth was removed, $LTLIBTHREAD and $LIBTHREAD have the
dnl same value, and similarly $LTLIBMULTITHREAD and $LIBMULTITHREAD have the
dnl same value. Only system libraries are needed.

AC_DEFUN([gl_THREADLIB_EARLY],
[
  AC_REQUIRE([gl_THREADLIB_EARLY_BODY])
])

dnl The guts of gl_THREADLIB_EARLY. Needs to be expanded only once.

AC_DEFUN([gl_THREADLIB_EARLY_BODY],
[
  dnl Ordering constraints: This macro modifies CPPFLAGS in a way that
  dnl influences the result of the autoconf tests that test for *_unlocked
  dnl declarations, on AIX 5 at least. Therefore it must come early.
  AC_BEFORE([$0], [gl_FUNC_GLIBC_UNLOCKED_IO])dnl
  AC_BEFORE([$0], [gl_ARGP])dnl

  AC_REQUIRE([AC_CANONICAL_HOST])
  dnl _GNU_SOURCE is needed for pthread_rwlock_t on glibc systems.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])
  dnl Check for multithreading.
  m4_ifdef([gl_THREADLIB_DEFAULT_NO],
    [m4_divert_text([DEFAULTS], [gl_use_threads_default=no])],
    [m4_divert_text([DEFAULTS], [gl_use_threads_default=])])
  m4_divert_text([DEFAULTS], [gl_use_winpthreads_default=])
  AC_ARG_ENABLE([threads],
AS_HELP_STRING([--enable-threads={isoc|posix|isoc+posix|windows}], [specify multithreading API])m4_ifdef([gl_THREADLIB_DEFAULT_NO], [], [
AS_HELP_STRING([--disable-threads], [build without multithread safety])]),
    [gl_use_threads=$enableval],
    [if test -n "$gl_use_threads_default"; then
       gl_use_threads="$gl_use_threads_default"
     else
changequote(,)dnl
       case "$host_os" in
         dnl Disable multithreading by default on OSF/1, because it interferes
         dnl with fork()/exec(): When msgexec is linked with -lpthread, its
         dnl child process gets an endless segmentation fault inside execvp().
         osf*) gl_use_threads=no ;;
         dnl Disable multithreading by default on Cygwin 1.5.x, because it has
         dnl bugs that lead to endless loops or crashes. See
         dnl <https://cygwin.com/ml/cygwin/2009-08/msg00283.html>.
         cygwin*)
               case `uname -r` in
                 1.[0-5].*) gl_use_threads=no ;;
                 *)         gl_use_threads=yes ;;
               esac
               ;;
         dnl Obey gl_AVOID_WINPTHREAD on mingw.
         mingw*)
               case "$gl_use_winpthreads_default" in
                 yes) gl_use_threads=posix ;;
                 no)  gl_use_threads=windows ;;
                 *)   gl_use_threads=yes ;;
               esac
               ;;
         *)    gl_use_threads=yes ;;
       esac
changequote([,])dnl
     fi
    ])
  if test "$gl_use_threads" = yes \
     || test "$gl_use_threads" = isoc \
     || test "$gl_use_threads" = posix \
     || test "$gl_use_threads" = isoc+posix; then
    # For using <threads.h> or <pthread.h>:
    gl_ANYTHREADLIB_EARLY
  fi
])

dnl The guts of gl_THREADLIB. Needs to be expanded only once.

AC_DEFUN([gl_THREADLIB_BODY],
[
  AC_REQUIRE([gl_THREADLIB_EARLY_BODY])
  gl_threads_api=none
  LIBTHREAD=
  LTLIBTHREAD=
  LIBMULTITHREAD=
  LTLIBMULTITHREAD=
  if test "$gl_use_threads" != no; then
    dnl Check whether the compiler and linker support weak declarations.
    gl_WEAK_SYMBOLS
    if case "$gl_cv_have_weak" in *yes) true;; *) false;; esac; then
      dnl If we use weak symbols to implement pthread_in_use / pth_in_use /
      dnl thread_in_use, we also need to test whether the ISO C 11 thrd_create
      dnl facility is in use.
      AC_CHECK_HEADERS_ONCE([threads.h])
      :
    fi
    if test "$gl_use_threads" = isoc || test "$gl_use_threads" = isoc+posix; then
      AC_CHECK_HEADERS_ONCE([threads.h])
      gl_have_isoc_threads="$ac_cv_header_threads_h"
    fi
    if test "$gl_use_threads" = yes \
       || test "$gl_use_threads" = posix \
       || test "$gl_use_threads" = isoc+posix; then
      gl_PTHREADLIB_BODY
      LIBTHREAD=$LIBPTHREAD LTLIBTHREAD=$LIBPTHREAD
      LIBMULTITHREAD=$LIBPMULTITHREAD LTLIBMULTITHREAD=$LIBPMULTITHREAD
      if test $gl_pthread_api = yes; then
        if test "$gl_use_threads" = isoc+posix && test "$gl_have_isoc_threads" = yes; then
          gl_threads_api='isoc+posix'
          AC_DEFINE([USE_ISOC_AND_POSIX_THREADS], [1],
            [Define if the combination of the ISO C and POSIX multithreading APIs can be used.])
          LIBTHREAD= LTLIBTHREAD=
        else
          gl_threads_api=posix
          AC_DEFINE([USE_POSIX_THREADS], [1],
            [Define if the POSIX multithreading library can be used.])
          if test -z "$LIBMULTITHREAD" && test -z "$LTLIBMULTITHREAD"; then
            AC_DEFINE([USE_POSIX_THREADS_FROM_LIBC], [1],
              [Define if references to the POSIX multithreading library are satisfied by libc.])
          else
            if case "$gl_cv_have_weak" in *yes) true;; *) false;; esac; then
              AC_DEFINE([USE_POSIX_THREADS_WEAK], [1],
                [Define if references to the POSIX multithreading library should be made weak.])
              LIBTHREAD= LTLIBTHREAD=
            else
              case "$host_os" in
                freebsd* | dragonfly* | midnightbsd*)
                  if test "x$LIBTHREAD" != "x$LIBMULTITHREAD"; then
                    dnl If weak symbols can't tell whether pthread_create(), pthread_key_create()
                    dnl etc. will succeed, we need a runtime test.
                    AC_DEFINE([PTHREAD_IN_USE_DETECTION_HARD], [1],
                      [Define if the pthread_in_use() detection is hard.])
                  fi
                  ;;
              esac
            fi
          fi
        fi
      fi
    fi
    if test $gl_threads_api = none; then
      if test "$gl_use_threads" = isoc && test "$gl_have_isoc_threads" = yes; then
        gl_STDTHREADLIB_BODY
        LIBTHREAD=$LIBSTDTHREAD LTLIBTHREAD=$LIBSTDTHREAD
        LIBMULTITHREAD=$LIBSTDTHREAD LTLIBMULTITHREAD=$LIBSTDTHREAD
        gl_threads_api=isoc
        AC_DEFINE([USE_ISOC_THREADS], [1],
          [Define if the ISO C multithreading library can be used.])
      fi
    fi
    if test $gl_threads_api = none; then
      case "$gl_use_threads" in
        yes | windows | win32) # The 'win32' is for backward compatibility.
          if { case "$host_os" in
                 mingw*) true;;
                 *) false;;
               esac
             }; then
            gl_threads_api=windows
            AC_DEFINE([USE_WINDOWS_THREADS], [1],
              [Define if the native Windows multithreading API can be used.])
          fi
          ;;
      esac
    fi
  fi
  AC_MSG_CHECKING([for multithread API to use])
  AC_MSG_RESULT([$gl_threads_api])
  AC_SUBST([LIBTHREAD])
  AC_SUBST([LTLIBTHREAD])
  AC_SUBST([LIBMULTITHREAD])
  AC_SUBST([LTLIBMULTITHREAD])
])

AC_DEFUN([gl_THREADLIB],
[
  AC_REQUIRE([gl_THREADLIB_EARLY])
  AC_REQUIRE([gl_THREADLIB_BODY])
])


dnl gl_DISABLE_THREADS
dnl ------------------
dnl Sets the gl_THREADLIB default so that threads are not used by default.
dnl The user can still override it at installation time, by using the
dnl configure option '--enable-threads'.

AC_DEFUN([gl_DISABLE_THREADS], [
  m4_divert_text([INIT_PREPARE], [gl_use_threads_default=no])
])


dnl gl_AVOID_WINPTHREAD
dnl -------------------
dnl Sets the gl_THREADLIB default so that on mingw, a dependency to the
dnl libwinpthread DLL (mingw-w64 winpthreads library) is avoided.
dnl The user can still override it at installation time, by using the
dnl configure option '--enable-threads'.

AC_DEFUN([gl_AVOID_WINPTHREAD], [
  m4_divert_text([INIT_PREPARE], [gl_use_winpthreads_default=no])
])


dnl ============================================================================


dnl Survey of platforms:
dnl
dnl Platform           Available  Compiler    Supports   test-lock
dnl                    flavours   option      weak       result
dnl ---------------    ---------  ---------   --------   ---------
dnl Linux 2.4/glibc    posix      -lpthread       Y      OK
dnl
dnl Linux/glibc 2.34   posix                      Y      OK
dnl
dnl GNU Hurd/glibc     posix      -lpthread       Y      OK
dnl
dnl Ubuntu 14.04       posix      -pthread        Y      OK
dnl
dnl FreeBSD 5.3        posix      -lc_r           Y
dnl                    posix      -lkse ?         Y
dnl                    posix      -lpthread ?     Y
dnl                    posix      -lthr           Y
dnl
dnl FreeBSD 5.2        posix      -lc_r           Y
dnl                    posix      -lkse           Y
dnl                    posix      -lthr           Y
dnl
dnl FreeBSD 4.0,4.10   posix      -lc_r           Y      OK
dnl
dnl NetBSD 1.6         --
dnl
dnl OpenBSD 3.4        posix      -lpthread       Y      OK
dnl
dnl Mac OS X 10.[123]  posix      -lpthread       Y      OK
dnl
dnl Solaris 7,8,9      posix      -lpthread       Y      Sol 7,8: 0.0; Sol 9: OK
dnl
dnl HP-UX 11           posix      -lpthread       N (cc) OK
dnl                                               Y (gcc)
dnl
dnl IRIX 6.5           posix      -lpthread       Y      0.5
dnl
dnl AIX 4.3,5.1        posix      -lpthread       N      AIX 4: 0.5; AIX 5: OK
dnl
dnl OSF/1 4.0,5.1      posix      -pthread (cc)   N      OK
dnl                               -lpthread (gcc) Y
dnl
dnl Cygwin             posix      -lpthread       Y      OK
dnl
dnl Mingw              windows                    N      OK
dnl
dnl BeOS 5             --
dnl
dnl The test-lock result shows what happens if in test-lock.c EXPLICIT_YIELD is
dnl turned off:
dnl   OK if all three tests terminate OK,
dnl   0.5 if the first test terminates OK but the second one loops endlessly,
dnl   0.0 if the first test already loops endlessly.

# Configure a more-standard replacement for <time.h>.

# Copyright (C) 2000-2001, 2003-2007, 2009-2021 Free Software Foundation, Inc.

# serial 18

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Written by Paul Eggert and Jim Meyering.

AC_DEFUN_ONCE([gl_TIME_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_TIME_H_DEFAULTS])

  gl_NEXT_HEADERS([time.h])
  AC_REQUIRE([gl_CHECK_TYPE_STRUCT_TIMESPEC])

  AC_REQUIRE([AC_C_RESTRICT])

  AC_CACHE_CHECK([for TIME_UTC in <time.h>],
    [gl_cv_time_h_has_TIME_UTC],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <time.h>
          ]],
          [[static int x = TIME_UTC; x++;]])],
       [gl_cv_time_h_has_TIME_UTC=yes],
       [gl_cv_time_h_has_TIME_UTC=no])])
  if test $gl_cv_time_h_has_TIME_UTC = yes; then
    TIME_H_DEFINES_TIME_UTC=1
  else
    TIME_H_DEFINES_TIME_UTC=0
  fi
  AC_SUBST([TIME_H_DEFINES_TIME_UTC])
])

dnl Check whether 'struct timespec' is declared
dnl in time.h, sys/time.h, pthread.h, or unistd.h.

AC_DEFUN([gl_CHECK_TYPE_STRUCT_TIMESPEC],
[
  AC_CHECK_HEADERS_ONCE([sys/time.h])
  AC_CACHE_CHECK([for struct timespec in <time.h>],
    [gl_cv_sys_struct_timespec_in_time_h],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <time.h>
          ]],
          [[static struct timespec x; x.tv_sec = x.tv_nsec;]])],
       [gl_cv_sys_struct_timespec_in_time_h=yes],
       [gl_cv_sys_struct_timespec_in_time_h=no])])

  TIME_H_DEFINES_STRUCT_TIMESPEC=0
  SYS_TIME_H_DEFINES_STRUCT_TIMESPEC=0
  PTHREAD_H_DEFINES_STRUCT_TIMESPEC=0
  UNISTD_H_DEFINES_STRUCT_TIMESPEC=0
  if test $gl_cv_sys_struct_timespec_in_time_h = yes; then
    TIME_H_DEFINES_STRUCT_TIMESPEC=1
  else
    AC_CACHE_CHECK([for struct timespec in <sys/time.h>],
      [gl_cv_sys_struct_timespec_in_sys_time_h],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[#include <sys/time.h>
            ]],
            [[static struct timespec x; x.tv_sec = x.tv_nsec;]])],
         [gl_cv_sys_struct_timespec_in_sys_time_h=yes],
         [gl_cv_sys_struct_timespec_in_sys_time_h=no])])
    if test $gl_cv_sys_struct_timespec_in_sys_time_h = yes; then
      SYS_TIME_H_DEFINES_STRUCT_TIMESPEC=1
    else
      AC_CACHE_CHECK([for struct timespec in <pthread.h>],
        [gl_cv_sys_struct_timespec_in_pthread_h],
        [AC_COMPILE_IFELSE(
           [AC_LANG_PROGRAM(
              [[#include <pthread.h>
              ]],
              [[static struct timespec x; x.tv_sec = x.tv_nsec;]])],
           [gl_cv_sys_struct_timespec_in_pthread_h=yes],
           [gl_cv_sys_struct_timespec_in_pthread_h=no])])
      if test $gl_cv_sys_struct_timespec_in_pthread_h = yes; then
        PTHREAD_H_DEFINES_STRUCT_TIMESPEC=1
      else
        AC_CACHE_CHECK([for struct timespec in <unistd.h>],
          [gl_cv_sys_struct_timespec_in_unistd_h],
          [AC_COMPILE_IFELSE(
             [AC_LANG_PROGRAM(
                [[#include <unistd.h>
                ]],
                [[static struct timespec x; x.tv_sec = x.tv_nsec;]])],
             [gl_cv_sys_struct_timespec_in_unistd_h=yes],
             [gl_cv_sys_struct_timespec_in_unistd_h=no])])
        if test $gl_cv_sys_struct_timespec_in_unistd_h = yes; then
          UNISTD_H_DEFINES_STRUCT_TIMESPEC=1
        fi
      fi
    fi
  fi
  AC_SUBST([TIME_H_DEFINES_STRUCT_TIMESPEC])
  AC_SUBST([SYS_TIME_H_DEFINES_STRUCT_TIMESPEC])
  AC_SUBST([PTHREAD_H_DEFINES_STRUCT_TIMESPEC])
  AC_SUBST([UNISTD_H_DEFINES_STRUCT_TIMESPEC])
])

# gl_TIME_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_TIME_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_TIME_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_TIME_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_TIME_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CTIME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MKTIME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LOCALTIME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_NANOSLEEP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRFTIME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_STRPTIME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TIMEGM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TIMESPEC_GET])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TIME_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TIME_RZ])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TZSET])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_TZSET], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_TIME_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_TIME_H_DEFAULTS])
])

AC_DEFUN([gl_TIME_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_DECL_LOCALTIME_R=1;               AC_SUBST([HAVE_DECL_LOCALTIME_R])
  HAVE_NANOSLEEP=1;                      AC_SUBST([HAVE_NANOSLEEP])
  HAVE_STRPTIME=1;                       AC_SUBST([HAVE_STRPTIME])
  HAVE_TIMEGM=1;                         AC_SUBST([HAVE_TIMEGM])
  HAVE_TIMESPEC_GET=1;                   AC_SUBST([HAVE_TIMESPEC_GET])
  dnl Even GNU libc does not have timezone_t yet.
  HAVE_TIMEZONE_T=0;                     AC_SUBST([HAVE_TIMEZONE_T])
  dnl If another module says to replace or to not replace, do that.
  dnl Otherwise, replace only if someone compiles with -DGNULIB_PORTCHECK;
  dnl this lets maintainers check for portability.
  REPLACE_CTIME=GNULIB_PORTCHECK;        AC_SUBST([REPLACE_CTIME])
  REPLACE_LOCALTIME_R=GNULIB_PORTCHECK;  AC_SUBST([REPLACE_LOCALTIME_R])
  REPLACE_MKTIME=GNULIB_PORTCHECK;       AC_SUBST([REPLACE_MKTIME])
  REPLACE_NANOSLEEP=GNULIB_PORTCHECK;    AC_SUBST([REPLACE_NANOSLEEP])
  REPLACE_STRFTIME=GNULIB_PORTCHECK;     AC_SUBST([REPLACE_STRFTIME])
  REPLACE_TIMEGM=GNULIB_PORTCHECK;       AC_SUBST([REPLACE_TIMEGM])
  REPLACE_TZSET=GNULIB_PORTCHECK;        AC_SUBST([REPLACE_TZSET])

  dnl Hack so that the time module doesn't depend on the sys_time module.
  dnl First, default GNULIB_GETTIMEOFDAY to 0 if sys_time is absent.
  : ${GNULIB_GETTIMEOFDAY=0};            AC_SUBST([GNULIB_GETTIMEOFDAY])
  dnl Second, it's OK to not use GNULIB_PORTCHECK for REPLACE_GMTIME
  dnl and REPLACE_LOCALTIME, as portability to Solaris 2.6 and earlier
  dnl is no longer a big deal.
  REPLACE_GMTIME=0;                      AC_SUBST([REPLACE_GMTIME])
  REPLACE_LOCALTIME=0;                   AC_SUBST([REPLACE_LOCALTIME])
])

#serial 15

# Copyright (C) 2000-2001, 2003-2007, 2009-2021 Free Software Foundation, Inc.

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

dnl From Jim Meyering

AC_DEFUN([gl_TIMESPEC], [:])

# unistd_h.m4 serial 89
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Simon Josefsson, Bruno Haible.

AC_DEFUN_ONCE([gl_UNISTD_H],
[
  dnl Ensure to expand the default settings once only, before all statements
  dnl that occur in other macros.
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])

  gl_CHECK_NEXT_HEADERS([unistd.h])
  if test $ac_cv_header_unistd_h = yes; then
    HAVE_UNISTD_H=1
  else
    HAVE_UNISTD_H=0
  fi
  AC_SUBST([HAVE_UNISTD_H])

  dnl Ensure the type pid_t gets defined.
  AC_REQUIRE([AC_TYPE_PID_T])

  dnl Determine WINDOWS_64_BIT_OFF_T.
  AC_REQUIRE([gl_TYPE_OFF_T])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
#if HAVE_UNISTD_H
# include <unistd.h>
#endif
/* Some systems declare various items in the wrong headers.  */
#if !(defined __GLIBC__ && !defined __UCLIBC__)
# include <fcntl.h>
# include <stdio.h>
# include <stdlib.h>
# if defined _WIN32 && ! defined __CYGWIN__
#  include <io.h>
# endif
#endif
    ]], [access chdir chown copy_file_range dup dup2 dup3 environ euidaccess
    execl execle execlp execv execve execvp execvpe
    faccessat fchdir
    fchownat fdatasync fsync ftruncate getcwd getdomainname getdtablesize
    getentropy getgroups gethostname getlogin getlogin_r getpagesize getpass
    getusershell setusershell endusershell
    group_member isatty lchown link linkat lseek pipe pipe2 pread pwrite
    readlink readlinkat rmdir sethostname sleep symlink symlinkat
    truncate ttyname_r unlink unlinkat usleep])

  AC_REQUIRE([AC_C_RESTRICT])

  AC_CHECK_DECLS_ONCE([execvpe])
  if test $ac_cv_have_decl_execvpe = no; then
    HAVE_DECL_EXECVPE=0
  fi
])

# gl_UNISTD_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_UNISTD_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_UNISTD_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_UNISTD_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_UNISTD_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ACCESS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CHDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CHOWN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_CLOSE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_COPY_FILE_RANGE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DUP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DUP2])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_DUP3])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ENVIRON])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EUIDACCESS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECLE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECLP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECV])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECVE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECVP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_EXECVPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FACCESSAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FCHDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FCHOWNAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FDATASYNC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FSYNC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_FTRUNCATE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETCWD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETDOMAINNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETDTABLESIZE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETENTROPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETGROUPS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETHOSTNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETLOGIN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETLOGIN_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETOPT_POSIX])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETPAGESIZE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETPASS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GETUSERSHELL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_GROUP_MEMBER])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISATTY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LCHOWN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LINK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LINKAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_LSEEK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PIPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PIPE2])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PREAD])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_PWRITE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_READ])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_READLINK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_READLINKAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_RMDIR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SETHOSTNAME])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SLEEP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SYMLINK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_SYMLINKAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TRUNCATE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TTYNAME_R])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNISTD_H_GETOPT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNISTD_H_NONBLOCKING])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNISTD_H_SIGPIPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNLINK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNLINKAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_USLEEP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WRITE])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_ACCESS], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_CHDIR], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_CLOSE], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_DUP], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_DUP2], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECL], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECLE], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECLP], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECV], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECVE], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECVP], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_EXECVPE], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_GETCWD], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_GETPID], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_ISATTY], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_LSEEK], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_READ], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_RMDIR], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_SWAB], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_UNLINK], [1])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_WRITE], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_UNISTD_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_UNISTD_H_DEFAULTS])
])

AC_DEFUN([gl_UNISTD_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_CHOWN=1;           AC_SUBST([HAVE_CHOWN])
  HAVE_COPY_FILE_RANGE=1; AC_SUBST([HAVE_COPY_FILE_RANGE])
  HAVE_DUP3=1;            AC_SUBST([HAVE_DUP3])
  HAVE_EUIDACCESS=1;      AC_SUBST([HAVE_EUIDACCESS])
  HAVE_EXECVPE=1;         AC_SUBST([HAVE_EXECVPE])
  HAVE_FACCESSAT=1;       AC_SUBST([HAVE_FACCESSAT])
  HAVE_FCHDIR=1;          AC_SUBST([HAVE_FCHDIR])
  HAVE_FCHOWNAT=1;        AC_SUBST([HAVE_FCHOWNAT])
  HAVE_FDATASYNC=1;       AC_SUBST([HAVE_FDATASYNC])
  HAVE_FSYNC=1;           AC_SUBST([HAVE_FSYNC])
  HAVE_FTRUNCATE=1;       AC_SUBST([HAVE_FTRUNCATE])
  HAVE_GETDTABLESIZE=1;   AC_SUBST([HAVE_GETDTABLESIZE])
  HAVE_GETENTROPY=1;      AC_SUBST([HAVE_GETENTROPY])
  HAVE_GETGROUPS=1;       AC_SUBST([HAVE_GETGROUPS])
  HAVE_GETHOSTNAME=1;     AC_SUBST([HAVE_GETHOSTNAME])
  HAVE_GETLOGIN=1;        AC_SUBST([HAVE_GETLOGIN])
  HAVE_GETPAGESIZE=1;     AC_SUBST([HAVE_GETPAGESIZE])
  HAVE_GETPASS=1;         AC_SUBST([HAVE_GETPASS])
  HAVE_GROUP_MEMBER=1;    AC_SUBST([HAVE_GROUP_MEMBER])
  HAVE_LCHOWN=1;          AC_SUBST([HAVE_LCHOWN])
  HAVE_LINK=1;            AC_SUBST([HAVE_LINK])
  HAVE_LINKAT=1;          AC_SUBST([HAVE_LINKAT])
  HAVE_PIPE=1;            AC_SUBST([HAVE_PIPE])
  HAVE_PIPE2=1;           AC_SUBST([HAVE_PIPE2])
  HAVE_PREAD=1;           AC_SUBST([HAVE_PREAD])
  HAVE_PWRITE=1;          AC_SUBST([HAVE_PWRITE])
  HAVE_READLINK=1;        AC_SUBST([HAVE_READLINK])
  HAVE_READLINKAT=1;      AC_SUBST([HAVE_READLINKAT])
  HAVE_SETHOSTNAME=1;     AC_SUBST([HAVE_SETHOSTNAME])
  HAVE_SLEEP=1;           AC_SUBST([HAVE_SLEEP])
  HAVE_SYMLINK=1;         AC_SUBST([HAVE_SYMLINK])
  HAVE_SYMLINKAT=1;       AC_SUBST([HAVE_SYMLINKAT])
  HAVE_UNLINKAT=1;        AC_SUBST([HAVE_UNLINKAT])
  HAVE_USLEEP=1;          AC_SUBST([HAVE_USLEEP])
  HAVE_DECL_ENVIRON=1;    AC_SUBST([HAVE_DECL_ENVIRON])
  HAVE_DECL_EXECVPE=1;    AC_SUBST([HAVE_DECL_EXECVPE])
  HAVE_DECL_FCHDIR=1;     AC_SUBST([HAVE_DECL_FCHDIR])
  HAVE_DECL_FDATASYNC=1;  AC_SUBST([HAVE_DECL_FDATASYNC])
  HAVE_DECL_GETDOMAINNAME=1; AC_SUBST([HAVE_DECL_GETDOMAINNAME])
  HAVE_DECL_GETLOGIN=1;   AC_SUBST([HAVE_DECL_GETLOGIN])
  HAVE_DECL_GETLOGIN_R=1; AC_SUBST([HAVE_DECL_GETLOGIN_R])
  HAVE_DECL_GETPAGESIZE=1; AC_SUBST([HAVE_DECL_GETPAGESIZE])
  HAVE_DECL_GETUSERSHELL=1; AC_SUBST([HAVE_DECL_GETUSERSHELL])
  HAVE_DECL_SETHOSTNAME=1; AC_SUBST([HAVE_DECL_SETHOSTNAME])
  HAVE_DECL_TRUNCATE=1;   AC_SUBST([HAVE_DECL_TRUNCATE])
  HAVE_DECL_TTYNAME_R=1;  AC_SUBST([HAVE_DECL_TTYNAME_R])
  HAVE_OS_H=0;            AC_SUBST([HAVE_OS_H])
  HAVE_SYS_PARAM_H=0;     AC_SUBST([HAVE_SYS_PARAM_H])
  REPLACE_ACCESS=0;       AC_SUBST([REPLACE_ACCESS])
  REPLACE_CHOWN=0;        AC_SUBST([REPLACE_CHOWN])
  REPLACE_CLOSE=0;        AC_SUBST([REPLACE_CLOSE])
  REPLACE_DUP=0;          AC_SUBST([REPLACE_DUP])
  REPLACE_DUP2=0;         AC_SUBST([REPLACE_DUP2])
  REPLACE_EXECL=0;        AC_SUBST([REPLACE_EXECL])
  REPLACE_EXECLE=0;       AC_SUBST([REPLACE_EXECLE])
  REPLACE_EXECLP=0;       AC_SUBST([REPLACE_EXECLP])
  REPLACE_EXECV=0;        AC_SUBST([REPLACE_EXECV])
  REPLACE_EXECVE=0;       AC_SUBST([REPLACE_EXECVE])
  REPLACE_EXECVP=0;       AC_SUBST([REPLACE_EXECVP])
  REPLACE_EXECVPE=0;      AC_SUBST([REPLACE_EXECVPE])
  REPLACE_FACCESSAT=0;    AC_SUBST([REPLACE_FACCESSAT])
  REPLACE_FCHOWNAT=0;     AC_SUBST([REPLACE_FCHOWNAT])
  REPLACE_FTRUNCATE=0;    AC_SUBST([REPLACE_FTRUNCATE])
  REPLACE_GETCWD=0;       AC_SUBST([REPLACE_GETCWD])
  REPLACE_GETDOMAINNAME=0; AC_SUBST([REPLACE_GETDOMAINNAME])
  REPLACE_GETDTABLESIZE=0; AC_SUBST([REPLACE_GETDTABLESIZE])
  REPLACE_GETLOGIN_R=0;   AC_SUBST([REPLACE_GETLOGIN_R])
  REPLACE_GETGROUPS=0;    AC_SUBST([REPLACE_GETGROUPS])
  REPLACE_GETPAGESIZE=0;  AC_SUBST([REPLACE_GETPAGESIZE])
  REPLACE_GETPASS=0;      AC_SUBST([REPLACE_GETPASS])
  REPLACE_ISATTY=0;       AC_SUBST([REPLACE_ISATTY])
  REPLACE_LCHOWN=0;       AC_SUBST([REPLACE_LCHOWN])
  REPLACE_LINK=0;         AC_SUBST([REPLACE_LINK])
  REPLACE_LINKAT=0;       AC_SUBST([REPLACE_LINKAT])
  REPLACE_LSEEK=0;        AC_SUBST([REPLACE_LSEEK])
  REPLACE_PREAD=0;        AC_SUBST([REPLACE_PREAD])
  REPLACE_PWRITE=0;       AC_SUBST([REPLACE_PWRITE])
  REPLACE_READ=0;         AC_SUBST([REPLACE_READ])
  REPLACE_READLINK=0;     AC_SUBST([REPLACE_READLINK])
  REPLACE_READLINKAT=0;   AC_SUBST([REPLACE_READLINKAT])
  REPLACE_RMDIR=0;        AC_SUBST([REPLACE_RMDIR])
  REPLACE_SLEEP=0;        AC_SUBST([REPLACE_SLEEP])
  REPLACE_SYMLINK=0;      AC_SUBST([REPLACE_SYMLINK])
  REPLACE_SYMLINKAT=0;    AC_SUBST([REPLACE_SYMLINKAT])
  REPLACE_TRUNCATE=0;     AC_SUBST([REPLACE_TRUNCATE])
  REPLACE_TTYNAME_R=0;    AC_SUBST([REPLACE_TTYNAME_R])
  REPLACE_UNLINK=0;       AC_SUBST([REPLACE_UNLINK])
  REPLACE_UNLINKAT=0;     AC_SUBST([REPLACE_UNLINKAT])
  REPLACE_USLEEP=0;       AC_SUBST([REPLACE_USLEEP])
  REPLACE_WRITE=0;        AC_SUBST([REPLACE_WRITE])
  UNISTD_H_HAVE_SYS_RANDOM_H=0; AC_SUBST([UNISTD_H_HAVE_SYS_RANDOM_H])
  UNISTD_H_HAVE_WINSOCK2_H=0; AC_SUBST([UNISTD_H_HAVE_WINSOCK2_H])
  UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS=0;
                           AC_SUBST([UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS])
])

# utime.m4 serial 4
dnl Copyright (C) 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_UTIME],
[
  AC_REQUIRE([gl_UTIME_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS_ONCE([lstat])
  case "$host_os" in
    mingw*)
      dnl On this platform, the original utime() or _utime() produces
      dnl timestamps that are affected by the time zone.
      dnl Use the function name 'rpl_utime' always, in order to avoid a
      dnl possible conflict with the function name 'utime' from oldnames.lib
      dnl (MSVC) or liboldnames.a (mingw).
      REPLACE_UTIME=1
      ;;
    *)
      AC_CHECK_FUNCS([utime])
      if test $ac_cv_func_utime = no; then
        HAVE_UTIME=0
      else
        dnl On macOS 10.13, utime("link-to-file/", NULL) mistakenly succeeds.
        AC_CACHE_CHECK([whether utime handles trailing slashes on files],
          [gl_cv_func_utime_file_slash],
          [touch conftest.tmp
           # Assume that if we have lstat, we can also check symlinks.
           if test $ac_cv_func_lstat = yes; then
             ln -s conftest.tmp conftest.lnk
           fi
           AC_RUN_IFELSE(
             [AC_LANG_PROGRAM(
               [[#include <stddef.h>
                 #include <utime.h>
               ]],
               [[int result = 0;
                 if (!utime ("conftest.tmp/", NULL))
                   result |= 1;
                 #if HAVE_LSTAT
                 if (!utime ("conftest.lnk/", NULL))
                   result |= 2;
                 #endif
                 return result;
               ]])],
             [gl_cv_func_utime_file_slash=yes],
             [gl_cv_func_utime_file_slash=no],
             [case "$host_os" in
                                 # Guess yes on Linux systems.
                linux-* | linux) gl_cv_func_utime_file_slash="guessing yes" ;;
                                 # Guess yes on glibc systems.
                *-gnu* | gnu*)   gl_cv_func_utime_file_slash="guessing yes" ;;
                                 # Guess no on macOS.
                darwin*)         gl_cv_func_utime_file_slash="guessing no" ;;
                                 # If we don't know, obey --enable-cross-guesses.
                *)               gl_cv_func_utime_file_slash="$gl_cross_guess_normal" ;;
              esac
             ])
           rm -f conftest.tmp conftest.lnk
          ])
        case $gl_cv_func_stat_file_slash in
          *no)
            REPLACE_UTIME=1
            AC_DEFINE([REPLACE_FUNC_UTIME_FILE], [1],
              [Define to 1 if utime needs help when passed a file name with a trailing slash])
            ;;
        esac
      fi
      ;;
  esac
])

# Prerequisites of lib/utime.c.
AC_DEFUN([gl_PREREQ_UTIME], [:])

# utime_h.m4 serial 8
dnl Copyright (C) 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

AC_DEFUN_ONCE([gl_UTIME_H],
[
  AC_REQUIRE([gl_UTIME_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST])
  m4_ifdef([gl_ANSI_CXX], [AC_REQUIRE([gl_ANSI_CXX])])
  AC_CHECK_HEADERS_ONCE([utime.h])
  gl_CHECK_NEXT_HEADERS([utime.h])

  if test $ac_cv_header_utime_h = yes; then
    HAVE_UTIME_H=1
  else
    HAVE_UTIME_H=0
  fi
  AC_SUBST([HAVE_UTIME_H])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[#include <utime.h>
    ]],
    [utime])
])

# gl_UTIME_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_UTIME_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_UTIME_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_UTIME_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_UTIME_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UTIME])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_UTIME], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_UTIME_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_UTIME_H_DEFAULTS])
])

AC_DEFUN([gl_UTIME_H_DEFAULTS],
[
  dnl Assume POSIX behavior unless another module says otherwise.
  HAVE_UTIME=1;              AC_SUBST([HAVE_UTIME])
  REPLACE_UTIME=0;           AC_SUBST([REPLACE_UTIME])
])

dnl Copyright (C) 2003-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl serial 11

AC_DEFUN([gl_UTIMENS],
[
  dnl Prerequisites of lib/utimens.c.
  AC_REQUIRE([gl_FUNC_UTIMES])
  AC_REQUIRE([gl_CHECK_TYPE_STRUCT_TIMESPEC])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CHECK_FUNCS_ONCE([futimes futimesat futimens utimensat lutimes])

  if test $ac_cv_func_futimens = no && test $ac_cv_func_futimesat = yes; then
    dnl FreeBSD 8.0-rc2 mishandles futimesat(fd,NULL,time).  It is not
    dnl standardized, but Solaris implemented it first and uses it as
    dnl its only means to set fd time.
    AC_CACHE_CHECK([whether futimesat handles NULL file],
      [gl_cv_func_futimesat_works],
      [touch conftest.file
       AC_RUN_IFELSE([AC_LANG_PROGRAM([[
#include <stddef.h>
#include <sys/times.h>
#include <fcntl.h>
]GL_MDA_DEFINES],
        [[int fd = open ("conftest.file", O_RDWR);
          if (fd < 0) return 1;
          if (futimesat (fd, NULL, NULL)) return 2;
        ]])],
        [gl_cv_func_futimesat_works=yes],
        [gl_cv_func_futimesat_works=no],
        [case "$host_os" in
                            # Guess yes on Linux systems.
           linux-* | linux) gl_cv_func_futimesat_works="guessing yes" ;;
                            # Guess yes on glibc systems.
           *-gnu*)          gl_cv_func_futimesat_works="guessing yes" ;;
                            # If we don't know, obey --enable-cross-guesses.
           *)               gl_cv_func_futimesat_works="$gl_cross_guess_normal" ;;
         esac
        ])
      rm -f conftest.file])
    case "$gl_cv_func_futimesat_works" in
      *yes) ;;
      *)
        AC_DEFINE([FUTIMESAT_NULL_BUG], [1],
          [Define to 1 if futimesat mishandles a NULL file name.])
        ;;
    esac
  fi
])

# Detect some bugs in glibc's implementation of utimes.
# serial 8

dnl Copyright (C) 2003-2005, 2009-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# See if we need to work around bugs in glibc's implementation of
# utimes from 2003-07-12 to 2003-09-17.
# First, there was a bug that would make utimes set mtime
# and atime to zero (1970-01-01) unconditionally.
# Then, there was code to round rather than truncate.
# Then, there was an implementation (sparc64, Linux-2.4.28, glibc-2.3.3)
# that didn't honor the NULL-means-set-to-current-time semantics.
# Finally, there was also a version of utimes that failed on read-only
# files, while utime worked fine (linux-2.2.20, glibc-2.2.5).
#
# From Jim Meyering, with suggestions from Paul Eggert.

AC_DEFUN([gl_FUNC_UTIMES],
[
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
  AC_CACHE_CHECK([whether the utimes function works],
                 [gl_cv_func_working_utimes],
    [AC_RUN_IFELSE([AC_LANG_SOURCE([[
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <utime.h>
#include <errno.h>
]GL_MDA_DEFINES[

static int
inorder (time_t a, time_t b, time_t c)
{
  return a <= b && b <= c;
}

int
main ()
{
  int result = 0;
  char const *file = "conftest.utimes";
  /* On OS/2, file timestamps must be on or after 1980 in local time,
     with an even number of seconds.  */
  static struct timeval timeval[2] = {{315620000 + 10, 10},
                                      {315620000 + 1000000, 999998}};

  /* Test whether utimes() essentially works.  */
  {
    struct stat sbuf;
    FILE *f = fopen (file, "w");
    if (f == NULL)
      result |= 1;
    else if (fclose (f) != 0)
      result |= 1;
    else if (utimes (file, timeval) != 0)
      result |= 2;
    else if (lstat (file, &sbuf) != 0)
      result |= 1;
    else if (!(sbuf.st_atime == timeval[0].tv_sec
               && sbuf.st_mtime == timeval[1].tv_sec))
      result |= 4;
    if (unlink (file) != 0)
      result |= 1;
  }

  /* Test whether utimes() with a NULL argument sets the file's timestamp
     to the current time.  Use 'fstat' as well as 'time' to
     determine the "current" time, to accommodate NFS file systems
     if there is a time skew between the host and the NFS server.  */
  {
    int fd = open (file, O_WRONLY|O_CREAT, 0644);
    if (fd < 0)
      result |= 1;
    else
      {
        time_t t0, t2;
        struct stat st0, st1, st2;
        if (time (&t0) == (time_t) -1)
          result |= 1;
        else if (fstat (fd, &st0) != 0)
          result |= 1;
        else if (utimes (file, timeval) != 0
                 && (errno != EACCES
                     /* OS/2 kLIBC utimes fails on opened files.  */
                     || close (fd) != 0
                     || utimes (file, timeval) != 0
                     || (fd = open (file, O_WRONLY)) < 0))
          result |= 2;
        else if (utimes (file, NULL) != 0
                 && (errno != EACCES
                     /* OS/2 kLIBC utimes fails on opened files.  */
                     || close (fd) != 0
                     || utimes (file, NULL) != 0
                     || (fd = open (file, O_WRONLY)) < 0))
          result |= 8;
        else if (fstat (fd, &st1) != 0)
          result |= 1;
        else if (write (fd, "\n", 1) != 1)
          result |= 1;
        else if (fstat (fd, &st2) != 0)
          result |= 1;
        else if (time (&t2) == (time_t) -1)
          result |= 1;
        else
          {
            int m_ok_POSIX = inorder (t0, st1.st_mtime, t2);
            int m_ok_NFS = inorder (st0.st_mtime, st1.st_mtime, st2.st_mtime);
            if (! (st1.st_atime == st1.st_mtime))
              result |= 16;
            if (! (m_ok_POSIX || m_ok_NFS))
              result |= 32;
          }
        if (close (fd) != 0)
          result |= 1;
      }
    if (unlink (file) != 0)
      result |= 1;
  }

  /* Test whether utimes() with a NULL argument works on read-only files.  */
  {
    int fd = open (file, O_WRONLY|O_CREAT, 0444);
    if (fd < 0)
      result |= 1;
    else if (close (fd) != 0)
      result |= 1;
    else if (utimes (file, NULL) != 0)
      result |= 64;
    if (unlink (file) != 0)
      result |= 1;
  }

  return result;
}
  ]])],
       [gl_cv_func_working_utimes=yes],
       [gl_cv_func_working_utimes=no],
       [case "$host_os" in
                   # Guess yes on musl systems.
          *-musl*) gl_cv_func_working_utimes="guessing yes" ;;
                   # Guess no on native Windows.
          mingw*)  gl_cv_func_working_utimes="guessing no" ;;
          *)       gl_cv_func_working_utimes="$gl_cross_guess_normal" ;;
        esac
       ])
    ])

  case "$gl_cv_func_working_utimes" in
    *yes)
      AC_DEFINE([HAVE_WORKING_UTIMES], [1], [Define if utimes works properly.])
      ;;
  esac
])

# vasnprintf.m4 serial 38
dnl Copyright (C) 2002-2004, 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_VASNPRINTF],
[
  AC_CHECK_FUNCS_ONCE([vasnprintf])
  if test $ac_cv_func_vasnprintf = no; then
    gl_REPLACE_VASNPRINTF
  fi
])

AC_DEFUN([gl_REPLACE_VASNPRINTF],
[
  AC_CHECK_FUNCS_ONCE([vasnprintf])
  AC_LIBOBJ([vasnprintf])
  AC_LIBOBJ([printf-args])
  AC_LIBOBJ([printf-parse])
  AC_LIBOBJ([asnprintf])
  if test $ac_cv_func_vasnprintf = yes; then
    AC_DEFINE([REPLACE_VASNPRINTF], [1],
      [Define if vasnprintf exists but is overridden by gnulib.])
  fi
  gl_PREREQ_PRINTF_ARGS
  gl_PREREQ_PRINTF_PARSE
  gl_PREREQ_VASNPRINTF
  gl_PREREQ_ASNPRINTF
])

# Prerequisites of lib/printf-args.h, lib/printf-args.c.
AC_DEFUN([gl_PREREQ_PRINTF_ARGS],
[
  AC_REQUIRE([gt_TYPE_WCHAR_T])
  AC_REQUIRE([gt_TYPE_WINT_T])
])

# Prerequisites of lib/printf-parse.h, lib/printf-parse.c.
AC_DEFUN([gl_PREREQ_PRINTF_PARSE],
[
  AC_REQUIRE([gl_FEATURES_H])
  AC_REQUIRE([gt_TYPE_WCHAR_T])
  AC_REQUIRE([gt_TYPE_WINT_T])
  AC_REQUIRE([AC_TYPE_SIZE_T])
  AC_CHECK_TYPE([ptrdiff_t], ,
    [AC_DEFINE([ptrdiff_t], [long],
       [Define as the type of the result of subtracting two pointers, if the system doesn't define it.])
    ])
  AC_REQUIRE([gt_AC_TYPE_INTMAX_T])
])

# Prerequisites of lib/vasnprintf.c.
AC_DEFUN_ONCE([gl_PREREQ_VASNPRINTF],
[
  AC_REQUIRE([AC_FUNC_ALLOCA])
  AC_REQUIRE([gt_TYPE_WCHAR_T])
  AC_REQUIRE([gt_TYPE_WINT_T])
  AC_CHECK_FUNCS([snprintf strnlen wcslen wcsnlen mbrtowc wcrtomb])
  dnl Use the _snprintf function only if it is declared (because on NetBSD it
  dnl is defined as a weak alias of snprintf; we prefer to use the latter).
  AC_CHECK_DECLS([_snprintf], , , [[#include <stdio.h>]])
  dnl Knowing DBL_EXPBIT0_WORD and DBL_EXPBIT0_BIT enables an optimization
  dnl in the code for NEED_PRINTF_LONG_DOUBLE || NEED_PRINTF_DOUBLE.
  AC_REQUIRE([gl_DOUBLE_EXPONENT_LOCATION])
  dnl We can avoid a lot of code by assuming that snprintf's return value
  dnl conforms to ISO C99. So check that.
  AC_REQUIRE([gl_SNPRINTF_RETVAL_C99])
  case "$gl_cv_func_snprintf_retval_c99" in
    *yes)
      AC_DEFINE([HAVE_SNPRINTF_RETVAL_C99], [1],
        [Define if the return value of the snprintf function is the number of
         of bytes (excluding the terminating NUL) that would have been produced
         if the buffer had been large enough.])
      ;;
  esac
  dnl Additionally, the use of %n can be eliminated by assuming that snprintf
  dnl always produces NUL-terminated strings (no truncation).
  AC_REQUIRE([gl_SNPRINTF_TRUNCATION_C99])
  case "$gl_cv_func_snprintf_truncation_c99" in
    *yes)
      AC_DEFINE([HAVE_SNPRINTF_TRUNCATION_C99], [1],
        [Define if the string produced by the snprintf function is always NUL
         terminated.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting 'long double'
# arguments.
AC_DEFUN_ONCE([gl_PREREQ_VASNPRINTF_LONG_DOUBLE],
[
  AC_REQUIRE([gl_PRINTF_LONG_DOUBLE])
  case "$gl_cv_func_printf_long_double" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_LONG_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         'long double' arguments.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting infinite 'double'
# arguments.
AC_DEFUN([gl_PREREQ_VASNPRINTF_INFINITE_DOUBLE],
[
  AC_REQUIRE([gl_PRINTF_INFINITE])
  case "$gl_cv_func_printf_infinite" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_INFINITE_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         infinite 'double' arguments.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting infinite 'long double'
# arguments.
AC_DEFUN([gl_PREREQ_VASNPRINTF_INFINITE_LONG_DOUBLE],
[
  AC_REQUIRE([gl_PRINTF_INFINITE_LONG_DOUBLE])
  dnl There is no need to set NEED_PRINTF_INFINITE_LONG_DOUBLE if
  dnl NEED_PRINTF_LONG_DOUBLE is already set.
  AC_REQUIRE([gl_PREREQ_VASNPRINTF_LONG_DOUBLE])
  case "$gl_cv_func_printf_long_double" in
    *yes)
      case "$gl_cv_func_printf_infinite_long_double" in
        *yes)
          ;;
        *)
          AC_DEFINE([NEED_PRINTF_INFINITE_LONG_DOUBLE], [1],
            [Define if the vasnprintf implementation needs special code for
             infinite 'long double' arguments.])
          ;;
      esac
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the 'a' directive.
AC_DEFUN([gl_PREREQ_VASNPRINTF_DIRECTIVE_A],
[
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_A])
  case "$gl_cv_func_printf_directive_a" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_DIRECTIVE_A], [1],
        [Define if the vasnprintf implementation needs special code for
         the 'a' and 'A' directives.])
      AC_CHECK_FUNCS([nl_langinfo])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the 'F' directive.
AC_DEFUN([gl_PREREQ_VASNPRINTF_DIRECTIVE_F],
[
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_F])
  case "$gl_cv_func_printf_directive_f" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_DIRECTIVE_F], [1],
        [Define if the vasnprintf implementation needs special code for
         the 'F' directive.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the 'ls' directive.
AC_DEFUN([gl_PREREQ_VASNPRINTF_DIRECTIVE_LS],
[
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_LS])
  case "$gl_cv_func_printf_directive_ls" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_DIRECTIVE_LS], [1],
        [Define if the vasnprintf implementation needs special code for
         the 'ls' directive.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the ' flag.
AC_DEFUN([gl_PREREQ_VASNPRINTF_FLAG_GROUPING],
[
  AC_REQUIRE([gl_PRINTF_FLAG_GROUPING])
  case "$gl_cv_func_printf_flag_grouping" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_FLAG_GROUPING], [1],
        [Define if the vasnprintf implementation needs special code for the
         ' flag.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the '-' flag.
AC_DEFUN([gl_PREREQ_VASNPRINTF_FLAG_LEFTADJUST],
[
  AC_REQUIRE([gl_PRINTF_FLAG_LEFTADJUST])
  case "$gl_cv_func_printf_flag_leftadjust" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_FLAG_LEFTADJUST], [1],
        [Define if the vasnprintf implementation needs special code for the
         '-' flag.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting the 0 flag.
AC_DEFUN([gl_PREREQ_VASNPRINTF_FLAG_ZERO],
[
  AC_REQUIRE([gl_PRINTF_FLAG_ZERO])
  case "$gl_cv_func_printf_flag_zero" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_FLAG_ZERO], [1],
        [Define if the vasnprintf implementation needs special code for the
         0 flag.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for supporting large precisions.
AC_DEFUN([gl_PREREQ_VASNPRINTF_PRECISION],
[
  AC_REQUIRE([gl_PRINTF_PRECISION])
  case "$gl_cv_func_printf_precision" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_UNBOUNDED_PRECISION], [1],
        [Define if the vasnprintf implementation needs special code for
         supporting large precisions without arbitrary bounds.])
      AC_DEFINE([NEED_PRINTF_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         'double' arguments.])
      AC_DEFINE([NEED_PRINTF_LONG_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         'long double' arguments.])
      ;;
  esac
])

# Extra prerequisites of lib/vasnprintf.c for surviving out-of-memory
# conditions.
AC_DEFUN([gl_PREREQ_VASNPRINTF_ENOMEM],
[
  AC_REQUIRE([gl_PRINTF_ENOMEM])
  case "$gl_cv_func_printf_enomem" in
    *yes)
      ;;
    *)
      AC_DEFINE([NEED_PRINTF_ENOMEM], [1],
        [Define if the vasnprintf implementation needs special code for
         surviving out-of-memory conditions.])
      AC_DEFINE([NEED_PRINTF_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         'double' arguments.])
      AC_DEFINE([NEED_PRINTF_LONG_DOUBLE], [1],
        [Define if the vasnprintf implementation needs special code for
         'long double' arguments.])
      ;;
  esac
])

# Prerequisites of lib/vasnprintf.c including all extras for POSIX compliance.
AC_DEFUN([gl_PREREQ_VASNPRINTF_WITH_EXTRAS],
[
  AC_REQUIRE([gl_PREREQ_VASNPRINTF])
  gl_PREREQ_VASNPRINTF_LONG_DOUBLE
  gl_PREREQ_VASNPRINTF_INFINITE_DOUBLE
  gl_PREREQ_VASNPRINTF_INFINITE_LONG_DOUBLE
  gl_PREREQ_VASNPRINTF_DIRECTIVE_A
  gl_PREREQ_VASNPRINTF_DIRECTIVE_F
  gl_PREREQ_VASNPRINTF_DIRECTIVE_LS
  gl_PREREQ_VASNPRINTF_FLAG_GROUPING
  gl_PREREQ_VASNPRINTF_FLAG_LEFTADJUST
  gl_PREREQ_VASNPRINTF_FLAG_ZERO
  gl_PREREQ_VASNPRINTF_PRECISION
  gl_PREREQ_VASNPRINTF_ENOMEM
])

# Prerequisites of lib/asnprintf.c.
AC_DEFUN([gl_PREREQ_ASNPRINTF],
[
])

# visibility.m4 serial 8
dnl Copyright (C) 2005, 2008, 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.

dnl Tests whether the compiler supports the command-line option
dnl -fvisibility=hidden and the function and variable attributes
dnl __attribute__((__visibility__("hidden"))) and
dnl __attribute__((__visibility__("default"))).
dnl Does *not* test for __visibility__("protected") - which has tricky
dnl semantics (see the 'vismain' test in glibc) and does not exist e.g. on
dnl Mac OS X.
dnl Does *not* test for __visibility__("internal") - which has processor
dnl dependent semantics.
dnl Does *not* test for #pragma GCC visibility push(hidden) - which is
dnl "really only recommended for legacy code".
dnl Set the variable CFLAG_VISIBILITY.
dnl Defines and sets the variable HAVE_VISIBILITY.

AC_DEFUN([gl_VISIBILITY],
[
  AC_REQUIRE([AC_PROG_CC])
  CFLAG_VISIBILITY=
  HAVE_VISIBILITY=0
  if test -n "$GCC"; then
    dnl First, check whether -Werror can be added to the command line, or
    dnl whether it leads to an error because of some other option that the
    dnl user has put into $CC $CFLAGS $CPPFLAGS.
    AC_CACHE_CHECK([whether the -Werror option is usable],
      [gl_cv_cc_vis_werror],
      [gl_save_CFLAGS="$CFLAGS"
       CFLAGS="$CFLAGS -Werror"
       AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM([[]], [[]])],
         [gl_cv_cc_vis_werror=yes],
         [gl_cv_cc_vis_werror=no])
       CFLAGS="$gl_save_CFLAGS"
      ])
    dnl Now check whether visibility declarations are supported.
    AC_CACHE_CHECK([for simple visibility declarations],
      [gl_cv_cc_visibility],
      [gl_save_CFLAGS="$CFLAGS"
       CFLAGS="$CFLAGS -fvisibility=hidden"
       dnl We use the option -Werror and a function dummyfunc, because on some
       dnl platforms (Cygwin 1.7) the use of -fvisibility triggers a warning
       dnl "visibility attribute not supported in this configuration; ignored"
       dnl at the first function definition in every compilation unit, and we
       dnl don't want to use the option in this case.
       if test $gl_cv_cc_vis_werror = yes; then
         CFLAGS="$CFLAGS -Werror"
       fi
       AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[extern __attribute__((__visibility__("hidden"))) int hiddenvar;
              extern __attribute__((__visibility__("default"))) int exportedvar;
              extern __attribute__((__visibility__("hidden"))) int hiddenfunc (void);
              extern __attribute__((__visibility__("default"))) int exportedfunc (void);
              void dummyfunc (void);
              int hiddenvar;
              int exportedvar;
              int hiddenfunc (void) { return 51; }
              int exportedfunc (void) { return 1225736919; }
              void dummyfunc (void) {}
            ]],
            [[]])],
         [gl_cv_cc_visibility=yes],
         [gl_cv_cc_visibility=no])
       CFLAGS="$gl_save_CFLAGS"
      ])
    if test $gl_cv_cc_visibility = yes; then
      CFLAG_VISIBILITY="-fvisibility=hidden"
      HAVE_VISIBILITY=1
    fi
  fi
  AC_SUBST([CFLAG_VISIBILITY])
  AC_SUBST([HAVE_VISIBILITY])
  AC_DEFINE_UNQUOTED([HAVE_VISIBILITY], [$HAVE_VISIBILITY],
    [Define to 1 or 0, depending whether the compiler supports simple visibility declarations.])
])

# vsnprintf-posix.m4 serial 15
dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_VSNPRINTF_POSIX],
[
  AC_REQUIRE([gl_PRINTF_SIZES_C99])
  AC_REQUIRE([gl_PRINTF_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_INFINITE])
  AC_REQUIRE([gl_PRINTF_INFINITE_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_A])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_F])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_N])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_LS])
  AC_REQUIRE([gl_PRINTF_POSITIONS])
  AC_REQUIRE([gl_PRINTF_FLAG_GROUPING])
  AC_REQUIRE([gl_PRINTF_FLAG_LEFTADJUST])
  AC_REQUIRE([gl_PRINTF_FLAG_ZERO])
  AC_REQUIRE([gl_PRINTF_PRECISION])
  AC_REQUIRE([gl_PRINTF_ENOMEM])
  gl_cv_func_vsnprintf_posix=no
  AC_CHECK_FUNCS([vsnprintf])
  if test $ac_cv_func_vsnprintf = yes; then
    dnl These tests use vsnprintf() if snprintf() does not exist.
    gl_SNPRINTF_TRUNCATION_C99
    gl_SNPRINTF_RETVAL_C99
    gl_SNPRINTF_DIRECTIVE_N
    gl_SNPRINTF_SIZE1
    gl_VSNPRINTF_ZEROSIZE_C99
    case "$gl_cv_func_printf_sizes_c99" in
      *yes)
        case "$gl_cv_func_printf_long_double" in
          *yes)
            case "$gl_cv_func_printf_infinite" in
              *yes)
                case "$gl_cv_func_printf_infinite_long_double" in
                  *yes)
                    case "$gl_cv_func_printf_directive_a" in
                      *yes)
                        case "$gl_cv_func_printf_directive_f" in
                          *yes)
                            case "$gl_cv_func_printf_directive_n" in
                              *yes)
                                case "$gl_cv_func_printf_directive_ls" in
                                  *yes)
                                    case "$gl_cv_func_printf_positions" in
                                      *yes)
                                        case "$gl_cv_func_printf_flag_grouping" in
                                          *yes)
                                            case "$gl_cv_func_printf_flag_leftadjust" in
                                              *yes)
                                                case "$gl_cv_func_printf_flag_zero" in
                                                  *yes)
                                                    case "$gl_cv_func_printf_precision" in
                                                      *yes)
                                                        case "$gl_cv_func_printf_enomem" in
                                                          *yes)
                                                            case "$gl_cv_func_snprintf_truncation_c99" in
                                                              *yes)
                                                                case "$gl_cv_func_snprintf_retval_c99" in
                                                                  *yes)
                                                                    case "$gl_cv_func_snprintf_directive_n" in
                                                                      *yes)
                                                                        case "$gl_cv_func_snprintf_size1" in
                                                                          *yes)
                                                                            case "$gl_cv_func_vsnprintf_zerosize_c99" in
                                                                              *yes)
                                                                                # vsnprintf exists and is
                                                                                # already POSIX compliant.
                                                                                gl_cv_func_vsnprintf_posix=yes
                                                                                ;;
                                                                            esac
                                                                            ;;
                                                                        esac
                                                                        ;;
                                                                    esac
                                                                    ;;
                                                                esac
                                                                ;;
                                                            esac
                                                            ;;
                                                        esac
                                                        ;;
                                                    esac
                                                    ;;
                                                esac
                                                ;;
                                            esac
                                            ;;
                                        esac
                                        ;;
                                    esac
                                    ;;
                                esac
                                ;;
                            esac
                            ;;
                        esac
                        ;;
                    esac
                    ;;
                esac
                ;;
            esac
            ;;
        esac
        ;;
    esac
  fi
  if test $gl_cv_func_vsnprintf_posix = no; then
    gl_PREREQ_VASNPRINTF_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_DIRECTIVE_A
    gl_PREREQ_VASNPRINTF_DIRECTIVE_F
    gl_PREREQ_VASNPRINTF_DIRECTIVE_LS
    gl_PREREQ_VASNPRINTF_FLAG_GROUPING
    gl_PREREQ_VASNPRINTF_FLAG_LEFTADJUST
    gl_PREREQ_VASNPRINTF_FLAG_ZERO
    gl_PREREQ_VASNPRINTF_PRECISION
    gl_PREREQ_VASNPRINTF_ENOMEM
    gl_REPLACE_VASNPRINTF
    gl_REPLACE_VSNPRINTF
  fi
])

# vsnprintf.m4 serial 7
dnl Copyright (C) 2002-2004, 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Libintl 0.17 will replace vsnprintf only if it does not support %1$s,
dnl but defers to any gnulib vsnprintf replacements.  Therefore, gnulib
dnl must guarantee that the decision for replacing vsnprintf is a superset
dnl of the reasons checked by libintl.
AC_DEFUN([gl_FUNC_VSNPRINTF],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  gl_cv_func_vsnprintf_usable=no
  AC_CHECK_FUNCS([vsnprintf])
  if test $ac_cv_func_vsnprintf = yes; then
    gl_SNPRINTF_SIZE1
    case "$gl_cv_func_snprintf_size1" in
      *yes)
        gl_SNPRINTF_RETVAL_C99
        case "$gl_cv_func_snprintf_retval_c99" in
          *yes)
            gl_PRINTF_POSITIONS
            case "$gl_cv_func_printf_positions" in
              *yes)
                gl_cv_func_vsnprintf_usable=yes
                ;;
            esac
            ;;
        esac
        ;;
    esac
  fi
  if test $gl_cv_func_vsnprintf_usable = no; then
    gl_REPLACE_VSNPRINTF
  fi
  AC_CHECK_DECLS_ONCE([vsnprintf])
  if test $ac_cv_have_decl_vsnprintf = no; then
    HAVE_DECL_VSNPRINTF=0
  fi
])

AC_DEFUN([gl_REPLACE_VSNPRINTF],
[
  AC_REQUIRE([gl_STDIO_H_DEFAULTS])
  AC_LIBOBJ([vsnprintf])
  if test $ac_cv_func_vsnprintf = yes; then
    REPLACE_VSNPRINTF=1
  else
    AC_CHECK_DECLS_ONCE([vsnprintf])
    if test $ac_cv_have_decl_vsnprintf = yes; then
      dnl If the function is declared but does not appear to exist, it may be
      dnl defined as an inline function. In order to avoid a conflict, we have
      dnl to define rpl_vsnprintf, not vsnprintf.
      REPLACE_VSNPRINTF=1
    fi
  fi
  gl_PREREQ_VSNPRINTF
])

# Prerequisites of lib/vsnprintf.c.
AC_DEFUN([gl_PREREQ_VSNPRINTF], [:])

# warn-on-use.m4 serial 9
dnl Copyright (C) 2010-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# gl_WARN_ON_USE_PREPARE(INCLUDES, NAMES)
# ---------------------------------------
# If the module 'posixcheck' is in use:
#
# For each whitespace-separated element in the list of NAMES, define
# HAVE_RAW_DECL_name if the function has a declaration among INCLUDES
# even after being undefined as a macro.
#
# See warn-on-use.h for some hints on how to poison function names, as
# well as ideas on poisoning global variables and macros.  NAMES may
# include global variables, but remember that only functions work with
# _GL_WARN_ON_USE.  Typically, INCLUDES only needs to list a single
# header, but if the replacement header pulls in other headers because
# some systems declare functions in the wrong header, then INCLUDES
# should do likewise.
#
# It is generally safe to assume declarations for functions declared
# in the intersection of C89 and C11 (such as printf) without
# needing gl_WARN_ON_USE_PREPARE.
AC_DEFUN([gl_WARN_ON_USE_PREPARE],
[
  m4_ifdef([gl_POSIXCHECK],
    [m4_foreach_w([gl_decl], [$2],
       [AH_TEMPLATE([HAVE_RAW_DECL_]AS_TR_CPP(m4_defn([gl_decl])),
         [Define to 1 if ]m4_defn([gl_decl])[ is declared even after
          undefining macros.])])dnl
     for gl_func in m4_flatten([$2]); do
       AS_VAR_PUSHDEF([gl_Symbol], [gl_cv_have_raw_decl_$gl_func])dnl
       AC_CACHE_CHECK([whether $gl_func is declared without a macro],
         [gl_Symbol],
         [AC_COMPILE_IFELSE([AC_LANG_PROGRAM([$1],
[[#undef $gl_func
  (void) $gl_func;]])],
           [AS_VAR_SET([gl_Symbol], [yes])], [AS_VAR_SET([gl_Symbol], [no])])])
       AS_VAR_IF([gl_Symbol], [yes],
         [AC_DEFINE_UNQUOTED(AS_TR_CPP([HAVE_RAW_DECL_$gl_func]), [1])
          dnl shortcut - if the raw declaration exists, then set a cache
          dnl variable to allow skipping any later AC_CHECK_DECL efforts
          eval ac_cv_have_decl_$gl_func=yes])
       AS_VAR_POPDEF([gl_Symbol])dnl
     done
    ])
])

dnl A placeholder for ISO C99 <wchar.h>, for platforms that have issues.

dnl Copyright (C) 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Eric Blake.

# wchar_h.m4 serial 55

AC_DEFUN_ONCE([gl_WCHAR_H],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_REQUIRE([gl_WCHAR_H_INLINE_OK])
  dnl Prepare for creating substitute <wchar.h>.
  dnl Check for <wchar.h> (missing in Linux uClibc when built without wide
  dnl character support).
  dnl <wchar.h> is always overridden, because of GNULIB_POSIXCHECK.
  gl_CHECK_NEXT_HEADERS([wchar.h])
  if test $ac_cv_header_wchar_h = yes; then
    HAVE_WCHAR_H=1
  else
    HAVE_WCHAR_H=0
  fi
  AC_SUBST([HAVE_WCHAR_H])

  AC_REQUIRE([gl_FEATURES_H])

  AC_REQUIRE([gt_TYPE_WINT_T])
  if test $gt_cv_c_wint_t = yes; then
    HAVE_WINT_T=1
  else
    HAVE_WINT_T=0
  fi
  AC_SUBST([HAVE_WINT_T])

  AC_REQUIRE([gl_TYPE_WINT_T_PREREQ])

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
      #include <wchar.h>
    ]],
    [btowc wctob mbsinit mbrtowc mbrlen mbsrtowcs mbsnrtowcs wcrtomb
     wcsrtombs wcsnrtombs wcwidth
     wmemchr wmemcmp wmemcpy wmemmove wmempcpy wmemset
     wcslen wcsnlen wcscpy wcpcpy wcsncpy wcpncpy wcscat wcsncat wcscmp
     wcsncmp wcscasecmp wcsncasecmp wcscoll wcsxfrm wcsdup wcschr wcsrchr
     wcscspn wcsspn wcspbrk wcsstr wcstok wcswidth wcsftime
    ])

  AC_REQUIRE([AC_C_RESTRICT])

  AC_CHECK_DECLS([wcsdup], [], [], [[
      #include <wchar.h>
    ]])
  if test $ac_cv_have_decl_wcsdup = no; then
    HAVE_DECL_WCSDUP=0
  fi
])

dnl Check whether <wchar.h> is usable at all.
AC_DEFUN([gl_WCHAR_H_INLINE_OK],
[
  dnl Test whether <wchar.h> suffers due to the transition from '__inline' to
  dnl 'gnu_inline'. See <https://sourceware.org/bugzilla/show_bug.cgi?id=4022>
  dnl and <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=42440>. In summary,
  dnl glibc version 2.5 or older, together with gcc version 4.3 or newer and
  dnl the option -std=c99 or -std=gnu99, leads to a broken <wchar.h>.
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CACHE_CHECK([whether <wchar.h> uses 'inline' correctly],
    [gl_cv_header_wchar_h_correct_inline],
    [gl_cv_header_wchar_h_correct_inline=yes
     case "$host_os" in
       *-gnu* | gnu*)
         AC_LANG_CONFTEST([
           AC_LANG_SOURCE([[
             #define wcstod renamed_wcstod
             #include <wchar.h>
             extern int zero (void);
             int main () { return zero(); }
           ]])])
         dnl Do not rename the object file from conftest.$ac_objext to
         dnl conftest1.$ac_objext, as this will cause the link to fail on
         dnl z/OS when using the XPLINK object format (due to duplicate
         dnl CSECT names). Instead, temporarily redefine $ac_compile so
         dnl that the object file has the latter name from the start.
         save_ac_compile="$ac_compile"
         ac_compile=`echo "$save_ac_compile" | sed s/conftest/conftest1/`
         if echo '#include "conftest.c"' >conftest1.c \
            && AC_TRY_EVAL([ac_compile]); then
           AC_LANG_CONFTEST([
             AC_LANG_SOURCE([[
               #define wcstod renamed_wcstod
               #include <wchar.h>
               int zero (void) { return 0; }
             ]])])
           dnl See note above about renaming object files.
           ac_compile=`echo "$save_ac_compile" | sed s/conftest/conftest2/`
           if echo '#include "conftest.c"' >conftest2.c \
              && AC_TRY_EVAL([ac_compile]); then
             if $CC -o conftest$ac_exeext $CFLAGS $LDFLAGS conftest1.$ac_objext conftest2.$ac_objext $LIBS >&AS_MESSAGE_LOG_FD 2>&1; then
               :
             else
               gl_cv_header_wchar_h_correct_inline=no
             fi
           fi
         fi
         ac_compile="$save_ac_compile"
         rm -f conftest[12].c conftest[12].$ac_objext conftest$ac_exeext
         ;;
     esac
    ])
  if test $gl_cv_header_wchar_h_correct_inline = no; then
    AC_MSG_ERROR([<wchar.h> cannot be used with this compiler ($CC $CFLAGS $CPPFLAGS).
This is a known interoperability problem of glibc <= 2.5 with gcc >= 4.3 in
C99 mode. You have four options:
  - Add the flag -fgnu89-inline to CC and reconfigure, or
  - Fix your include files, using parts of
    <https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=b037a293a48718af30d706c2e18c929d0e69a621>, or
  - Use a gcc version older than 4.3, or
  - Don't use the flags -std=c99 or -std=gnu99.
Configuration aborted.])
  fi
])

# gl_WCHAR_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_WCHAR_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_WCHAR_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_WCHAR_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_WCHAR_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_BTOWC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCTOB])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSINIT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBRTOWC])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBRLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSRTOWCS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MBSNRTOWCS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCRTOMB])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSRTOMBS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNRTOMBS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCWIDTH])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMCMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMMOVE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMPCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WMEMSET])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNLEN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCPCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCPNCPY])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNCAT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNCMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCASECMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSNCASECMP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCOLL])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSXFRM])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSDUP])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSRCHR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSCSPN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSSPN])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSPBRK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSSTR])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSTOK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSWIDTH])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCSFTIME])
    dnl Support Microsoft deprecated alias function names by default.
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_MDA_WCSDUP], [1])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_WCHAR_H_MODULE_INDICATOR_DEFAULTS])
  dnl Make sure the shell variable for GNULIB_FREE_POSIX is initialized.
  gl_STDLIB_H_REQUIRE_DEFAULTS
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
])

AC_DEFUN([gl_WCHAR_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_BTOWC=1;         AC_SUBST([HAVE_BTOWC])
  HAVE_MBSINIT=1;       AC_SUBST([HAVE_MBSINIT])
  HAVE_MBRTOWC=1;       AC_SUBST([HAVE_MBRTOWC])
  HAVE_MBRLEN=1;        AC_SUBST([HAVE_MBRLEN])
  HAVE_MBSRTOWCS=1;     AC_SUBST([HAVE_MBSRTOWCS])
  HAVE_MBSNRTOWCS=1;    AC_SUBST([HAVE_MBSNRTOWCS])
  HAVE_WCRTOMB=1;       AC_SUBST([HAVE_WCRTOMB])
  HAVE_WCSRTOMBS=1;     AC_SUBST([HAVE_WCSRTOMBS])
  HAVE_WCSNRTOMBS=1;    AC_SUBST([HAVE_WCSNRTOMBS])
  HAVE_WMEMCHR=1;       AC_SUBST([HAVE_WMEMCHR])
  HAVE_WMEMCMP=1;       AC_SUBST([HAVE_WMEMCMP])
  HAVE_WMEMCPY=1;       AC_SUBST([HAVE_WMEMCPY])
  HAVE_WMEMMOVE=1;      AC_SUBST([HAVE_WMEMMOVE])
  HAVE_WMEMPCPY=1;      AC_SUBST([HAVE_WMEMPCPY])
  HAVE_WMEMSET=1;       AC_SUBST([HAVE_WMEMSET])
  HAVE_WCSLEN=1;        AC_SUBST([HAVE_WCSLEN])
  HAVE_WCSNLEN=1;       AC_SUBST([HAVE_WCSNLEN])
  HAVE_WCSCPY=1;        AC_SUBST([HAVE_WCSCPY])
  HAVE_WCPCPY=1;        AC_SUBST([HAVE_WCPCPY])
  HAVE_WCSNCPY=1;       AC_SUBST([HAVE_WCSNCPY])
  HAVE_WCPNCPY=1;       AC_SUBST([HAVE_WCPNCPY])
  HAVE_WCSCAT=1;        AC_SUBST([HAVE_WCSCAT])
  HAVE_WCSNCAT=1;       AC_SUBST([HAVE_WCSNCAT])
  HAVE_WCSCMP=1;        AC_SUBST([HAVE_WCSCMP])
  HAVE_WCSNCMP=1;       AC_SUBST([HAVE_WCSNCMP])
  HAVE_WCSCASECMP=1;    AC_SUBST([HAVE_WCSCASECMP])
  HAVE_WCSNCASECMP=1;   AC_SUBST([HAVE_WCSNCASECMP])
  HAVE_WCSCOLL=1;       AC_SUBST([HAVE_WCSCOLL])
  HAVE_WCSXFRM=1;       AC_SUBST([HAVE_WCSXFRM])
  HAVE_WCSDUP=1;        AC_SUBST([HAVE_WCSDUP])
  HAVE_WCSCHR=1;        AC_SUBST([HAVE_WCSCHR])
  HAVE_WCSRCHR=1;       AC_SUBST([HAVE_WCSRCHR])
  HAVE_WCSCSPN=1;       AC_SUBST([HAVE_WCSCSPN])
  HAVE_WCSSPN=1;        AC_SUBST([HAVE_WCSSPN])
  HAVE_WCSPBRK=1;       AC_SUBST([HAVE_WCSPBRK])
  HAVE_WCSSTR=1;        AC_SUBST([HAVE_WCSSTR])
  HAVE_WCSTOK=1;        AC_SUBST([HAVE_WCSTOK])
  HAVE_WCSWIDTH=1;      AC_SUBST([HAVE_WCSWIDTH])
  HAVE_WCSFTIME=1;      AC_SUBST([HAVE_WCSFTIME])
  HAVE_DECL_WCTOB=1;    AC_SUBST([HAVE_DECL_WCTOB])
  HAVE_DECL_WCSDUP=1;   AC_SUBST([HAVE_DECL_WCSDUP])
  HAVE_DECL_WCWIDTH=1;  AC_SUBST([HAVE_DECL_WCWIDTH])
  REPLACE_MBSTATE_T=0;  AC_SUBST([REPLACE_MBSTATE_T])
  REPLACE_BTOWC=0;      AC_SUBST([REPLACE_BTOWC])
  REPLACE_WCTOB=0;      AC_SUBST([REPLACE_WCTOB])
  REPLACE_MBSINIT=0;    AC_SUBST([REPLACE_MBSINIT])
  REPLACE_MBRTOWC=0;    AC_SUBST([REPLACE_MBRTOWC])
  REPLACE_MBRLEN=0;     AC_SUBST([REPLACE_MBRLEN])
  REPLACE_MBSRTOWCS=0;  AC_SUBST([REPLACE_MBSRTOWCS])
  REPLACE_MBSNRTOWCS=0; AC_SUBST([REPLACE_MBSNRTOWCS])
  REPLACE_WCRTOMB=0;    AC_SUBST([REPLACE_WCRTOMB])
  REPLACE_WCSRTOMBS=0;  AC_SUBST([REPLACE_WCSRTOMBS])
  REPLACE_WCSNRTOMBS=0; AC_SUBST([REPLACE_WCSNRTOMBS])
  REPLACE_WCWIDTH=0;    AC_SUBST([REPLACE_WCWIDTH])
  REPLACE_WCSWIDTH=0;   AC_SUBST([REPLACE_WCSWIDTH])
  REPLACE_WCSFTIME=0;   AC_SUBST([REPLACE_WCSFTIME])
  REPLACE_WCSTOK=0;     AC_SUBST([REPLACE_WCSTOK])
])

# wchar_t.m4 serial 4 (gettext-0.18.2)
dnl Copyright (C) 2002-2003, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether <stddef.h> has the 'wchar_t' type.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WCHAR_T],
[
  AC_CACHE_CHECK([for wchar_t], [gt_cv_c_wchar_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <stddef.h>
            wchar_t foo = (wchar_t)'\0';]],
          [[]])],
       [gt_cv_c_wchar_t=yes],
       [gt_cv_c_wchar_t=no])])
  if test $gt_cv_c_wchar_t = yes; then
    AC_DEFINE([HAVE_WCHAR_T], [1], [Define if you have the 'wchar_t' type.])
  fi
])

# wcrtomb.m4 serial 17
dnl Copyright (C) 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_WCRTOMB],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])

  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  gl_MBSTATE_T_BROKEN

  AC_CHECK_FUNCS_ONCE([wcrtomb])
  if test $ac_cv_func_wcrtomb = no; then
    HAVE_WCRTOMB=0
    AC_CHECK_DECLS([wcrtomb],,, [[
      #include <wchar.h>
    ]])
    if test $ac_cv_have_decl_wcrtomb = yes; then
      dnl On Minix 3.1.8, the system's <wchar.h> declares wcrtomb() although
      dnl it does not have the function. Avoid a collision with gnulib's
      dnl replacement.
      REPLACE_WCRTOMB=1
    fi
  else
    dnl We don't actually need to override wcrtomb when redefining the semantics
    dnl of the mbstate_t type. Tested on 32-bit AIX.
    dnl if test $REPLACE_MBSTATE_T = 1; then
    dnl   REPLACE_WCRTOMB=1
    dnl fi
    if test $REPLACE_WCRTOMB = 0; then
      dnl On Android 4.3, wcrtomb produces wrong characters in the C locale.
      dnl On AIX 4.3, OSF/1 5.1 and Solaris <= 11.3, wcrtomb (NULL, 0, NULL)
      dnl sometimes returns 0 instead of 1.
      AC_REQUIRE([AC_PROG_CC])
      AC_REQUIRE([gt_LOCALE_FR])
      AC_REQUIRE([gt_LOCALE_FR_UTF8])
      AC_REQUIRE([gt_LOCALE_JA])
      AC_REQUIRE([gt_LOCALE_ZH_CN])
      AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles
      AC_CACHE_CHECK([whether wcrtomb works in the C locale],
        [gl_cv_func_wcrtomb_works],
        [AC_RUN_IFELSE(
           [AC_LANG_SOURCE([[
#include <string.h>
#include <stdlib.h>
#include <wchar.h>
int main ()
{
  mbstate_t state;
  char out[64];
  int count;
  memset (&state, 0, sizeof (state));
  out[0] = 'x';
  count = wcrtomb (out, L'a', &state);
  return !(count == 1 && out[0] == 'a');
}]])],
           [gl_cv_func_wcrtomb_works=yes],
           [gl_cv_func_wcrtomb_works=no],
           [case "$host_os" in
                               # Guess no on Android.
              linux*-android*) gl_cv_func_wcrtomb_works="guessing no";;
                               # Guess yes otherwise.
              *)               gl_cv_func_wcrtomb_works="guessing yes";;
            esac
           ])
        ])
      case "$gl_cv_func_wcrtomb_works" in
        *yes) ;;
        *) AC_DEFINE([WCRTOMB_C_LOCALE_BUG], [1],
             [Define if the wcrtomb function does not work in the C locale.])
           REPLACE_WCRTOMB=1 ;;
      esac
    fi
    if test $REPLACE_WCRTOMB = 0; then
      AC_CACHE_CHECK([whether wcrtomb return value is correct],
        [gl_cv_func_wcrtomb_retval],
        [
          dnl Initial guess, used when cross-compiling or when no suitable locale
          dnl is present.
changequote(,)dnl
          case "$host_os" in
            # Guess no on AIX 4, OSF/1, Solaris, native Windows.
            aix4* | osf* | solaris* | mingw*) gl_cv_func_wcrtomb_retval="guessing no" ;;
            # Guess yes otherwise.
            *)                                gl_cv_func_wcrtomb_retval="guessing yes" ;;
          esac
changequote([,])dnl
          if test $LOCALE_FR != none || test $LOCALE_FR_UTF8 != none || test $LOCALE_JA != none || test $LOCALE_ZH_CN != none; then
            AC_RUN_IFELSE(
              [AC_LANG_SOURCE([[
#include <locale.h>
#include <string.h>
#include <wchar.h>
#include <stdlib.h>
int main ()
{
  int result = 0;
  if (setlocale (LC_ALL, "$LOCALE_FR") != NULL)
    {
      if (wcrtomb (NULL, 0, NULL) != 1)
        result |= 1;
    }
  if (setlocale (LC_ALL, "$LOCALE_FR_UTF8") != NULL)
    {
      if (wcrtomb (NULL, 0, NULL) != 1)
        result |= 2;
      {
        wchar_t wc = (wchar_t) 0xBADFACE;
        if (mbtowc (&wc, "\303\274", 2) == 2)
          if (wcrtomb (NULL, wc, NULL) != 1)
            result |= 2;
      }
    }
  if (setlocale (LC_ALL, "$LOCALE_JA") != NULL)
    {
      if (wcrtomb (NULL, 0, NULL) != 1)
        result |= 4;
    }
  if (setlocale (LC_ALL, "$LOCALE_ZH_CN") != NULL)
    {
      if (wcrtomb (NULL, 0, NULL) != 1)
        result |= 8;
    }
  return result;
}]])],
              [gl_cv_func_wcrtomb_retval=yes],
              [gl_cv_func_wcrtomb_retval=no],
              [:])
          fi
        ])
      case "$gl_cv_func_wcrtomb_retval" in
        *yes) ;;
        *) AC_DEFINE([WCRTOMB_RETVAL_BUG], [1],
             [Define if the wcrtomb function has an incorrect return value.])
           REPLACE_WCRTOMB=1 ;;
      esac
    fi
  fi
])

# Prerequisites of lib/wcrtomb.c.
AC_DEFUN([gl_PREREQ_WCRTOMB], [
  :
])

# wctype_h.m4 serial 30

dnl A placeholder for ISO C99 <wctype.h>, for platforms that lack it.

dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Written by Paul Eggert.

AC_DEFUN_ONCE([gl_WCTYPE_H],
[
  AC_REQUIRE([gl_WCTYPE_H_DEFAULTS])
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])
  AC_CHECK_FUNCS_ONCE([iswcntrl])
  if test $ac_cv_func_iswcntrl = yes; then
    HAVE_ISWCNTRL=1
  else
    HAVE_ISWCNTRL=0
  fi
  AC_SUBST([HAVE_ISWCNTRL])

  AC_REQUIRE([gt_TYPE_WINT_T])
  if test $gt_cv_c_wint_t = yes; then
    HAVE_WINT_T=1
  else
    HAVE_WINT_T=0
  fi
  AC_SUBST([HAVE_WINT_T])

  AC_REQUIRE([gl_TYPE_WINT_T_PREREQ])

  gl_CHECK_NEXT_HEADERS([wctype.h])
  if test $ac_cv_header_wctype_h = yes; then
    if test $ac_cv_func_iswcntrl = yes; then
      dnl Linux libc5 has an iswprint function that returns 0 for all arguments.
      dnl The other functions are likely broken in the same way.
      AC_CACHE_CHECK([whether iswcntrl works], [gl_cv_func_iswcntrl_works],
        [
          AC_RUN_IFELSE(
            [AC_LANG_SOURCE([[
               #include <wchar.h>
               #include <wctype.h>
               int main () { return iswprint ('x') == 0; }
            ]])],
            [gl_cv_func_iswcntrl_works=yes], [gl_cv_func_iswcntrl_works=no],
            [dnl Guess no on Linux libc5, yes otherwise.
             AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[#include <stdlib.h>
                          #if __GNU_LIBRARY__ == 1
                          Linux libc5 i18n is broken.
                          #endif]], [[]])],
              [gl_cv_func_iswcntrl_works="guessing yes"],
              [gl_cv_func_iswcntrl_works="guessing no"])
            ])
        ])
    fi
    HAVE_WCTYPE_H=1
  else
    HAVE_WCTYPE_H=0
  fi
  AC_SUBST([HAVE_WCTYPE_H])

  if test $GNULIBHEADERS_OVERRIDE_WINT_T = 1; then
    REPLACE_ISWCNTRL=1
  else
    case "$gl_cv_func_iswcntrl_works" in
      *yes) REPLACE_ISWCNTRL=0 ;;
      *)    REPLACE_ISWCNTRL=1 ;;
    esac
  fi
  AC_SUBST([REPLACE_ISWCNTRL])

  if test $HAVE_ISWCNTRL = 0 || test $REPLACE_ISWCNTRL = 1; then
    dnl Redefine all of iswcntrl, ..., iswxdigit in <wctype.h>.
    :
  fi

  if test $REPLACE_ISWCNTRL = 1; then
    REPLACE_TOWLOWER=1
  else
    AC_CHECK_FUNCS([towlower])
    if test $ac_cv_func_towlower = yes; then
      REPLACE_TOWLOWER=0
    else
      AC_CHECK_DECLS([towlower],,,
        [[#include <wchar.h>
          #if HAVE_WCTYPE_H
          # include <wctype.h>
          #endif
        ]])
      if test $ac_cv_have_decl_towlower = yes; then
        dnl On Minix 3.1.8, the system's <wctype.h> declares towlower() and
        dnl towupper() although it does not have the functions. Avoid a
        dnl collision with gnulib's replacement.
        REPLACE_TOWLOWER=1
      else
        REPLACE_TOWLOWER=0
      fi
    fi
  fi
  AC_SUBST([REPLACE_TOWLOWER])

  if test $HAVE_ISWCNTRL = 0 || test $REPLACE_TOWLOWER = 1; then
    dnl Redefine towlower, towupper in <wctype.h>.
    :
  fi

  dnl We assume that the wctype() and iswctype() functions exist if and only
  dnl if the type wctype_t is defined in <wchar.h> or in <wctype.h> if that
  dnl exists.
  dnl HP-UX 11.00 declares all these in <wchar.h> and lacks <wctype.h>.
  AC_CACHE_CHECK([for wctype_t], [gl_cv_type_wctype_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <wchar.h>
            #if HAVE_WCTYPE_H
            # include <wctype.h>
            #endif
            wctype_t a;
          ]],
          [[]])],
       [gl_cv_type_wctype_t=yes],
       [gl_cv_type_wctype_t=no])
    ])
  if test $gl_cv_type_wctype_t = no; then
    HAVE_WCTYPE_T=0
  fi

  dnl We assume that the wctrans() and towctrans() functions exist if and only
  dnl if the type wctrans_t is defined in <wctype.h>.
  AC_CACHE_CHECK([for wctrans_t], [gl_cv_type_wctrans_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <wchar.h>
            #include <wctype.h>
            wctrans_t a;
          ]],
          [[]])],
       [gl_cv_type_wctrans_t=yes],
       [gl_cv_type_wctrans_t=no])
    ])
  if test $gl_cv_type_wctrans_t = no; then
    HAVE_WCTRANS_T=0
  fi

  dnl Check for declarations of anything we want to poison if the
  dnl corresponding gnulib module is not in use.
  gl_WARN_ON_USE_PREPARE([[
#if !(defined __GLIBC__ && !defined __UCLIBC__)
# include <wchar.h>
#endif
#include <wctype.h>
    ]],
    [wctype iswctype wctrans towctrans
    ])
])

# gl_WCTYPE_MODULE_INDICATOR([modulename])
# sets the shell variable that indicates the presence of the given module
# to a C preprocessor expression that will evaluate to 1.
# This macro invocation must not occur in macros that are AC_REQUIREd.
AC_DEFUN([gl_WCTYPE_MODULE_INDICATOR],
[
  dnl Ensure to expand the default settings once only.
  gl_WCTYPE_H_REQUIRE_DEFAULTS
  gl_MODULE_INDICATOR_SET_VARIABLE([$1])
  dnl Define it also as a C macro, for the benefit of the unit tests.
  gl_MODULE_INDICATOR_FOR_TESTS([$1])
])

# Initializes the default values for AC_SUBSTed shell variables.
# This macro must not be AC_REQUIREd.  It must only be invoked, and only
# outside of macros or in macros that are not AC_REQUIREd.
AC_DEFUN([gl_WCTYPE_H_REQUIRE_DEFAULTS],
[
  m4_defun(GL_MODULE_INDICATOR_PREFIX[_WCTYPE_H_MODULE_INDICATOR_DEFAULTS], [
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISWBLANK])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISWDIGIT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISWXDIGIT])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCTYPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_ISWCTYPE])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_WCTRANS])
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_TOWCTRANS])
  ])
  m4_require(GL_MODULE_INDICATOR_PREFIX[_WCTYPE_H_MODULE_INDICATOR_DEFAULTS])
  AC_REQUIRE([gl_WCTYPE_H_DEFAULTS])
])

AC_DEFUN([gl_WCTYPE_H_DEFAULTS],
[
  dnl Assume proper GNU behavior unless another module says otherwise.
  HAVE_ISWBLANK=1;      AC_SUBST([HAVE_ISWBLANK])
  HAVE_WCTYPE_T=1;      AC_SUBST([HAVE_WCTYPE_T])
  HAVE_WCTRANS_T=1;     AC_SUBST([HAVE_WCTRANS_T])
  REPLACE_ISWBLANK=0;   AC_SUBST([REPLACE_ISWBLANK])
  REPLACE_ISWDIGIT=0;   AC_SUBST([REPLACE_ISWDIGIT])
  REPLACE_ISWXDIGIT=0;  AC_SUBST([REPLACE_ISWXDIGIT])
])

# wcwidth.m4 serial 34
dnl Copyright (C) 2006-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_WCWIDTH],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

  dnl Persuade glibc <wchar.h> to declare wcwidth().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  AC_REQUIRE([gt_TYPE_WCHAR_T])
  AC_REQUIRE([gt_TYPE_WINT_T])

  AC_CHECK_HEADERS_ONCE([wchar.h])
  AC_CHECK_FUNCS_ONCE([wcwidth])

  AC_CHECK_DECLS([wcwidth], [], [], [[
    #include <wchar.h>
  ]])
  if test $ac_cv_have_decl_wcwidth != yes; then
    HAVE_DECL_WCWIDTH=0
  fi

  if test $ac_cv_func_wcwidth != yes; then
    AC_CACHE_CHECK([whether wcwidth is a macro],
      [gl_cv_func_wcwidth_macro],
      [AC_EGREP_CPP([wchar_header_defines_wcwidth], [
#include <wchar.h>
#ifdef wcwidth
 wchar_header_defines_wcwidth
#endif],
         [gl_cv_func_wcwidth_macro=yes],
         [gl_cv_func_wcwidth_macro=no])
      ])
  fi

  if test $ac_cv_func_wcwidth = yes || test $gl_cv_func_wcwidth_macro = yes; then
    HAVE_WCWIDTH=1
    dnl On Mac OS X 10.3, wcwidth(0x0301) (COMBINING ACUTE ACCENT) returns 1.
    dnl On NetBSD 9.0, OpenBSD 5.0, MidnightBSD 1.1,
    dnl wcwidth(0x05B0) (HEBREW POINT SHEVA) returns 1.
    dnl On NetBSD 9.0, MidnightBSD 1.1, OSF/1 5.1,
    dnl wcwidth(0x200B) (ZERO WIDTH SPACE) returns 1.
    dnl On OpenBSD 5.8, wcwidth(0xFF1A) (FULLWIDTH COLON) returns 0.
    dnl This leads to bugs in 'ls' (coreutils).
    dnl On Solaris 11.4, wcwidth(0x2202) (PARTIAL DIFFERENTIAL) returns 2,
    dnl even in Western locales.
    AC_CACHE_CHECK([whether wcwidth works reasonably in UTF-8 locales],
      [gl_cv_func_wcwidth_works],
      [
        AC_RUN_IFELSE(
          [AC_LANG_SOURCE([[
#include <locale.h>
#include <wchar.h>
#if !HAVE_DECL_WCWIDTH
extern
# ifdef __cplusplus
"C"
# endif
int wcwidth (int);
#endif
int main ()
{
  int result = 0;
  if (setlocale (LC_ALL, "en_US.UTF-8") != NULL)
    {
      if (wcwidth (0x0301) > 0)
        result |= 1;
      if (wcwidth (0x05B0) > 0)
        result |= 2;
      if (wcwidth (0x200B) > 0)
        result |= 4;
      if (wcwidth (0xFF1A) == 0)
        result |= 8;
      if (wcwidth (0x2202) > 1)
        result |= 16;
    }
  return result;
}]])],
          [gl_cv_func_wcwidth_works=yes],
          [gl_cv_func_wcwidth_works=no],
          [
changequote(,)dnl
           case "$host_os" in
                            # Guess yes on glibc systems.
             *-gnu* | gnu*) gl_cv_func_wcwidth_works="guessing yes";;
                            # Guess yes on musl systems.
             *-musl*)       gl_cv_func_wcwidth_works="guessing yes";;
                            # Guess yes on AIX 7 systems.
             aix[7-9]*)     gl_cv_func_wcwidth_works="guessing yes";;
             *)             gl_cv_func_wcwidth_works="$gl_cross_guess_normal";;
           esac
changequote([,])dnl
          ])
      ])
    case "$gl_cv_func_wcwidth_works" in
      *yes) ;;
      *no) REPLACE_WCWIDTH=1 ;;
    esac
  else
    HAVE_WCWIDTH=0
  fi
  dnl We don't substitute HAVE_WCWIDTH. We assume that if the system does not
  dnl have the wcwidth function, then it does not declare it.
])

# Prerequisites of lib/wcwidth.c.
AC_DEFUN([gl_PREREQ_WCWIDTH], [
  AC_REQUIRE([AC_C_INLINE])
  :
])

# wint_t.m4 serial 11
dnl Copyright (C) 2003, 2007-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl From Bruno Haible.
dnl Test whether <wchar.h> has the 'wint_t' type and whether gnulib's
dnl <wchar.h> or <wctype.h> would, if present, override 'wint_t'.
dnl Prerequisite: AC_PROG_CC

AC_DEFUN([gt_TYPE_WINT_T],
[
  AC_CACHE_CHECK([for wint_t], [gt_cv_c_wint_t],
    [AC_COMPILE_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <wchar.h>
            wint_t foo = (wchar_t)'\0';]],
          [[]])],
       [gt_cv_c_wint_t=yes],
       [gt_cv_c_wint_t=no])])
  if test $gt_cv_c_wint_t = yes; then
    AC_DEFINE([HAVE_WINT_T], [1], [Define if you have the 'wint_t' type.])

    dnl Determine whether gnulib's <wchar.h> or <wctype.h> would, if present,
    dnl override 'wint_t'.
    AC_CACHE_CHECK([whether wint_t is large enough],
      [gl_cv_type_wint_t_large_enough],
      [AC_COMPILE_IFELSE(
         [AC_LANG_PROGRAM(
            [[#include <wchar.h>
              int verify[sizeof (wint_t) < sizeof (int) ? -1 : 1];
            ]])],
         [gl_cv_type_wint_t_large_enough=yes],
         [gl_cv_type_wint_t_large_enough=no])])
    if test $gl_cv_type_wint_t_large_enough = no; then
      GNULIBHEADERS_OVERRIDE_WINT_T=1
    else
      GNULIBHEADERS_OVERRIDE_WINT_T=0
    fi
  else
    GNULIBHEADERS_OVERRIDE_WINT_T=0
  fi
  AC_SUBST([GNULIBHEADERS_OVERRIDE_WINT_T])
])

dnl Prerequisites of the 'wint_t' override.
AC_DEFUN([gl_TYPE_WINT_T_PREREQ],
[
  AC_CHECK_HEADERS_ONCE([crtdefs.h])
  if test $ac_cv_header_crtdefs_h = yes; then
    HAVE_CRTDEFS_H=1
  else
    HAVE_CRTDEFS_H=0
  fi
  AC_SUBST([HAVE_CRTDEFS_H])
])

# wmemchr.m4 serial 5
dnl Copyright (C) 2011-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_WMEMCHR],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  dnl We cannot use AC_CHECK_FUNCS here, because the MSVC 9 header files
  dnl provide this function as an inline function definition.
  AC_CACHE_CHECK([for wmemchr], [gl_cv_func_wmemchr],
    [AC_LINK_IFELSE(
       [AC_LANG_PROGRAM(
          [[#include <wchar.h>
          ]],
          [[return ! wmemchr ((const wchar_t *) 0, (wchar_t) ' ', 0);]])
       ],
       [gl_cv_func_wmemchr=yes],
       [gl_cv_func_wmemchr=no])
    ])
  if test $gl_cv_func_wmemchr = no; then
    HAVE_WMEMCHR=0
  fi
])

# wmempcpy.m4 serial 1
dnl Copyright (C) 2020-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_WMEMPCPY],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])

  dnl Persuade glibc <wchar.h> to declare wmempcpy().
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  dnl The wmempcpy() declaration in lib/wchar.in.h uses 'restrict'.
  AC_REQUIRE([AC_C_RESTRICT])

  AC_CHECK_FUNCS_ONCE([wmempcpy])
  if test $ac_cv_func_wmempcpy = no; then
    HAVE_WMEMPCPY=0
  fi
])

# xsize.m4 serial 5
dnl Copyright (C) 2003-2004, 2008-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_XSIZE],
[
  dnl Prerequisites of lib/xsize.h.
  AC_REQUIRE([gl_SIZE_MAX])
  AC_CHECK_HEADERS([stdint.h])
])

# year2038.m4 serial 7
dnl Copyright (C) 2017-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl Attempt to ensure that 'time_t' can go past the year 2038 and that
dnl the functions 'time', 'stat', etc. work with post-2038 timestamps.

AC_DEFUN([gl_YEAR2038_EARLY],
[
  AC_REQUIRE([AC_CANONICAL_HOST])
  case "$host_os" in
    mingw*)
      AC_DEFINE([__MINGW_USE_VC2005_COMPAT], [1],
        [For 64-bit time_t on 32-bit mingw.])
      ;;
  esac
])

# gl_YEAR2038_TEST_INCLUDES
# -------------------------
AC_DEFUN([gl_YEAR2038_TEST_INCLUDES],
[[
  #include <time.h>
  /* Check that time_t can represent 2**32 - 1 correctly.  */
  #define LARGE_TIME_T \\
    ((time_t) (((time_t) 1 << 30) - 1 + 3 * ((time_t) 1 << 30)))
  int verify_time_t_range[(LARGE_TIME_T / 65537 == 65535
                           && LARGE_TIME_T % 65537 == 0)
                          ? 1 : -1];
]])

# gl_YEAR2038_BODY(REQUIRE-YEAR2038-SAFE)
-----------------------------------------
AC_DEFUN([gl_YEAR2038_BODY],
[
 AC_ARG_ENABLE([year2038],
   [  --disable-year2038      omit support for timestamps past the year 2038])
 AS_IF([test "$enable_year2038" != no],
 [
  dnl On many systems, time_t is already a 64-bit type.
  dnl On those systems where time_t is still 32-bit, it requires kernel
  dnl and libc support to make it 64-bit. For glibc 2.34 and later on Linux,
  dnl defining _TIME_BITS=64 and _FILE_OFFSET_BITS=64 is needed on x86 and ARM.
  dnl
  dnl On native Windows, the system include files define types __time32_t
  dnl and __time64_t. By default, time_t is an alias of
  dnl   - __time32_t on 32-bit mingw,
  dnl   - __time64_t on 64-bit mingw and on MSVC (since MSVC 8).
  dnl But when compiling with -D__MINGW_USE_VC2005_COMPAT, time_t is an
  dnl alias of __time64_t.
  dnl And when compiling with -D_USE_32BIT_TIME_T, time_t is an alias of
  dnl __time32_t.
  AC_CACHE_CHECK([for time_t past the year 2038], [gl_cv_type_time_t_y2038],
    [AC_COMPILE_IFELSE(
       [AC_LANG_SOURCE([gl_YEAR2038_TEST_INCLUDES])],
       [gl_cv_type_time_t_y2038=yes], [gl_cv_type_time_t_y2038=no])
    ])
  if test "$gl_cv_type_time_t_y2038" = no; then
    AC_CACHE_CHECK([for 64-bit time_t with _TIME_BITS=64],
      [gl_cv_type_time_t_bits_macro],
      [AC_COMPILE_IFELSE(
         [AC_LANG_SOURCE([[#define _TIME_BITS 64
                           #define _FILE_OFFSET_BITS 64
                           ]gl_YEAR2038_TEST_INCLUDES])],
         [gl_cv_type_time_t_bits_macro=yes],
         [gl_cv_type_time_t_bits_macro=no])
      ])
    if test "$gl_cv_type_time_t_bits_macro" = yes; then
      AC_DEFINE([_TIME_BITS], [64],
        [Number of bits in a timestamp, on hosts where this is settable.])
      dnl AC_SYS_LARGFILE also defines this; it's OK if we do too.
      AC_DEFINE([_FILE_OFFSET_BITS], [64],
        [Number of bits in a file offset, on hosts where this is settable.])
      gl_cv_type_time_t_y2038=yes
    fi
  fi
  if test $gl_cv_type_time_t_y2038 = no; then
    AC_COMPILE_IFELSE(
      [AC_LANG_SOURCE(
         [[#ifdef _USE_32BIT_TIME_T
             int ok;
           #else
             error fail
           #endif
         ]])],
      [AC_MSG_FAILURE(
         [The 'time_t' type stops working after January 2038.
          Remove _USE_32BIT_TIME_T from the compiler flags.])],
      [# If not cross-compiling and $1 says we should check,
       # and 'touch' works with a large timestamp, then evidently wider time_t
       # is desired and supported, so fail and ask the builder to fix the
       # problem.  Otherwise, just warn the builder.
       m4_ifval([$1],
         [if test $cross_compiling = no \
             && TZ=UTC0 touch -t 210602070628.15 conftest.time 2>/dev/null; then
            case `TZ=UTC0 LC_ALL=C ls -l conftest.time 2>/dev/null` in
              *'Feb  7  2106'* | *'Feb  7 17:10'*)
                AC_MSG_FAILURE(
                  [The 'time_t' type stops working after January 2038,
                   and your system appears to support a wider 'time_t'.
                   Try configuring with 'CC="${CC} -m64"'.
                   To build with a 32-bit time_t anyway (not recommended),
                   configure with '--disable-year2038'.]);;
            esac
            rm -f conftest.time
          fi])
       if test "$gl_warned_about_y2038" != yes; then
         AC_MSG_WARN(
           [The 'time_t' type stops working after January 2038,
            and this package needs a wider 'time_t' type
            if there is any way to access timestamps after that.
            Configure with 'CC="${CC} -m64"' perhaps?])
         gl_warned_about_y2038=yes
       fi
      ])
  fi])
])

AC_DEFUN([gl_YEAR2038],
[
  gl_YEAR2038_BODY([require-year2038-safe])
])

# zzgnulib.m4 serial 1
dnl Copyright (C) 2020-2021 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

dnl This file must be named something that sorts after all other
dnl package- or gnulib-provided .m4 files - at least for those packages
dnl that redefine AC_PROG_CC.

dnl Redefine AC_PROG_CC so that it ends with invocations of gl_COMPILER_CLANG
dnl and gl_COMPILER_PREPARE_CHECK_DECL.
m4_define([AC_PROG_CC],
  m4_defn([AC_PROG_CC])[
gl_COMPILER_CLANG
gl_COMPILER_PREPARE_CHECK_DECL
])

# gl_ZZGNULIB
# -----------
# Witness macro that this file has been included.  Needed to force
# Automake to include this file after all other gnulib .m4 files.
AC_DEFUN([gl_ZZGNULIB])

