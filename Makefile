redis:
	docker run --rm \
		-p 6379:6379 \
		-ti redis:4
postgres:
	docker run --rm \
		-p 5432:5432 \
		-ti postgres:10.1-alpine
server_1:
	PORT=3010 mix phx.server
server_2:
	PORT=3020 mix phx.server
