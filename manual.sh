# Arguments:
# O[riginal wayback URL]
O="$1"
# F[ile path (local)]
F="$2"

P=$(echo $O | sed 's~^.*\.com/~~')

echo Getting "$P"

# Make sure any directories that need to exist actually exist
mkdir -p $(dirname "$P")

# Grab the file
[ -e "$P" ] || curl -L "https://web.archive.org$O" -o "$P"

# Replace wayback references with ours
sed -i "" "s~$O~$P~" "$F"
