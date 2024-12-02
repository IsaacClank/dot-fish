if status is-interactive
  if test -x "$HOME/.dotnet/dotnet"
    set -gx DOTNET_ROOT "$HOME/.dotnet"
  else if test -x "/usr/share/dotnet/dotnet"
    set -gx DOTNET_ROOT "/usr/share/dotnet"
  end

  fish_add_path -g "$DOTNET_ROOT"
  fish_add_path -g "$DOTNET_ROOT/tools"
end
