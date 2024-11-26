if not status is-interactive
  return
end

if test -d ~/.local/bin
  fish_add_path -g ~/.local/bin
end

