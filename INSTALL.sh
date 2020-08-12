#!/bin/bash
# STEP ONE: Copying archives
# 1 - Copying over wallpapers (user-wide)
    mkdir ~/.local/share/wallpapers
    \cp -r wallpapers ~/.local/share/wallpapers
# 2 - Copying over fonts (system-wide)
    sudo \cp -r fonts/fira-sans /usr/share/fonts
    sudo \cp -r fonts/fira-sans-code /usr/share/fonts
# 3 - Copying over color schemes, GTK themes and aurorae
    \cp -r themes/color-profiles ~/.local/share/color-schemes
    \cp -r themes/gtk-whitesur-themes ~/.themes
    mkdir ~/.local/share/aurorae
    mkdir ~/.local/share/aurorae/themes
    \cp -r themes/aurorae ~/.local/share/aurorae/themes

# 4 - Copying .desktop files as well as icons
    sudo cp icons/heqro-sun.svg /usr/share/pixmaps
    sudo cp icons/heqro-night.svg /usr/share/pixmaps
    sudo cp icons/heqro-headset.png /usr/share/pixmaps
    sudo cp icons/heqro-joystick.png /usr/share/pixmaps
    mkdir ~/.local/share/heqro-kde-scripting
    \cp -r icons ~/.local/share/heqro-kde-scripting
    \cp -r activity-changing/executables-with-script ~/.local/share/heqro-kde-scripting
    chmod -R +x ~/.local/share/heqro-kde-scripting/executables-with-script
    
# 5 - Copying icons pack
    mkdir ~/.local/share/icons
    
    tar -xf themes/icon-pack/03-Tela-circle-blue.tar.xz -C ~/.local/share/icons

# 6 - Copying over cursor theme
    mkdir ~/.icons
    
    tar -xf themes/cursor-themes/volantes_light_cursors.tar.gz -C ~/.icons

# 7 - Activities set-up

    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A1-Chill" 
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A2-Fiddling"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A3-Studying"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A4-Music"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A5-Gaming" 
    
# 8 - Marking scripts for controlling day and night themes executable
    # - Marking theme script files as executable
    chmod +x theme-changing-scripts/ChangeTheme.sh
    chmod +x theme-changing-scripts/ChangeToDayTheme.desktop
    chmod +x theme-changing-scripts/ChangeToNightTheme.desktop
    # - Moving files where it's due
    \cp -r theme-changing-scripts ~/.local/share/heqro-kde-scripting
    
    
