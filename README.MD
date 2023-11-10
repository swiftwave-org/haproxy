#### This is a custom haproxy docker image for swiftwave

The image is built on top of [official docker image](https://hub.docker.com/r/haproxytech/haproxy-debian).

---

**Image URI Format -**

```bash
docker pull ghcr.io/swiftwave-org/haproxy:<version>
```

For example - 
```bash
docker pull ghcr.io/swiftwave-org/haproxy:2.9
```

> ⚠️ Note : This repo will not contain any `latest` image. So it's mandatory to provide version as tag while pulling the image.

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

**License Info -**
- The [LICENSE](https://github.com/swiftwave-org/haproxy/blob/main/LICENSE) file only for current repository which holds docker configuration to build customised docker image of HAProxy for SwiftWave. This license is not meant to be for any HAProxy source / Binary or HAProxy Dataplane API source / Binary
- Official License of HAProxy - GPL 2.0 [haproxy/haproxy@LICENSE](https://github.com/haproxy/haproxy/blob/master/LICENSE)
- Official License of HAProxy Dataplane API - Apache 2.0 [haproxytech/dataplaneapi@LICENSE](https://github.com/haproxytech/dataplaneapi/blob/master/LICENSE)
