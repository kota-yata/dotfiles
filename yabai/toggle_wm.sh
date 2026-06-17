#yabaiが実行中かどうかをチェック
if pgrep -x "yabai" > /dev/null
then
    # 実行中なら両方を停止
    yabai --stop-service
    skhd --stop-service
    osascript -e 'display notification "yabai & skhd を停止しました" with title "Window Manager"'
else
    # 停止中なら両方を開始
    yabai --start-service
    skhd --start-service
    osascript -e 'display notification "yabai & skhd を起動しました" with title "Window Manager"'
fi
