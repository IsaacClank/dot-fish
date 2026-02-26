if status is-interactive;
  if not type -q bw; and type -q flatpak;
    set -f cmd 'flatpak run --command=bw com.bitwarden.desktop'

    function bw --wraps='flatpak run --command=bw com.bitwarden.desktop' --description 'alias bw flatpak run --command=bw com.bitwarden.desktop'
      flatpak run --command=bw com.bitwarden.desktop $argv
    end
  end

  function bw-sync
    bw sync
    set -Ux BW_ITEMS (bw list items)
  end

  function bw-get-pass
    set -l selected_item (echo $BW_ITEMS | jq -r 'map({name, "username": (.login.username)} | "\\(.name) | \\(.username)")[]' | fzf)
    if test -z $selected_item
      return
    end

    set -l selected_item_segments (string split ' | ' $selected_item)
    echo $BW_ITEMS | jq -r "map(select(.name == \"$selected_item_segments[1]\" and .login.username == \"$selected_item_segments[2]\") | .login.password) | first" | fish_clipboard_copy
  end
end
