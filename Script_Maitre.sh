sudo docker stop $(docker ps -a)
sudo docker rm $(docker images)


sudo docker build -t sae51 .

sudo docker run -it -d -p 3306:3306 --name test sae51

sudo docker exec -it test bash

