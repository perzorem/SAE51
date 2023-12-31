FROM ubuntu:22.04
	
RUN apt-get update
RUN apt-get install -y mysql-server

RUN echo "[mysqld]\nlocal_infile=1" > /etc/mysql/conf.d/local_infile.cnf

RUN service mysql start && \
	mysql -e "CREATE USER 'remi'@'localhost' IDENTIFIED BY 'admin';" && \
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'remi'@'localhost';" && \
	mysql -e "FLUSH PRIVILEGES;" && \
	mysql -e "SET GLOBAL local_infile=1;"

COPY Script_Maitre.sh /etc/Script_Maitre.sh
COPY DB_create.sh /etc/DB_create.sh
COPY DB_fillup.sh /etc/DB_fillup.sh
COPY DB_request.sh /etc/DB_request.sh
COPY DB_create.sql /etc/DB_create.sql
COPY DB_fillup.sql /etc/DB_fillup.sql
COPY DB_request.sql /etc/DB_request.sql
COPY Affectation.csv /etc/Affectation.csv
COPY Maintenance.csv /etc/Maintenance.csv
COPY Ordinateur.csv /etc/Ordinateur.csv
COPY Utilisateur.csv /etc/Utilisateur.csv
COPY Logiciel.csv /etc/Logiciel.csv

#WORKDIR /etc/

EXPOSE 3306

CMD service mysql start && bash ./etc/DB_create.sh && bash ./etc/DB_fillup.sh && bash
