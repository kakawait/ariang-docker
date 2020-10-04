# AriaNG

AriaNG image served by nginx

## Environment variables

|     Variable     |       Description       |  Default  |                           Allowed                           |
|------------------|-------------------------|-----------|-------------------------------------------------------------|
| ARIA_HOST        | Aria hostname           | localhost |                                                             |
| ARIA_PORT        | Aria port               | 6800      |                                                             |
| ARIA_INTERFACE   | Aria interface base URL | jsonrpc   |                                                             |
| ARIA_PROTOCOL    | Aria protocol           | http      | `http`, `https`, `ws` (websocket), `wss` (websocket secure) |
| ARIA_HTTP_METHOD | Aria http method        | POST      | `GET`, `POST`                                               |
| ARIA_SECRET      | Secret for Aria         |           |                                                             |

## Usage

```
docker build -t kakawait/ariang ./nginx16-alpine/.
docker run -p80:80 -eARIA_HOST=172.17.0.1 -eARIA_PORT=8080 --name ariang -d kakawait/ariang
```

or 

```
docker-compose up -d
```
