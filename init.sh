docker run -d -it \
	-p 34197:34197/udp \
	-p 27015:27105/tcp \
	-v /opt/factorio:/factorio \
	--name factorio \
	--restart=always \
	dtandersen/factorio
	
