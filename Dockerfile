FROM nginx:alpine
ARG BREAK_APP=no
COPY index.html /usr/share/nginx/html/index.html
RUN if [ "$BREAK_APP" = "yes" ]; then rm -f /etc/nginx/nginx.conf; fi
EXPOSE 80