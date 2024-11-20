if not status is-interactive; and not type -q docker;
  return
end

function dk --wraps=docker --description 'alias dk docker'
  command docker $argv
end

function dkc --wraps=docker-compose --description 'alias dkc docker-compose'
  command docker-compose $argv
end
