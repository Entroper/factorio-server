# factorio-server
Configuration scripts and settings files for running a Factorio server using the `dtandersen/factorio` Docker image.

## Settings Files
Factorio uses three JSON files for configuration:
* **map-gen-settings.json** to control map width/height, ore patch frequency/size/richness, etc.
* **map-settings.json** to control advanced map settings such as biter expansion, pollution spread, evolution factors, and more
* **server-settings.json** to control server settings such as max players, autosaving, etc.

When you create a new map from the Factorio GUI, several presets are available to you.  The JSON files in `settings/map` and `settings/map-gen` contain the settings used by these presets.

## init.sh
This creates a Docker container from the latest `dtandersen/factorio` image.  By default, the container's volume will be mounted to `/opt/factorio`, and the container's name will be `factorio`.  To use a different volume path or container name, pass them as options, e.g.:

    ./init.sh /home/entroper/my-factorio my-factorio

## configure.sh
This will copy a set of map preset files and a server settings file to the `config` directory of your Factorio volume.  You only need to provide the name of the server settings and map presets, e.g.

    ./configure.sh base rail-world
    
If you used a different volume path for the container, pass it as the third parameter:

    ./configre.sh my-server-settings my-map-preset /home/entroper/my-factorio

Of course, the whole point is to create your own settings files that can be reused and switched in and out at will.  Enjoy!
