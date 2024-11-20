if status is-interactive; and test -d "$HOME/.local/share/fnm"
  fish_add_path -g "$HOME/.local/share/fnm"
  fnm env | source
end

