#!/bin/bash

ACK="https://android.googlesource.com"
ACK_BRANCH="master-kernel-build-2022"

git clone --depth=1 https://github.com/carlodandan/android_kernel_samsung_a05s -b A13 ./kernel_platform/msm-kernel
cd kernel_platform/msm-kernel; git submodule update --init --recursive; cd ../..
git clone --depth=1 https://github.com/carlodandan/android_kernel_common_a05s -b A13 ./kernel_platform/common
cd kernel_platform/common; git submodule update --init --recursive; cd ../..
git clone --depth=1 ${ACK}/platform/prebuilts/jdk/jdk11 -b ${ACK_BRANCH} ./kernel_platform/prebuilts/jdk/jdk11
git clone --depth=1 ${ACK}/platform/prebuilts/clang/host/linux-x86 -b ${ACK_BRANCH} ./kernel_platform/prebuilts/clang/host/linux-x86
git clone --depth=1 ${ACK}/platform/prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8 -b ${ACK_BRANCH} ./kernel_platform/prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.17-4.8
git clone --depth=1 ${ACK}/platform/prebuilts/build-tools -b ${ACK_BRANCH} ./kernel_platform/prebuilts/build-tools
git clone --depth=1 ${ACK}/kernel/prebuilts/build-tools -b ${ACK_BRANCH} ./kernel_platform/prebuilts/kernel-build-tools
git clone --depth=1 ${ACK}/platform/prebuilts/bazel/linux-x86_64 -b ${ACK_BRANCH} ./kernel_platform/prebuilts/bazel/linux-x86_64
git clone --depth=1 ${ACK}/toolchain/prebuilts/ndk/r23 -b ${ACK_BRANCH} ./kernel_platform/prebuilts/ndk-r23



