if not status is-interactive
  return
end

set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

if type -q nvim;
  set -gx EDITOR 'nvim'
end

set --global fish_key_bindings fish_default_key_bindings
set -U fish_greeting ''
