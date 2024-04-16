#! bin/bash

source locales/us-en/strings.sh

SESSION_TYPE=$XDG_SESSION_TYPE

CHOICE=$(whiptail --title "$TITLE" --cancel-button "Exit" --menu "$MENU" 15 50 4 \
    1 "Install Mod" \
    2 "Uninstall Mod" \
    3 "Test Keyboard" \
    3>&1 1>&2 2>&3)

if [ "$CHOICE" == "1" ]; then
    bash TUI/install_mod.sh
elif [ "$CHOICE" == "2" ]; then
    bash TUI/uninstall_mod.sh
elif [ "$CHOICE" == "3" ]; then
    bash TUI/test_keyboard.sh
elif [ -z "$CHOICE" ]; then
    exit 0
fi