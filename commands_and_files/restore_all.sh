# restore shortcuts
dconf load /org/cinnamon/desktop/keybindings/ < commands_and_files/dconf-settings.conf

# restore configs
dconf load /org/cinnamon/ < commands_and_files/cinnamon_desktop_backup
