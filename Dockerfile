FROM nginx:stable-alpine

VOLUME /data
EXPOSE 80
COPY webdav.conf /etc/nginx/nginx.template.conf

COPY run.sh /
RUN chmod +x run.sh
CMD /run.sh
