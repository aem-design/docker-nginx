## Nginx Server

[![build_status](https://travis-ci.org/aem-design/docker-nginx.svg?branch=master)](https://travis-ci.org/aem-design/docker-nginx)
[![github license](https://img.shields.io/github/license/aem-design/docker-nginx)](https://github.com/aem-design/docker-nginx) 
[![github issues](https://img.shields.io/github/issues/aem-design/docker-nginx)](https://github.com/aem-design/docker-nginx) 
[![github last commit](https://img.shields.io/github/last-commit/aem-design/docker-nginx)](https://github.com/aem-design/docker-nginx) 
[![github repo size](https://img.shields.io/github/repo-size/aem-design/docker-nginx)](https://github.com/aem-design/docker-nginx) 
[![docker stars](https://img.shields.io/docker/stars/aemdesign/nginx)](https://hub.docker.com/r/aemdesign/nginx) 
[![docker pulls](https://img.shields.io/docker/pulls/aemdesign/nginx)](https://hub.docker.com/r/aemdesign/nginx) 
[![github release](https://img.shields.io/github/release/aem-design/docker-nginx)](https://github.com/aem-design/docker-nginx)

NGINX webserver that serves a simple page containing its hostname, IP address and port as wells as the request URI and the local time of the webserver.

This server responds with any url passed so that you can test url's being served.

This server has templating for nginx config.

### Environment Variables

Following environment variables are available

| Name              | Default Value                 | Notes |
| ---               | ---                           | ---   |
| CONTENT_EXPIRES   | @0h5m   |  |
| SIGIL_VERISON     | 0.4.0   |  |
| SIGIL_URL    | "https://github.com/gliderlabs/sigil/releases/download/v${SIGIL_VERISON}/sigil_${SIGIL_VERISON}_Linux_x86_64.tgz" |  |

### Volumes

None.

### Ports

Following Ports are exposed

| Path | Notes  |
| ---  | ---    |
| 80 | html response port |
| 81 | plain text response port |

### Starting

To start a test NGINX on port 8080 run the following

```bash
docker run -p 8080:80 -d aemdesign/nginx
```