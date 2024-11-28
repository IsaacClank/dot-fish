if status is-interactive; and type -q git;
  abbr -a gitaa git add :/

  abbr -a gitb git branch
  abbr -a gitbD git branch -D
  abbr -a gitbn git rev-parse --abbrev-ref HEAD

  abbr -a gitc git commit
  abbr -a gitcan git commit --amend --no-edit
  abbr -a gitcmsg git commit -m

  abbr -a gitf git fetch
  abbr -a gitfa git fetch --all

  abbr -a gits git status
  abbr -a gitss git status --short

  abbr -a gitpu git push
  abbr -a gitpuu git push -u origin

  abbr -a gitre git restore
  abbr -a gitresa git restore --staged :/

  abbr -a gitsw git switch
  abbr -a gitswc git switch -c

  function git_log --description 'alias gitlo git log --oneline --decorate --format=format:"%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset"'
    command git log --oneline --decorate --format=format:'%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset'
  end

  function git_log_g --description 'log --oneline --graph --decorate --format=format:"%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset"'
    command git log --oneline --graph --decorate --format=format:'%C(yellow)%h%Creset %s %Cblue%cr%Creset %Cgreen%an%Cred%d%Creset'
  end
end
