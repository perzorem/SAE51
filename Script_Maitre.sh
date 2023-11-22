docker stop $(docker ps -q)

docker build -t sae51 .

sleep 5

docker run -dp 3306:3306 sae51

sleep 5

./DB_create.sh

./DB_fillup.sh

echo "Terminé."
