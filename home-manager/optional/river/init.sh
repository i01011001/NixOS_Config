riverctl background-color 0x000000
riverctl default-attach-mode bottom
riverctl hide-cursor timeout 3600
riverctl hide-cursor when-typing enabled
riverctl set-repeat 60 280

riverctl input pointer-1267-12632-ELAN050A:01_04F3:3158_Touchpad tap enabled
riverctl input pointer-1267-12632-ELAN050A:01_04F3:3158_Touchpad natural-scroll enabled

riverctl declare-mode passthrough

riverctl set-cursor-warp on-focus-change 

riverctl tablet-1386-884-Wacom_Intuos_S_Pen map-to-output eDP-1

riverctl map normal Super Comma focus-output left
riverctl map normal Super N focus-view -skip-floating next
riverctl map normal Super P focus-view -skip-floating previous
riverctl map normal Super K focus-view -skip-floating up
riverctl map normal Super J focus-view -skip-floating down
riverctl map normal Super H focus-view -skip-floating left 
riverctl map normal Super L focus-view -skip-floating right 
riverctl map normal Super Period focus-output right
riverctl map normal Super Return zoom
riverctl map normal Super Space toggle-float
riverctl map normal Super+Alt H move left 100
riverctl map normal Super+Alt J move down 100
riverctl map normal Super+Alt K move up 100
riverctl map normal Super+Alt L move right 100
riverctl map normal Super+Alt+Control H snap left
riverctl map normal Super+Alt+Control J snap down
riverctl map normal Super+Alt+Control K snap up
riverctl map normal Super+Alt+Control L snap right
riverctl map normal Super+Alt+Shift H resize horizontal -100
riverctl map normal Super+Alt+Shift J resize vertical -100
riverctl map normal Super+Alt+Shift K resize vertical 100
riverctl map normal Super+Alt+Shift L resize horizontal 100
riverctl map normal Super+Shift C close
riverctl map normal Super+Shift N swap next
riverctl map normal Super+Shift P swap previous
riverctl map normal Super+Shift Period send-to-output right
riverctl map normal Super+Shift Comma send-to-output left
riverctl map normal Super+Shift Q exit
riverctl map normal Super+Control F toggle-fullscreen

riverctl map normal Super+Shift Return spawn foot
riverctl map normal Super R spawn tofi-drun

riverctl map normal Super+Control F11 spawn 'brightnessdown'
riverctl map normal Super+Control F12 spawn 'brightnessup'

riverctl map normal Super+Control F6 spawn 'volumemute'
riverctl map normal Super+Control F7 spawn 'volumedown'
riverctl map normal Super+Control F8 spawn 'volumeup'

riverctl map normal Super+Control B spawn 'notifybattery'
riverctl map normal Super+Control C spawn 'notifytime'
riverctl map normal Super+Control V spawn 'notifyvolume' 
riverctl map normal Super+Control X spawn 'notifybrightness'

riverctl map normal Super PRINT spawn 'grim -| swappy -f -' 
riverctl map normal Super+Shift PRINT spawn 'grim -g "$(slurp)" -| swappy -f -' 

### EXTRA CONFIGURATION ###
riverctl map normal Super F9 enter-mode passthrough
riverctl map passthrough Super F9 enter-mode normal

riverctl rule-add ssd
riverctl default-layout wideriver

riverctl border-width 1

wideriver \ --layout            left        \
--layout-alt                    monocle     \
--stack                         diminish    \
--count-master                  1           \
--ratio-master                  0.55        \
--count-wide-left               2           \
--ratio-wide                    0.35        \
--no-smart-gaps                             \
--inner-gaps                    0           \
--outer-gaps                    0           \
--border-width                  1           \
--border-width-monocle          1           \
--border-width-smart-gaps       0           \
--border-color-focused-monocle  "0x444444"  \
--border-color-focused          "0x444444"  \
--border-color-unfocused        "0x444444"  &      

riverctl border-color-urgent  "0x444444" 
riverctl border-color-focused "0x444444" 
riverctl border-color-unfocused "0x444444" 

# riverctl map normal Super+Control K spawn layout-top
# riverctl map normal Super+Control L spawn layout-right
# riverctl map normal Super+Control J spawn layout-bottom 
# riverctl map normal Super+Control H spawn layout-left
# riverctl map normal Super+Control M send-layout-cmd wideriver "--layout monocle"
# riverctl map normal Super+Control W send-layout-cmd wideriver "--layout wide"

riverctl map normal Super+Control K send-layout-cmd wideriver "--layout top"
riverctl map normal Super+Control L send-layout-cmd wideriver "--layout right"
riverctl map normal Super+Control J send-layout-cmd wideriver "--layout bottom"
riverctl map normal Super+Control H send-layout-cmd wideriver "--layout left"
riverctl map normal Super+Control M send-layout-cmd wideriver "--layout monocle"
riverctl map normal Super+Control W send-layout-cmd wideriver "--layout wide"

riverctl map normal Super+Control Space send-layout-cmd wideriver "--layout-toggle"

riverctl map normal Super+Shift L send-layout-cmd wideriver "--ratio +0.05"
riverctl map normal Super+Shift equal send-layout-cmd wideriver "--ratio .55"
riverctl map normal Super+Shift H send-layout-cmd wideriver "--ratio -0.05"

# riverctl map normal Super+Shift+Control L send-layout-cmd wideriver "--count +1"
# riverctl map normal Super+Shift+Control H send-layout-cmd wideriver "--count -1"
# riverctl map normal Super+Shift+Control equal send-layout-cmd wideriver "--count 1"

riverctl map normal Super+Control E send-layout-cmd wideriver "--stack even"
riverctl map normal Super+Control S send-layout-cmd wideriver "--stack dwindle"
riverctl map normal Super+Control I send-layout-cmd wideriver "--stack diminish"

riverctl map-pointer normal Super BTN_LEFT move-view
riverctl map-pointer normal Super BTN_RIGHT resize-view
riverctl map-pointer normal Super BTN_MIDDLE toggle-float


# riverctl rule-add float
# riverctl rule-add dimensions '800' '540'

# scratchpad
scratch_tag=$((1 << 20 ))
riverctl map normal Super S toggle-focused-tags ${scratch_tag}
riverctl map normal Super+Shift S set-view-tags ${scratch_tag}
all_but_scratch_tag=$(( ((1 << 32) - 1) ^ $scratch_tag ))
riverctl spawn-tagmask ${all_but_scratch_tag}

# # sticky_tag
# all_tags=$(((1 << 32) - 1))
# sticky_tag=$((1 << 31))
# all_but_sticky_tag=$(( $all_tags ^ $sticky_tag ))

# riverctl map normal Super O toggle-view-tags $sticky_tag
# riverctl spawn-tagmask ${all_but_sticky_tag}
#
#
for i in $(seq 1 9)
do
    tags=$((1 << ($i - 1)))
    riverctl map normal Super $i set-focused-tags $tags
    riverctl map normal Super+Shift $i set-view-tags $tags
    riverctl map normal Super+Control $i toggle-focused-tags $tags
    riverctl map normal Super+Shift+Control $i toggle-view-tags $tags
    riverctl map normal Super $i set-focused-tags $(($sticky_tag + $tags))
done

exec mako &
wlr-randr  --output HDMI-A-2 --pos -1440,0 &
swaybg -m center -i /etc/nixos/images/mini-nix.png &  
layout-left &

