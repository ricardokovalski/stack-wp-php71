FROM mariadb:10.5.12

RUN groupadd -g 1000 appmax && \
useradd -u 1000 -g appmax -G mysql -m appmax && \
usermod -p "*" appmax -s /bin/bash && \
usermod -a -G mysql appmax