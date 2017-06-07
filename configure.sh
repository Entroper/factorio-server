if [ $# -ne 3 ]; then
	echo "Usage: ./configure.sh <path-to-server> <name-of-server-config> <name-of-map-config>"
	echo "Do not include the config subdirectory or the .json extension."
	exit 1
fi

cp settings/server/${2}.json ${1}/config/server-settings.json
cp settings/map/${3}.json ${1}/config/map-settings.json
cp settings/map-gen/${3}.json ${1}/config/map-gen-settings.json

