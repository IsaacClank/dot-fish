if status is-interactive; and type -q cargo;
  if test -d ~/.cargo/bin
    fish_add_path -g ~/.cargo/bin
  end
end
