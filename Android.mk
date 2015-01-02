#
# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

LOCAL_PATH := $(call my-dir)

ifeq (,$(TARGET_BUILD_APPS))

# The following list contains platform-independent functionalities.
#
# Skip apple_versioning.c since it is unused.
# Skip atomic.c since it needs to be built separately according to the docs.
libcompiler_rt_common_SRC_FILES := \
  lib/builtins/absvdi2.c \
  lib/builtins/absvsi2.c \
  lib/builtins/absvti2.c \
  lib/builtins/adddf3.c \
  lib/builtins/addsf3.c \
  lib/builtins/addtf3.c \
  lib/builtins/addvdi3.c \
  lib/builtins/addvsi3.c \
  lib/builtins/addvti3.c \
  lib/builtins/ashldi3.c \
  lib/builtins/ashlti3.c \
  lib/builtins/ashrdi3.c \
  lib/builtins/ashrti3.c \
  lib/builtins/clear_cache.c \
  lib/builtins/clzdi2.c \
  lib/builtins/clzsi2.c \
  lib/builtins/clzti2.c \
  lib/builtins/cmpdi2.c \
  lib/builtins/cmpti2.c \
  lib/builtins/comparedf2.c \
  lib/builtins/comparesf2.c \
  lib/builtins/comparetf2.c \
  lib/builtins/ctzdi2.c \
  lib/builtins/ctzsi2.c \
  lib/builtins/ctzti2.c \
  lib/builtins/divdc3.c \
  lib/builtins/divdf3.c \
  lib/builtins/divdi3.c \
  lib/builtins/divtf3.c \
  lib/builtins/divmoddi4.c \
  lib/builtins/divmodsi4.c \
  lib/builtins/divsc3.c \
  lib/builtins/divsf3.c \
  lib/builtins/divsi3.c \
  lib/builtins/divti3.c \
  lib/builtins/divxc3.c \
  lib/builtins/enable_execute_stack.c \
  lib/builtins/eprintf.c \
  lib/builtins/extenddftf2.c \
  lib/builtins/extendsfdf2.c \
  lib/builtins/extendsftf2.c \
  lib/builtins/ffsdi2.c \
  lib/builtins/ffsti2.c \
  lib/builtins/fixdfdi.c \
  lib/builtins/fixdfsi.c \
  lib/builtins/fixdfti.c \
  lib/builtins/fixsfdi.c \
  lib/builtins/fixsfsi.c \
  lib/builtins/fixsfti.c \
  lib/builtins/fixunsdfdi.c \
  lib/builtins/fixunsdfsi.c \
  lib/builtins/fixunsdfti.c \
  lib/builtins/fixunssfdi.c \
  lib/builtins/fixunssfsi.c \
  lib/builtins/fixunssfti.c \
  lib/builtins/fixunsxfdi.c \
  lib/builtins/fixunsxfsi.c \
  lib/builtins/fixunsxfti.c \
  lib/builtins/fixxfdi.c \
  lib/builtins/fixxfti.c \
  lib/builtins/floatdidf.c \
  lib/builtins/floatdisf.c \
  lib/builtins/floatdixf.c \
  lib/builtins/floatsidf.c \
  lib/builtins/floatsisf.c \
  lib/builtins/floatsitf.c \
  lib/builtins/floattidf.c \
  lib/builtins/floattisf.c \
  lib/builtins/floattixf.c \
  lib/builtins/floatundidf.c \
  lib/builtins/floatundisf.c \
  lib/builtins/floatundixf.c \
  lib/builtins/floatunsidf.c \
  lib/builtins/floatunsisf.c \
  lib/builtins/floatunsitf.c \
  lib/builtins/floatuntidf.c \
  lib/builtins/floatuntisf.c \
  lib/builtins/floatuntixf.c \
  lib/builtins/gcc_personality_v0.c \
  lib/builtins/int_util.c \
  lib/builtins/lshrdi3.c \
  lib/builtins/lshrti3.c \
  lib/builtins/moddi3.c \
  lib/builtins/modsi3.c \
  lib/builtins/modti3.c \
  lib/builtins/muldc3.c \
  lib/builtins/muldf3.c \
  lib/builtins/muldi3.c \
  lib/builtins/mulodi4.c \
  lib/builtins/mulosi4.c \
  lib/builtins/muloti4.c \
  lib/builtins/mulsc3.c \
  lib/builtins/mulsf3.c \
  lib/builtins/multf3.c \
  lib/builtins/multi3.c \
  lib/builtins/mulvdi3.c \
  lib/builtins/mulvsi3.c \
  lib/builtins/mulvti3.c \
  lib/builtins/mulxc3.c \
  lib/builtins/negdf2.c \
  lib/builtins/negdi2.c \
  lib/builtins/negsf2.c \
  lib/builtins/negti2.c \
  lib/builtins/negvdi2.c \
  lib/builtins/negvsi2.c \
  lib/builtins/negvti2.c \
  lib/builtins/paritydi2.c \
  lib/builtins/paritysi2.c \
  lib/builtins/parityti2.c \
  lib/builtins/popcountdi2.c \
  lib/builtins/popcountsi2.c \
  lib/builtins/popcountti2.c \
  lib/builtins/powidf2.c \
  lib/builtins/powisf2.c \
  lib/builtins/powitf2.c \
  lib/builtins/powixf2.c \
  lib/builtins/subdf3.c \
  lib/builtins/subsf3.c \
  lib/builtins/subtf3.c \
  lib/builtins/subvdi3.c \
  lib/builtins/subvsi3.c \
  lib/builtins/subvti3.c \
  lib/builtins/trampoline_setup.c \
  lib/builtins/truncdfsf2.c \
  lib/builtins/trunctfdf2.c \
  lib/builtins/trunctfsf2.c \
  lib/builtins/ucmpdi2.c \
  lib/builtins/ucmpti2.c \
  lib/builtins/udivdi3.c \
  lib/builtins/udivmoddi4.c \
  lib/builtins/udivmodsi4.c \
  lib/builtins/udivmodti4.c \
  lib/builtins/udivsi3.c \
  lib/builtins/udivti3.c \
  lib/builtins/umoddi3.c \
  lib/builtins/umodsi3.c \
  lib/builtins/umodti3.c

# ARM-specific runtimes
libcompiler_rt_arm_SRC_FILES := \
  lib/builtins/arm/aeabi_dcmp.S \
  lib/builtins/arm/aeabi_div0.c \
  lib/builtins/arm/aeabi_fcmp.S \
  lib/builtins/arm/aeabi_idivmod.S \
  lib/builtins/arm/aeabi_ldivmod.S \
  lib/builtins/arm/aeabi_memcmp.S \
  lib/builtins/arm/aeabi_memcpy.S \
  lib/builtins/arm/aeabi_memmove.S \
  lib/builtins/arm/aeabi_memset.S \
  lib/builtins/arm/aeabi_uidivmod.S \
  lib/builtins/arm/aeabi_uldivmod.S \
  lib/builtins/arm/comparesf2.S \
  lib/builtins/arm/divmodsi4.S \
  lib/builtins/arm/divsi3.S \
  lib/builtins/arm/modsi3.S \
  lib/builtins/arm/udivmodsi4.S \
  lib/builtins/arm/udivsi3.S \
  lib/builtins/arm/umodsi3.S

# ARM64-specific runtimes
libcompiler_rt_arm64_SRC_FILES :=

# MIPS-specific runtimes
libcompiler_rt_mips_SRC_FILES := # nothing to add
libcompiler_rt_mips64_SRC_FILES := # nothing to add

# X86-specific runtimes
libcompiler_rt_x86_SRC_FILES := \
  lib/builtins/i386/ashldi3.S \
  lib/builtins/i386/ashrdi3.S \
  lib/builtins/i386/divdi3.S \
  lib/builtins/i386/floatdidf.S \
  lib/builtins/i386/floatdisf.S \
  lib/builtins/i386/floatdixf.S \
  lib/builtins/i386/floatundidf.S \
  lib/builtins/i386/floatundisf.S \
  lib/builtins/i386/floatundixf.S \
  lib/builtins/i386/lshrdi3.S \
  lib/builtins/i386/moddi3.S \
  lib/builtins/i386/muldi3.S \
  lib/builtins/i386/udivdi3.S \
  lib/builtins/i386/umoddi3.S

# X86_64-specific runtimes
libcompiler_rt_x86_64_SRC_FILES := \
  lib/builtins/x86_64/floatundixf.S \
  lib/builtins/x86_64/floatdisf.c \
  lib/builtins/x86_64/floatdidf.c \
  lib/builtins/x86_64/floatdixf.c \
  lib/builtins/x86_64/floatundisf.S \
  lib/builtins/x86_64/floatundidf.S

# PPC-specific runtimes
libcompiler_rt_ppc_SRC_FILES := \
  lib/builtins/ppc/divtc3.c \
  lib/builtins/ppc/fixtfdi.c \
  lib/builtins/ppc/fixunstfdi.c \
  lib/builtins/ppc/floatditf.c \
  lib/builtins/ppc/floatunditf.c \
  lib/builtins/ppc/gcc_qadd.c \
  lib/builtins/ppc/gcc_qdiv.c \
  lib/builtins/ppc/gcc_qmul.c \
  lib/builtins/ppc/gcc_qsub.c \
  lib/builtins/ppc/multc3.c

# The following list contains functions that are not available in libgcc.a, so
# we potentially need them when using a Clang-built component (e.g., -ftrapv
# with 64-bit integer multiplies. See http://llvm.org/bugs/show_bug.cgi?id=14469.)
libcompiler_rt_extras_SRC_FILES := \
  lib/builtins/mulodi4.c

# $(1): arch
define get-libcompiler-rt-source-files
  $(if $(findstring $(1),arm),$(call get-libcompiler-rt-arm-source-files),
      $(if $(findstring $(1),mips),$(call get-libcompiler-rt-mips-source-files),
          $(if $(findstring $(1),x86),$(call get-libcompiler-rt-x86-source-files),
             $(if $(findstring $(1),x86_64),$(call get-libcompiler-rt-x86_64-source-files),
                 $(if $(findstring $(1),x32),$(call get-libcompiler-rt-x86-source-files),
                    $(if $(findstring $(1),arm64),$(call get-libcompiler-rt-arm64-source-files),
                       $(if $(findstring $(1),mips64),$(call get-libcompiler-rt-mips64-source-files),
                          $(if $(findstring $(1),ppc),$(call get-libcompiler-rt-ppc-source-files),
  $(error Unsupported ARCH $(1))))))))))
endef

# $(1): source list
# $(2): arch
#
# If lib/builtins/<arch>/X.[cS] is included in the source list, we should filter out lib/builtins/X.c
# in the result source list (i.e., use the one optimized for the arch.) Otherwise
# there'll be multiple definitions for one symbol.
define filter-libcompiler-rt-common-source-files
  $(filter-out $(patsubst lib/builtins/$(strip $(2))/%.S,lib/builtins/%.c,\
                          $(filter lib/builtins/$(strip $(2))/%.S,$(1))) \
               $(patsubst lib/builtins/$(strip $(2))/%.c,lib/builtins/%.c,\
                          $(filter lib/builtins/$(strip $(2))/%.c,$(1))),$(1))
endef

define get-libcompiler-rt-arm-common-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_arm_SRC_FILES), arm)
endef

# $(1): common runtime list
#
# Add ARM runtimes implemented in VFP
define add-libcompiler-rt-arm-vfp-source-files
  $(filter-out $(addprefix lib/builtins/,adddf3.c addsf3.c comparedf2.c comparesf2.c         \
                                         arm/comparesf2.S divdf3.c divsf3.c extendsfdf2.c    \
                                         fixdfsi.c fixsfsi.c fixunsdfsi.c fixunssfsi.c       \
                                         floatsidf.c floatsisf.c floatunsidf.c floatunsisf.c \
                                         muldf3.c mulsf3.c negdf2.c negsf2.c subdf3.c        \
                                         subsf3.c truncdfsf2.c),$(1)) lib/builtins/arm/vfp_alias.S
endef

define get-libcompiler-rt-arm-source-files
  $(if $(findstring $(ARCH_ARM_HAVE_VFP),true),
      $(call add-libcompiler-rt-arm-vfp-source-files,
          $(call get-libcompiler-rt-arm-common-source-files)),
      $(call get-libcompiler-rt-arm-common-source-files))
endef

define get-libcompiler-rt-arm64-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_arm64_SRC_FILES),arm64)
endef

define get-libcompiler-rt-mips-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_mips_SRC_FILES),mips)
endef

define get-libcompiler-rt-mips64-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_mips64_SRC_FILES),mips64)
endef

define get-libcompiler-rt-x86-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_x86_SRC_FILES),i386)
endef

define get-libcompiler-rt-x86_64-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_x86_64_SRC_FILES),x86_64)
endef

define get-libcompiler-rt-ppc-source-files
  $(call filter-libcompiler-rt-common-source-files,
      $(libcompiler_rt_common_SRC_FILES) \
      $(libcompiler_rt_ppc_SRC_FILES),ppc)
endef

#=====================================================================
# Device Static Library: libcompiler_rt-extras
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE := libcompiler_rt-extras
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_CLANG := true
LOCAL_SRC_FILES := $(libcompiler_rt_extras_SRC_FILES)
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

# Don't build compiler-rt without clang
ifneq ($(WITHOUT_TARGET_CLANG), true)

#=====================================================================
# Device Static Library: libcompiler_rt
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE := libcompiler_rt
LOCAL_CFLAGS_arm += -D__ARM_EABI__
LOCAL_ASFLAGS := -integrated-as
LOCAL_CLANG := true
LOCAL_SRC_FILES_arm := $(call get-libcompiler-rt-source-files,arm)
LOCAL_SRC_FILES_arm64 := $(call get-libcompiler-rt-source-files,arm64)
LOCAL_SRC_FILES_mips := $(call get-libcompiler-rt-source-files,mips)
LOCAL_SRC_FILES_mips64 := $(call get-libcompiler-rt-source-files,mips64)
LOCAL_SRC_FILES_x86 := $(call get-libcompiler-rt-source-files,x86)
LOCAL_SRC_FILES_x86_64 := $(call get-libcompiler-rt-source-files,x86_64)
LOCAL_MODULE_TARGET_ARCH := arm arm64 mips mips64 x86 x86_64
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

#=====================================================================
# Host Static Library: libcompiler_rt
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE := libcompiler_rt
LOCAL_ASFLAGS := -integrated-as
LOCAL_CLANG := true
ifeq ($(HOST_ARCH),ppc)
LOCAL_SRC_FILES := $(call get-libcompiler-rt-source-files,ppc)
else
LOCAL_SRC_FILES := $(call get-libcompiler-rt-source-files,x86_64)
endif
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
LOCAL_MULTILIB := both

include $(BUILD_HOST_STATIC_LIBRARY)

#=====================================================================
# Device Static Library: libprofile_rt
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE = libprofile_rt
LOCAL_SRC_FILES = lib/profile/GCDAProfiling.c

include $(BUILD_STATIC_LIBRARY)

#=====================================================================
# Device Shared Library: libcompiler_rt
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE := libcompiler_rt
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
LOCAL_WHOLE_STATIC_LIBRARIES := libcompiler_rt
LOCAL_SHARED_LIBRARIES := libdl
LOCAL_STATIC_LIBRARIES_arm := libunwind_llvm
LOCAL_STATIC_LIBRARIES_arm64 := libunwindbacktrace
LOCAL_STATIC_LIBRARIES_mips := libunwindbacktrace
LOCAL_STATIC_LIBRARIES_mips64 := libunwindbacktrace
LOCAL_STATIC_LIBRARIES_x86 := libunwindbacktrace
LOCAL_STATIC_LIBRARIES_x86_64 := libunwindbacktrace
LOCAL_MODULE_TARGET_ARCH := arm arm64 mips mips64 x86 x86_64

include $(BUILD_SHARED_LIBRARY)

# Build ASan
include $(LOCAL_PATH)/lib/asan/Android.mk

#=====================================================================
# Host Shared Library: libcompiler_rt
#=====================================================================

include $(CLEAR_VARS)

LOCAL_MODULE := libcompiler_rt
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
LOCAL_WHOLE_STATIC_LIBRARIES := libcompiler_rt
ifneq ($(HOST_OS),darwin)
LOCAL_STATIC_LIBRARIES := libunwindbacktrace
endif
LOCAL_CPPFLAGS := -nostdinc++
LOCAL_LDFLAGS := -nodefaultlibs
LOCAL_LDLIBS := -lpthread -lc -lm
LOCAL_MULTILIB := both

include $(BUILD_HOST_SHARED_LIBRARY)

endif

endif # TARGET_BUILD_APPS only
