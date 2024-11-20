if status is-interactive; and type -q bat; and type -q tail
  function batwatch --description 'alias batwatch tail -f $FILE | bat --paging=never -l log'
    tail -f $argv[1] | bat --paging=never -l log
  end
end
