# C++ template

## C++ version

The `.bazelrc` file is defining C++20, change the following line for another version:

```
build --action_env=BAZEL_CXXOPTS="-std=c++20"
```

## Testing

GTest 1.12.1 is available for testing.

## Availability

This template is inteded to be used with VSCode on a development container and targeting/packaging to Linux.
The environment contains some extensions that will aid the development.

## Clangd integration

For proper clangd integration run the following command after changing the bazel structure:
```sh
bazel run @hedron_compile_commands//:refresh_all
```