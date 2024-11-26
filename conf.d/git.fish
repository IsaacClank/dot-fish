if status is-interactive; and type -q git;
  function gitss --description 'alias gitss git status --short'
    command git status --short $argv
  end

  function gitaa --description 'alias gaa git add :/'
    command git add :/ $argv
  end

  function gitb --description 'alias gitb git branch'
    command git branch :/ $argv
  end

  function gitcmsg --description 'alias gitcmsg git commit -m'
    command git commit -m $argv
  end

  function gitcan --description 'alias gitcan git commit --amend --no-edit'
    command git commit --amend --no-edit $argv
  end

  function gitf --description 'alias gitf git fetch'
    command git fetch $argv
  end

  function gitfa --description 'alias gitfa git fetch --all'
    command git fetch --all $argv
  end

  function gitlo --description 'alias gitlo git log --oneline --decorate --format=format:"%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset"'
    command git log --oneline --decorate --format=format:'%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset' $argv
  end

  function gitlgo --description 'log --oneline --graph --decorate --format=format:"%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset"'
    command git log --oneline --graph --decorate --format=format:'%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset'
  end

  function gitsw --description 'alias gsw git switch'
    command git switch $argv
  end
end
