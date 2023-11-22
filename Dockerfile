RUN apt-get install mysql-server

RUN service mysql start && \
	mysql -e "CREATE USER 'remi'@'localhost' IDENTIFIED BY 'admin';" && \
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'remi'@'localhost'; && \
	mysql -e "FLUSH PRIVILEGES;"
	
COPY DB_create.sh /ap/remplissage.sh
COPY DB_fillup.sh /ap/remplissage.sh
COPY data_affectation.cvs /etc/data_affectation.cvs
COPY data_logiciel.cvs /etc/data_logiciel.cvs
COPY data_maintenance.cvs /etc/data_maintenance.cvs
COPY data_ordinateur.cvs /etc/data_ordinateur.cvs
COPY data_utilisateur.cvs /etc/data_utilisateur.cvs

WORKDIR /etc

CMD service mysql start && bash