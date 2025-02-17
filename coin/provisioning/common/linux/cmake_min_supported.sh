#!/usr/bin/env bash
# Copyright (C) 2016 The Qt Company Ltd.
# SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

# This script installs the minimum supported CMake to build Qt

# shellcheck source=../unix/InstallFromCompressedFileFromURL.sh
source "${BASH_SOURCE%/*}/../unix/InstallFromCompressedFileFromURL.sh"
# shellcheck source=../unix/SetEnvVar.sh
source "${BASH_SOURCE%/*}/../unix/SetEnvVar.sh"

majorminorversion="3.22"
version="3.22.6"
PrimaryUrl="http://ci-files01-hki.ci.qt.io/input/cmake/cmake-$version-linux-x86_64.tar.gz"
AltUrl="https://cmake.org/files/v$majorminorversion/cmake-$version-linux-x86_64.tar.gz"
SHA1="4a5ba17568d108d295719850dd584e775583f61b"
targetFolder="/opt/cmake-$version"
appPrefix="cmake-$version-linux-x86_64"

InstallFromCompressedFileFromURL "$PrimaryUrl" "$AltUrl" "$SHA1" "$targetFolder" "$appPrefix"

SetEnvVar "CMAKE_MIN_SUPPORTED_BIN_PATH" "$targetFolder/bin"

echo "CMake Min Supported = $version" >> ~/versions.txt

