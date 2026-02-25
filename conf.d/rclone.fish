if status is-interactive; and type -q rclone;
  function obsidian-pull --wraps='rclone sync gdrive:/Obsidian/ ~/.local/share/obsidian/ --progress'
    rclone sync gdrive:/Obsidian/ ~/.local/share/obsidian/ --progress $argv
  end

  function obsidian-push --wraps='rclone sync ~/.local/share/obsidian/ gdrive:/Obsidian/ --progress'
    rclone sync ~/.local/share/obsidian/ gdrive:/Obsidian/ --progress $argv
  end
end
