# docker-armhf-motion
a motion server for raspberry pi

# Usage
Put motion.conf inside /etc/motion and run the following command to start
~~~bash
docker run \
    -d \
    -e TZ="America/Los_Angeles"
    --name motion-server \
    -p 9001:8081 \
    -v /mnt/data:/var/lib/motion \
    -v /etc/motion:/etc/motion \
    --device /dev/video0 \
    fjctp/armhf-motion
~~~

# 3rd party library
motion: https://github.com/Motion-Project/motion
