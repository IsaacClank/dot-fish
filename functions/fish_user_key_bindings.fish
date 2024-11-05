if status is-interactive; and type -q fzf
  function fish_user_key_bindings
    fzf --fish | source
  end
end
