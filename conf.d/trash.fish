if status is-interactive; and type -q trash;
  function rm --wraps=trash --description 'alias rm trash'
    command trash $argv
  end
end
