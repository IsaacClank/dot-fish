if status is-interactive; and type -q fnm;
  set FNM_PATH "$HOME/.local/share/fnm"
  if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env | source
    fnm completions --shell fish | source
  end
end

