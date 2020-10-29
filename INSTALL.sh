#!/bin/bash
    echo "1 - Copying over wallpapers (user-wide)..."
    mkdir ~/.local/share/wallpapers
    \cp -r wallpapers ~/.local/share/wallpapers
    echo "2 - Copying over fonts (system-wide)..."
    sudo \cp -r fonts/. /usr/share/fonts
    #sudo \cp -r fonts/fira-sans-code /usr/share/fonts
    echo "3 - Copying over color schemes, GTK themes and aurorae..."
    \cp -r themes/color-profiles ~/.local/share/color-schemes
    \cp -r themes/gtk-whitesur-themes ~/.themes
    mkdir ~/.local/share/aurorae
    mkdir ~/.local/share/aurorae/themes
    \cp -r themes/aurorae/. ~/.local/share/aurorae/themes

    echo "4 - Copying .desktop files as well as icons..."
    sudo \cp -r icons/* /usr/share/pixmaps
    mkdir ~/.local/share/heqro-kde-scripting
    \cp -r activity-changing ~/.local/share/heqro-kde-scripting
    chmod -R +x ~/.local/share/heqro-kde-scripting/activity-changing
    
    echo "5 - Copying icons pack..."
    mkdir ~/.local/share/icons
    
    tar -xf themes/icon-pack/Tela-circle-blue.tar.xz -C ~/.local/share/icons

    tar -xf themes/icon-pack/Papirus-icon-theme.tar.xz -C ~/.local/share/icons
    
    echo "6 - Copying over cursor theme..."
    mkdir ~/.icons
    
    tar -xf themes/cursor-themes/volantes_light_cursors.tar.gz -C ~/.icons

    echo "7 - Activities set-up..."

    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A1-Chill" 
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A2-Fiddling"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A3-Studying"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A4-Music"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A5-Gaming" 
    
    echo "8 - Marking scripts for controlling day and night themes executable and moving files where it's due"
    
    chmod +x theme-changing-scripts/ChangeTheme.sh
    chmod +x theme-changing-scripts/ChangeToDayTheme.desktop
    chmod +x theme-changing-scripts/ChangeToNightTheme.desktop
    
    \cp -r theme-changing-scripts ~/.local/share/heqro-kde-scripting
    
    echo "9 - Exporting plasmoids"
    mkdir ~/.local/share/plasma
    mkdir ~/.local/share/plasma/plasmoids
    # \cp -r themes/plasmoids/. ~/.local/share/plasma/plasmoids
    
    tar -xf themes/plasmoids/com.github.zren.tiledmenu.tar.gz -C ~/.local/share/plasma/plasmoids
    
    tar -xf themes/plasmoids/org.kde.plasma.eventcalendar.tar.gz -C ~/.local/share/plasma/plasmoids
    
    tar -xf themes/plasmoids/org.kde.plasma.private.systemtray.tar.gz -C ~/.local/share/plasma/plasmoids
    
    tar -xf themes/plasmoids/org.kde.plasma.systemtray.tar.gz -C ~/.local/share/plasma/plasmoids
    
    echo "10 - Exporting look-and-feel"
    mkdir ~/.local/share/plasma/look-and-feel
    \cp -r themes/look-and-feel ~/.local/share/plasma/
    
    echo "11 - Applying icon theme"
    /usr/lib/plasma-changeicons Papirus

