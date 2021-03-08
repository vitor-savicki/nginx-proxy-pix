FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/default.conf
COPY localhost.crt /etc/nginx/certs/localhost.crt
COPY localhost.key /etc/nginx/certs/localhost.key
COPY RootCA.crt /etc/nginx/certs/RootCA.crt


ADD start.sh /start.sh
RUN chmod 700 /start.sh

EXPOSE 443

CMD ["./start.sh"]
