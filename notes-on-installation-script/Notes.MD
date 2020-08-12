Path para los scripts para mí: ~/bin

Path para los scripts para un usuario genérico: /usr/local/bin

¿Realmente necesito tener un script a nivel general cuando me lo puedo pasar todo a mi carpeta de ~/.local/share/heqro-kde-scripting?

- Problemas
    - de ubicaciones de archivos que ejecutan scripts
        * theme-changing-scripts lo tiene resuelto
        * necesito mover el script que cambia de actividad a ~/bin para que los archivos .desktop lo tengan más fácil, y, en definitiva, todos los que pueda hacer desde ese momento en adelante. 
            -> Sin embargo, ahora lo estoy manteniendo todo en heqro-kde-scripting como ubicación generalizada y no está dándome ningún tipo de problema raro porque en definitiva se trata de scripts que no necesitaré llamar de forma general más que desde los iconos que los invoquen.

- THEMES (big problem)

    Tengo que exportar los temas para que lookandfeeltool las reconozca, o sino el coso de los temas empezará a fallar
    
    * Cambiar nombres de lookandfeeltool
    
    Usar ubicación relativa en el script de instalación y moverlo todo donde corresponda
    
    Pasos previos:
    - Update system from command line
    sudo pacman -Syyu
    - Lista de programas que necesito instalar

audacity
cantor
chromium
gnome-disk-utility
gimp
kdenlive
kdevelop
kmail
krita
latte-dock
simplescreenrecorder
kio-gdrive
ocs-url
texmacs
wine
onlyoffice-desktopeditors

# armagetronad
# lutris
    

    Successive steps
    
1. Copying over wallpapers in a user-wide scope.

    \cp -r wallpapers ~/.local/share/wallpapers

2. Move fonts (system-wide, just in case)

    # carpeta de salida: fonts/fira-sans  y  fonts/fira-sans-code
    
    # carpeta de llegada: /usr/share/fonts/
    
    ~~~
    sudo \cp -r fonts/fira-sans /usr/share/fonts
    
    sudo \cp -r fonts/fira-sans-code /usr/share/fonts
    ~~~
    
3. Copying over color schemes, GTK themes & aurorae

    ~~~
    # copying color schemes
    
    \cp -r themes/color-profiles ~/.local/share/color-schemes
    
    # copying GTK themes
    
    \cp -r themes/gtk-whitesur-themes ~/.themes
    
    # copying aurorae files
    
    \cp -r themes/aurorae ~/.local/share/aurorae/themes
    ~~~
    
4. Move .desktop files (just copying them over will mark them as executable files)
    ~~~
    # ALTERNATIVA 1 - ruta de llegada: ~/.local/share/applications

    \cp -r activity-changing/executables/. ~/.local/share/applications
    
    # ALTERNATIVA 2 - Todo en la misma ruta de llegada (me convence esta opción más)
    
    mkdir ~/.local/share/heqro-kde-scripting
    
    \cp -r activity-changing/executables ~/.local/share/heqro-kde-scripting
    
    chmod -R +x ~/.local/share/heqro-kde-scripting/executables
    ~~~
    
5. Copying icons pack (done)

    # from: themes/icon-pack
    
    # to: ~/.local/share/icons
    
    tar -xf themes/icon-pack/03-Tela-circle-blue.tar.xz -C ~/.local/share/icons
    
    tar -xf themes/icon-pack/Simply_Circles_Icons.tar.xz -C ~/.local/share/icons

6. Move cursor theme (done)
    
    tar -xf themes/cursor-themes/volantes_light_cursors.tar.xz -C ~/.icons
    
    
7. Activities set-up 
    
    - activities creation (done)
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A1-Chill" 
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A2-Fiddling"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A3-Studying"
    
    qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A4-Music"
    
    # qdbus org.kde.ActivityManager /ActivityManager/Activities AddActivity "A5-Gaming" 
    
8. 
    1. Ownership over script files (write)
    
    ~~~
    chmod +x activity-changing/scripts-desktop-files/ChangeActivity.sh
    chmod +x theme-changing-scripts/CambiarTema.sh
    chmod +x theme-changing-scripts/CambiarDia.desktop
    chmod +x theme-changing-scripts/CambiarNoche.desktop
    ~~~
    
    2. Moving files to where it's due
    
    ~~~
    mkdir ~/.local/share/heqro-kde-scripting
    \cp -r theme-changing-scripts ~/.local/share/heqro-kde-scripting
    ~~~

9. Installing my go-to plasmoids
    tar -xf themes/plasmoids/com.github.zren.tiledmenu.tar.gz -C ~/.local/share/plasma/plasmoids
    tar -xf themes/plasmoids/org.kde.plasma.eventcalendar.tar.gz -C ~/.local/share/plasma/plasmoids

PENÚLTIMO - Mover look and feel
    #ruta de llegada: ~/.local/share/plasma/look-and-feel
ALTERNATIVA - Activar todo desde la terminal.

ÚLTIMO - Mover atajos del teclado
