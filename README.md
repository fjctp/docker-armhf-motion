# docker-armhf-motion
a motion server for raspberry pi

# Usage
~~~bash
docker run \
    -d \
    --name motion-server \
    -p 9001:8081 \
    -v /mnt/data:/var/lib/motion \
    --device /dev/video0 \
    fjctp/armhf-motion
~~~

# 3rd party library
motion: https://github.com/Motion-Project/motion
