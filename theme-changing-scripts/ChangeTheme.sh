#!/bin/bash 
if [ $1 = "Night" ]
then
    # choosing global theme
    lookandfeeltool -a 'heqroDark'
    # copying over GTK configuration files
    \cp ~/.local/share/heqro-kde-scripting/theme-changing-scripts/NightSettings/settings.ini ~/.config/gtk-3.0
    # change terminal profile
        #konsoleprofile colors=WhiteOnBlack
    
fi

if [ $1 = "Day" ]
then
    # choosing global theme
    lookandfeeltool -a 'heqroLight'
    # copying over GTK configuration files
    \cp ~/.local/share/heqro-kde-scripting/theme-changing-scripts/DaySettings/settings.ini ~/.config/gtk-3.0
    # change terminal profile
        #konsoleprofile colors=BreezeLight
fi
