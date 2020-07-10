# syslog-ng
Docker container version of syslog-ng

Run like so:

docker run -d --restart=always \
   --name syslog \
   -p 514:514/udp \
   -p 601:601/tcp \
   -p 6514:6514/tcp \
   -v $(pwd)/syslog/syslog-ng.conf:/etc/syslog-ng/syslog-ng.conf \
   -v $(pwd)/syslog:/var/log \
   jdallen/syslog-ng

