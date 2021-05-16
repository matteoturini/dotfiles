#!/bin/bash
cd $HOME/Wallpapers
feh --bg-fill $(ls | grep -i 'jpg' -- | sort -R | tail -1)
