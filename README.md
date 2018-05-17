# docker-mitmproxy-reverse

[Udemy](https://www.udemy.com/learn-docker/) assignment.

## About

I have containerized `mitmproxy` in reverse mode. `mitmdump` will listen on 8080 port, so don't forget to add port mapping.

## Examples

Running interactive reverse proxy for _example.com_

```bash
docker run -it -p 80:8080 -e REVERSE=https://example.com/ 2tunnels/mitmproxy-reverse
```

Running deamonized reverse proxy for _wikipedia.org_

```bash
docker run -d -p 80:8080 -e REVERSE=https://en.wikipedia.org/wiki/Main_Page 2tunnels/mitmproxy-reverse
```
