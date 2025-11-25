
while [ true ] 
do

    # Date and time
    date_and_day=$(date "+%Y/%m/%d %A")
    current_time=$(date "+%H:%M")

    # Battery or charger
    battery_charge=$(cat /sys/class/power_supply/BAT1/capacity)
    battery_status=$(cat /sys/class/power_supply/BAT1/status)

    # Audio and multimedia
    audio_volume=$(wpctl get-volume @DEFAULT_SINK@ | tr -d Volume:\ )

    # Brightness
    brightness=$(brightnessctl g)

    # media_artist=$(playerctl metadata artist)
    # media_song=$(playerctl metadata title)
    # player_status=$(playerctl status)

    # if [ $player_status = "Playing" ]
    # then
    #     song_status='▶'
    # elif [ $player_status = "Paused" ]
    # then
    #     song_status='⏸'
    # else
    #     song_status='⏹'
    # fi


    # echo "🎧 $song_status $media_artist - $media_song | $network_active $interface_easyname ($ping ms) | $audio_active $audio_volume% | $battery_pluggedin $battery_charge | $date_and_week 🕘 $current_time"

    echo "$brightness | $audio_volume | $battery_charge $battery_status | $date_and_day $current_time"
    sleep 0.1
done
