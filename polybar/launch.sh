#!/usr/bin/env bash

   # Terminate already running bar instances
   killall -q polybar

   # Wait until the processes have been shut down
   while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

   # Loop through every connected monitor and launch a bar instance
   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
     MONITOR=$m polybar --reload mybar 2>&1 &
   done
