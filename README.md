# shadowsocksr-client
shadowsocksr client

docker build -t huangsen365/shadowsocksr-client .

CHANGE YOURPASSWORD and SSR_SERVER_ADDR
docker run -d -p 7072:7072 --restart=always -e BIND_ADDR=0.0.0.0 -e PASSWORD=YOURPASSWORD -e SSR_SERVER_ADDR=SSR_SERVER_ADDR --name=my_ssr_client_7071 huangsen365/shadowsocksr-client
