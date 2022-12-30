# gpg create account
docker-compose exec putty ./startup.sh gpg

# gpg convert file
docker compose cp testing.txt putty:/app
docker-compose exec putty ./startup.sh encrypt
docker compose cp putty:/app/testing.gpg ./data
docker-compose exec putty rm -v /app/testing.txt /app/testing.gpg
