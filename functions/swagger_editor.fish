function swagger_editor
  if type -q podman;
    set -f cmd 'podman'
  else if type -q podman.exe;
    set -f cmd 'podman.exe'
  else
    echo 'podman command not found'
    return
  end

  command $cmd pull docker.swagger.io/swaggerapi/swagger-editor
  command $cmd run --name swagger-editor --rm -dp 5001:8080 docker.swagger.io/swaggerapi/swagger-editor
end
