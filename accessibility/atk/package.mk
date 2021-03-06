################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="atk"
PKG_VERSION="2.6.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://library.gnome.org/devel/atk/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.6/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib"
PKG_PRIORITY="optional"
PKG_SECTION="accessibility"
PKG_SHORTDESC="ATK - Accessibility Toolkit"
PKG_LONGDESC="ATK provides the set of accessibility interfaces that are implemented by other toolkits and applications. Using the ATK interfaces, accessibility tools have full access to view and control running applications."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_posix_getpwuid_r=yes \
  glib_cv_stack_grows=no glib_cv_uscore=no \
  ac_cv_func_strtod=yes ac_fsusage_space=yes \
  fu_cv_sys_stat_statfs2_bsize=yes ac_cv_func_closedir_void=no \
  ac_cv_func_getloadavg=no ac_cv_lib_util_getloadavg=no \
  ac_cv_lib_getloadavg_getloadavg=no ac_cv_func_getgroups=yes \
  ac_cv_func_getgroups_works=yes ac_cv_func_chown_works=yes \
  ac_cv_have_decl_euidaccess=no ac_cv_func_euidaccess=no \
  ac_cv_have_decl_strnlen=yes ac_cv_func_strnlen_working=yes \
  ac_cv_func_lstat_dereferences_slashed_symlink=yes ac_cv_func_lstat_empty_string_bug=no \
  ac_cv_func_stat_empty_string_bug=no vb_cv_func_rename_trailing_slash_bug=no \
  ac_cv_have_decl_nanosleep=yes jm_cv_func_nanosleep_works=yes \
  gl_cv_func_working_utimes=yes ac_cv_func_utime_null=yes \
  ac_cv_have_decl_strerror_r=yes ac_cv_func_strerror_r_char_p=no \
  jm_cv_func_svid_putenv=yes ac_cv_func_getcwd_null=yes \
  ac_cv_func_getdelim=yes ac_cv_func_mkstemp=yes \
  utils_cv_func_mkstemp_limitations=no utils_cv_func_mkdir_trailing_slash_bug=no \
  ac_cv_func_memcmp_working=yes ac_cv_have_decl_malloc=yes \
  gl_cv_func_malloc_0_nonnull=yes ac_cv_func_malloc_0_nonnull=yes \
  ac_cv_func_calloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes \
  jm_cv_func_gettimeofday_clobber=no gl_cv_func_working_readdir=yes \
  jm_ac_cv_func_link_follows_symlink=no utils_cv_localtime_cache=no \
  ac_cv_struct_st_mtim_nsec=no gl_cv_func_tzset_clobber=no \
  gl_cv_func_getcwd_null=yes gl_cv_func_getcwd_path_max=yes \
  ac_cv_func_fnmatch_gnu=yes am_getline_needs_run_time_check=no \
  am_cv_func_working_getline=yes gl_cv_func_mkdir_trailing_slash_bug=no \
  gl_cv_func_mkstemp_limitations=no ac_cv_func_working_mktime=yes \
  jm_cv_func_working_re_compile_pattern=yes ac_use_included_regex=no \
  gl_cv_c_restrict=no ac_cv_path_GLIB_GENMARSHAL=/usr/bin/glib-genmarshal \
  ac_cv_prog_F77=no ac_cv_prog_CXX=no ac_cv_path_PKG_CONFIG="$ROOT/$TOOLCHAIN/bin/pkg-config" \
            --enable-static --disable-shared \
            --disable-glibtest"

pre_configure_target() {
  export CFLAGS="$CFLAGS -fPIC"
}
