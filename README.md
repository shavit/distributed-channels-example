# Distrubuted Phoenix Channels

Run Phonenix channels on Redis.

## Requirements
  * Elixir 1.7
  * Docker
  * NodeJS

## Getting Started

Clone and install dependencies
```
mix deps.get

cd assets && npm install
```

Start Postgres and Redis
```
make postgres
make redis
```

Start 2 different servers and send chat messages in the browser using different tabs
```
# localhost:3010
make server 1

# localhost:3020
make server 2
```
