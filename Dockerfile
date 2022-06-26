from alpine

run apk add mosquitto-clients moreutils

CMD mosquitto_sub -t 'log/+' -v -h 10.0.100.6 | ts >> /logs/iot.log
