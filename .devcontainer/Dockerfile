FROM mcr.microsoft.com/devcontainers/cpp:0-ubuntu-22.04

ARG REINSTALL_LLVM_VERSION="16"
ARG INSTALL_BAZEL_VERSION="6.2.1"
ARG INSTALL_BAZEL_BUILDTOOLS_VERSION="v6.1.2"

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends lsb-release wget software-properties-common gnupg

COPY ./reinstall-llvm.sh /tmp/

RUN if [ "${REINSTALL_LLVM_VERSION}" != "none" ]; then \
        chmod +x /tmp/reinstall-llvm.sh && /tmp/reinstall-llvm.sh ${REINSTALL_LLVM_VERSION}; \
    fi \
    && rm -f /tmp/reinstall-llvm.sh

COPY ./install-bazel.sh /tmp/

RUN if [ "${INSTALL_BAZEL_VERSION}" != "none" ]; then \
        chmod +x /tmp/install-bazel.sh && /tmp/install-bazel.sh ${INSTALL_BAZEL_VERSION} ${INSTALL_BAZEL_BUILDTOOLS_VERSION}; \
    fi \
    && rm -f /tmp/install-bazel.sh
