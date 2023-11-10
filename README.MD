#### This is a custom haproxy docker image for swiftwave

The image is built on top of official docker images and follows same directory structure.

**Added Customization -**
- Custom haproxy configuration added
- Custom dataplaneapi.yaml added
- Converted haproxy dataplaneapi from TCP to UNIX at location `/home/dataplaneapi.sock`
- Option to provide dataplaneapi username and password from environment variables

**Available Environment Variables -**
- `ADMIN_USER` : username of dataplaneapi (optional)
- `ADMIN_PASSWORD` : password of dataplaneapi (optional)
- `SWIFTWAVE_SERVICE_ENDPOINT` : this should be a public http/https endpoint with port of swiftwace which can be accessible by haproxy.

**References -**
- [https://github.com/haproxytech/haproxy-docker-debian](https://github.com/haproxytech/haproxy-docker-debian)