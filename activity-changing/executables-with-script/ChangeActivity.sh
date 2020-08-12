#!/bin/bash
my_array=( $(qdbus org.kde.ActivityManager /ActivityManager/Activities ListActivities) )
qdbus org.kde.ActivityManager /ActivityManager/Activities SetCurrentActivity ${my_array[$1]}
