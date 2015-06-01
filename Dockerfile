#
FROM debian
MAINTAINER voids <qiudong26@sina.com>
ADD cphalcon /tmp/cphalcon
RUN \
sed -i "s/httpredir.debian.org/mirrors.163.com/g" /etc/apt/sources.list && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y nginx re2c libpcre3-dev php5-fpm php5-dev php5-curl php5-memcached php5-gd php5-mysqlnd php5-pgsql php5-mcrypt php5-apcu && \
cd /tmp/cphalcon/build && \
./install && \
cd ~ && \
rm -rf /tmp/cphalcon && \
echo "extension=phalcon.so" > /etc/php5/mods-available/phalcon.ini && \
php5enmod phalcon && \
apt-get autoclean && \
apt-get clean
