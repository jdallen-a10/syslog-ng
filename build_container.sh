VERSION=$(cat VERSION | perl -pe 's/^((\d+\.)*)(\d+)(.*)$/$1.($3+1).$4/e' | tee VERSION)
docker build -t jdallen/syslog-ng:$VERSION -t jdallen/syslog-ng:latest https://github.com/jdallen-a10/syslog-ng.git
