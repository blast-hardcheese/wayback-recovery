ack -ho '/web/\d+[^\/]*\/http:\/\/amysnively\.com\/[^"'\'']+' "$1" | perl -ne 'chomp; $o=$_; s~^.*\.com/~~; print "echo Getting \"$_\"; mkdir -p \$\(dirname \"$_\"\); [ -e \"$_\" ] \|\| curl -L \"https://web.archive.org$o\" -o \"$_\"; sed -i \"\" '\''s/$o/$_'\'' \"'$1'\"\n";' | tee script.sh

echo "Wrote script.sh"
