FROM ubuntu:latest

RUN apt-get update

RUN apt-get install mysql-server

RUN service mysql start && \
	mysql -e "CREATE USER 'remi'@'localhost' IDENTIFIED BY 'admin';" && \
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'remi'@'localhost'; && \
	mysql -e "FLUSH PRIVILEGES;"
	
WORKDIR /home/rémi/SAE51

CMD service mysql start && bash
