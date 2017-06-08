FROM nginx

RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 4001

CMD service nginx start
