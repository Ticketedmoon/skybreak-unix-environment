### i3 notes

Note: <b> Mod key is: [win]

---

Win + Enter = New Terminal
Win + SHIFT + Q = Close Window
Win + Arrow Key = Move between containers/windows.
Win + SHIFT + Arrow Keys = Move current active container/window around
Win + D = bin/ search

Win + w = tab view
win + s = stacked view
win + e = split View
Win = f = fullscreen View of active window

Win + SHIFT + c = reload i3 configuration
Win + SHIFT + r = Restart i3 if in bad state.
Win + SHIFT + e = logout/quit i3.

Win + v = i3 vertical window mode
Win + h = i3 horizontal window mode
Win + r = i3 resize mode
  - [esc] to exit resize mode

// Workspaces

Win + SHIFT + [num] = move active window to new workspace at [num] specified.
Win + [num] = Move to workspace at [num]

// Commands
i3-msg reload = Reload i3 config [Same as Win + SHIFT + c / Win + SHIFT + r]
i3-config-wizard = regenerate i3 config file
pavucontrol = audio issue diagnosis

// Chrome
ALT + SHIFT + enter = Open new window with page or search

// Multiple monitors
Use `xrandr`
*Note:** Be sure to add xrandr command to i3 config as it is otherwise ephemral.

// Use the below to assign the monitor to be left of the laptop 'primary' monitor.
- xrandr --auto --output HDMI-2 --mode 1920x1080 --left-of eDP-1
- xramdr -q // To see connected monitor information, useful when you need to get screen sizes and other port info.

Use `xprop` to find the class of a particular window.

// For network issues
run on shell: `nmtui`
