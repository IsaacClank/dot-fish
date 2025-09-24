if not status is-interactive;
  return
end

if not type -q podman; and type -q podman.exe
  alias podman podman.exe
end
