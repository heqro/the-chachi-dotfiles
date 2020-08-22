# my KDE files
## Understanding the script
The script consists on 10 steps that are basically shown on the `INSTALL.sh` script.

### Step 1 - copying over wallpapers
Simple `mkdir` and `\cp` commands onto `~/.local/share/wallpapers`. 

### Step 2 - copying over Fira Sans & Fira Sans Code
Because why the hell not. They look awesome. Sadly, I had to copy them system-wide --after all, I am the first guy interested in this script working like I want it to--. So, yeah, sorry for that.

### Step 3 - copying over color schemes, GTK themes, and aurorae themes

### Step 4 - copying .desktop files as well as icons
A handful of `sudo`, `mkdir`, and `chmod`.

The icons had to be moved to `/usr/share/pixmaps` in order to be properly recognized without doing some weird stuff. Another `sudo`. I added "heqro-" in front of those icons to make easier to delete them, but still... sorry about that (again!).

### Step 5 - copying icons pack
There's a big to-do here, as I only managed to extract the files by name. Ideally, it should just extract all the icons pack you had in mind to `~/.local/share/icons`.

### Step 6 - copying over cursor themes
This just goes into a custom folder that gets created if you ever download a custom cursor theme, and does not if you do not. So, yeah, simple `mkdir` and `tar` commands.

### Step 7 - setting up activities
Yes, I am one of those freaks that use them. I found out some commands set called `qdbus` for terminal but I am completely clueless as to why it is there for. I miserably failed to understand any related documentation.

### Step 8 - `chmod`ding `.desktop` files to switch from night to light theme, and those cool, awesome things.

### Step 9 - exporting plasmoids and extracting them
A handful of `mkdir`s and `tar`s.

### Final step - exporting look-and-feel stuff
This is by far the part where I tremble the most, because it all depends on every other step working correctly. It just makes a directory on the default plasma folder for looking for look-and-feel themes (`~/.local/share/plasma/look-and-feel`) and copies my look-and-feel files in there.
