if status is-interactive; and type -q eza
  function ls --wraps=exa --wraps='eza --group-directories-first' --description 'alias ls eza --group-directories-first'
    eza --group-directories-first $argv
  end
end
