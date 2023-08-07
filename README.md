# php-repcached-issue
```shell
$ docker-compose up -d
```

"php -i " response is slow. (maybe memcached module's timeout)
```shell
$ docker compose exec web /bin/bash
$ php -i
```
