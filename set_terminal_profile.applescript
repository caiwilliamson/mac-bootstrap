#!/usr/bin/osascript

tell application "Terminal"
  set themeName to "Cai Dark"

  if name of default settings is themeName then return

  set initialOpenedWindows to id of every window

  set themePath to POSIX path of (POSIX file (themeName & ".terminal"))
  do shell script "open " & quoted form of themePath

  delay 1

  set default settings to settings set themeName

  set allOpenedWindows to id of every window

  repeat with windowID in allOpenedWindows
    set w to first window whose id is windowID

    if initialOpenedWindows does not contain windowID then
      close w
    else
      set current settings of w to settings set themeName
    end if
  end repeat
end tell
