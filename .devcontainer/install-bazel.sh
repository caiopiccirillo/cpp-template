#!/usr/bin/env bash
set -e

BAZEL_VERSION=${1:-"none"}

if [ "${BAZEL_VERSION}" = "none" ]; then
    echo "No Bazel version specified, skipping Bazel reinstallation"
    exit 0
fi

echo "Installing Bazel..."
mkdir -p /opt/bazel
cd /opt/bazel
wget -O bazel.sh https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh
chmod +x bazel.sh
./bazel.sh 
