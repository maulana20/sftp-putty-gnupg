# gpg create account
docker-compose exec putty ./gpg_create/create.sh

# gpg convert file and move in sftp server
docker compose cp testing.txt putty:/app
docker-compose exec putty gpg --output testing.gpg --encrypt --recipient maulana@example testing.txt
docker compose cp putty:/app/testing.gpg ./data
docker-compose exec putty rm -v /app/testing.txt /app/testing.gpg
