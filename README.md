# shadowsocksr-client, download below Dockerfile and guild the image
# https://github.com/huangsen365/shadowsocksr-client/blob/master/Dockerfile
shadowsocksr client

docker build -t huangsen365/shadowsocksr-client .

# CHANGE YOURPASSWORD and SSR_SERVER_ADDR
docker run -d -p 7072:7072 --restart=always -e BIND_ADDR=0.0.0.0 -e PASSWORD=YOURPASSWORD -e SSR_SERVER_ADDR=SSR_SERVER_ADDR --name=my_ssr_client_7072 huangsen365/shadowsocksr-client
docker run -d -p 7074:7072 --restart=always -e BIND_ADDR=0.0.0.0 -e PASSWORD=YOUR_PASSWORD -e SSR_SERVER_PORT=3389 -e SSR_SERVER_ADDR=YOUR_HOSTNAME --name=YOUR_DOCKER_CONTAINER_NAME huangsen365/shadowsocksr-client

# Run this in Cygwin (for running this as a service) when using Windows
python server.py -p 8389 -k YOUR_PASSWORD -m aes-128-ctr -O auth_aes128_md5 -o tls1.2_ticket_auth_compatible -G 32
