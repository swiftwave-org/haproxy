FROM haproxytech/haproxy-debian:2.9

# Set default config
COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY ./dataplaneapi.yaml /etc/haproxy/dataplaneapi.yaml

# Create directory for SSL certificates
RUN mkdir -p /etc/haproxy/ssl/

# Copy default SSL certificate. With zero ssl certificates haproxy will not start
COPY ./default.pem /etc/haproxy/ssl/default.pem

# COPY ./config-generate.sh
COPY ./config-generate.sh /
RUN chmod +x /config-generate.sh

# Run config-generate.sh
RUN /config-generate.sh

# Delete config-generate.sh
RUN rm /config-generate.sh

# Copy dataplaneapi.sh
COPY ./dataplaneapi.sh /
RUN chmod +x /dataplaneapi.sh

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
