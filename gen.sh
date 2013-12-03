ack -ho '/web/\d+[^\/]*\/http:\/\/(www\.)?amysnively\.com\/[^"'\'']+' "$1" | while read LINK; do
    bash manual.sh "$LINK" "$1"
done
