if status is-interactive; and type -q systemctl;
  function sys --wraps=systemctl --description 'alias sys systemctl'
    systemctl $argv
  end
end
