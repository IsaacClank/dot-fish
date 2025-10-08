if status is-interactive; and type -q fzf
  function fish_user_key_bindings
    fzf --fish | source

    bind -M default \cg\cs 'commandline; git_switch_fzf; commandline -f repaint'
  end
end
