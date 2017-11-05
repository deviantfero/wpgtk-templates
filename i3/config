# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
set $alt Mod1
set $coloract "#6a8e7a"
set $colorin "#3c5045"
set_from_resource $white i3wm.color15 "#fefbec"
set_from_resource $split i3wm.color10 "#9E664B0"

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

gaps outer 0
gaps inner 8
new_window pixel 3


# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+t exec i3-sensible-terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $alt+F4 kill

# start dmenu (a program launcher)
bindsym $alt+F2 exec rofi -show run

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+s split v

# split in vertical orientation
bindsym $mod+v split h

# enter fullscreen mode for the focused container
bindsym $mod+c fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
# bindsym $mod+s layout stacking
bindsym $mod+Shift+t layout tabbed
bindsym $mod+Shift+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+p focus parent

# focus the child container
#bindsym $mod+d focus child
#

# exec keybindings
bindsym --release Print exec scrot
bindsym --release Shift+Print exec scrot -s
bindsym $mod+f exec thunar
bindsym $mod+w exec google-chrome-stable
bindsym $mod+$alt+t exec wpg -m
bindsym $alt+Tab exec rofi -show window

# class                 border    backgr.   text    indicator child_border
client.focused          $coloract $coloract $white  $split $coloract
client.focused_inactive $coloract $coloract $white  $split $coloract
client.unfocused        $colorin  $colorin  #888888 $split $colorin
client.urgent           #2f343a   #900000   $white  #900000 #900000
client.placeholder      #000000   #0c0c0c   $white  #000000 #0c0c0c

client.background       #ffffff

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+x exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym l resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 10 px or 10 ppt
        bindsym h resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

mode "monitor" {
        bindsym s exec dock-single
        bindsym d exec dock-dual
        bindsym t exec thinkpad

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"
bindsym $mod+a mode "monitor"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
# bar {
#         status_command i3status
# }


exec --no-startup-id "setxkbmap -option caps:escape"
exec --no-startup-id exec volumeicon
exec --no-startup-id exec compton
exec --no-startup-id ~/.wallpapers/wp_init.sh 
exec_always --no-startup-id exec ~/Code/scripts/polybar.sh &
