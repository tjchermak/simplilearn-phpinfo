# Download alpine docker image (alpine does not have the Kernel
FROM alpine

#Install php inside the container (similar to apt install php)
RUN apk add php

# Create app folder
WORKDIR /app

# Copy source code into app into the container
COPY src/index.php /app

# run command in the container S creates the webserver on  port 8080 service index.php file
#php -f index.php -S 0.0.0.0:8080
# Entrypoint runs the following command .. php
ENTRYPOINT ["php"]

# pass this argument to the command
# no brackets = shell, PID1 = sh; with brackets PID1 = php
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]


EXPOSE 8080
