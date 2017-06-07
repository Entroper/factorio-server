if [[ $# -ne 3 ]] && [[ $# -ne 2 ]]; then
	echo "Usage: ./configure.sh <name-of-server-config> <name-of-map-config> [path-to-server]"
	echo "Do not include the config subdirectory or the .json extension."
	exit 1
fi

if [ $# -eq 3 ]; then
	path=$3
else
	path="/opt/factorio"
fi

cp settings/server/${1}.json ${path}/config/server-settings.json
cp settings/map/${2}.json ${path}/config/map-settings.json
cp settings/map-gen/${2}.json ${path}/config/map-gen-settings.json

