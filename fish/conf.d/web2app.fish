function web2app
    if test (count $argv) -lt 3
        echo "Usage: web2app <AppName> <AppURL> <IconURL> (IconURL must be in PNG -- use https://dashboardicons.com) <AppSearch> (Optional)"
        return 1
    end

    set APP_NAME $argv[1]
    set APP_URL $argv[2]
    set ICON_URL $argv[3]
    set APP_SEARCH $argv[4]
    set ICON_DIR "$HOME/.local/share/applications/icons"
    set DESKTOP_FILE "$HOME/.local/share/applications/$APP_NAME.desktop"
    set ICON_PATH "$ICON_DIR/$APP_NAME.png"
    set APP_NAME_LOWER (string lower $APP_NAME)
    set APP_COMMENT "$APP_SEARCH,$APP_NAME_LOWER,$APP_SEARCH"
    mkdir -p $ICON_DIR

    if not curl -sL -o $ICON_PATH $ICON_URL
        echo "Error: Failed to download icon."
        return 1
    end

    echo "[Desktop Entry]
Version=1.0
Name=$APP_NAME
Comment=$APP_COMMENT
Exec=brave --new-window --ozone-platform=wayland --app=\"$APP_URL\" --name=\"$APP_NAME\" --class=\"$APP_NAME\"
Terminal=false
Type=Application
Icon=$ICON_PATH
StartupNotify=true" >$DESKTOP_FILE

    chmod +x $DESKTOP_FILE
end

function web2app-remove
    if test (count $argv) -ne 1
        echo "Usage: web2app-remove <AppName>"
        return 1
    end

    set APP_NAME $argv[1]
    set ICON_DIR "$HOME/.local/share/applications/icons"
    set DESKTOP_FILE "$HOME/.local/share/applications/$APP_NAME.desktop"
    set ICON_PATH "$ICON_DIR/$APP_NAME.png"

    rm $DESKTOP_FILE
    rm $ICON_PATH
end
