FROM postgres:15
COPY worklenz-backend/database/sql /docker-entrypoint-initdb.d/sql
COPY worklenz-backend/database/00_init.sh /docker-entrypoint-initdb.d/00_init.sh
RUN sed -i 's/\r$//' /docker-entrypoint-initdb.d/00_init.sh && chmod +x /docker-entrypoint-initdb.d/00_init.sh
