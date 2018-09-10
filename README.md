# shadowsocksr-client
shadowsocksr client

docker build -t huangsen365/shadowsocksr-client .

# CHANGE YOURPASSWORD and SSR_SERVER_ADDR
docker run -d -p 7072:7072 --restart=always -e BIND_ADDR=0.0.0.0 -e PASSWORD=YOURPASSWORD -e SSR_SERVER_ADDR=SSR_SERVER_ADDR --name=my_ssr_client_7072 huangsen365/shadowsocksr-client
# Run this in Cygwin when using Windows
python server.py -p 8389 -k YOUR_PASSWORD -m aes-128-ctr -O auth_aes128_md5 -o tls1.2_ticket_auth_compatible -G 32
