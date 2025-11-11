{
  config,
  pkgs,
  ...
}: {
  home.file = {
    ".clang-format".source = config.lib.file.mkOutOfStoreSymlink ./clang-format;
  };
}
