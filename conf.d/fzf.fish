if status is-interactive; and type -q fzf;
  command fzf --fish | source

  if type -q bat;
    function fzf-preview --description 'alias fzf fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
      command fzf --preview "bat --color=always --style=numbers --line-range=:500 {}" $argv
    end
  end
end
