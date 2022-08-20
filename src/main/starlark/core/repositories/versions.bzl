# All versions for development and release
version = provider(
    fields = {
        "url_templates": "list of string templates with the placeholder {version}",
        "version": "the version in the form \\D+.\\D+.\\D+(.*)",
        "sha256": "sha256 checksum for the version being downloaded.",
    },
)

versions = struct(
    RULES_NODEJS_VERSION = "1.7.0",
    RULES_NODEJS_SHA = "84abf7ac4234a70924628baa9a73a5a5cbad944c4358cf9abdb4aab29c9a5b77",
    BAZEL_TOOLCHAINS_VERSION = "4.1.0",
    BAZEL_TOOLCHAINS_SHA = "179ec02f809e86abf56356d8898c8bd74069f1bd7c56044050c2cd3d79d0e024",
    SKYLIB_VERSION = "1.0.3",
    SKYLIB_SHA = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    PROTOBUF_VERSION = "3.11.3",
    PROTOBUF_SHA = "cf754718b0aa945b00550ed7962ddc167167bd922b842199eeb6505e6f344852",
    BAZEL_DEPS_VERSION = "0.1.0",
    BAZEL_DEPS_SHA = "05498224710808be9687f5b9a906d11dd29ad592020246d4cd1a26eeaed0735e",
    RULES_JVM_EXTERNAL_TAG = "4.2",
    RULES_JVM_EXTERNAL_SHA = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca",
    RULES_PROTO_GIT_COMMIT = "f6b8d89b90a7956f6782a4a3609b2f0eee3ce965",
    RULES_PROTO_SHA = "4d421d51f9ecfe9bf96ab23b55c6f2b809cbaf0eea24952683e397decfbd0dd0",
    IO_BAZEL_STARDOC_VERSION = "0.5.1",
    IO_BAZEL_STARDOC_SHA = "5bcd62378fc5ea87936169b49245d0595c690bde41ef695ce319752cc9929c34",
    BAZEL_JAVA_LAUNCHER_VERSION = "5.0.0",
    PINTEREST_KTLINT = version(
        version = "0.47.0",
        url_templates = [
            "https://github.com/pinterest/ktlint/releases/download/{version}/ktlint",
        ],
        sha256 = "36e3641018c559492214ab9dd6c30575890edb3d84034dd73daca50b46316384",
    ),
    KOTLIN_CURRENT_COMPILER_RELEASE = version(
        version = "1.7.10",
        url_templates = [
            "https://github.com/JetBrains/kotlin/releases/download/v{version}/kotlin-compiler-{version}.zip",
        ],
        sha256 = "7683f5451ef308eb773a686ee7779a76a95ed8b143c69ac247937619d7ca3a09",
    ),
    ANDROID = struct(
        VERSION = "0.1.1",
        SHA = "cd06d15dd8bb59926e4d65f9003bfc20f9da4b2519985c27e190cddc8b7a7806",
        URLS = ["https://github.com/bazelbuild/rules_android/archive/v%s.zip" % "0.1.1"],
        BUILD_TOOLS = "30.0.3",
    ),
    PYTHON = struct(
        VERSION = "0.2.0",
    ),
    CORE = {
        "rkt_1_7": struct(
            prefix = "1.7",
        ),
        "rkt_1_6": struct(
            prefix = "1.6",
        ),
        "rkt_1_5": struct(
            prefix = "1.5",
        ),
        "rkt_1_4": struct(
            prefix = "1.4",
        ),
        "legacy": None,
    },
    # To update: https://github.com/bazelbuild/bazel-toolchains#latest-bazel-and-latest-ubuntu-1604-container
    RBE = struct(
        # This tarball intentionally does not have a SHA256 because the upstream URL can change without notice
        # For more context: https://github.com/bazelbuild/bazel-toolchains/blob/0c1f7c3c5f9e63f1e0ee91738b964937eea2d3e0/WORKSPACE#L28-L32
        URLS = ["https://storage.googleapis.com/rbe-toolchain/bazel-configs/rbe-ubuntu1604/latest/rbe_default.tar"],
    ),
)
