FROM nginx:latest

# Certbotni o'rnatish
RUN apt-get update && \
    apt-get install -y certbot python3-certbot-nginx

# SSL sertifikatlarini olish uchun bash skriptini nusxalash
COPY ./get-certificates.sh /usr/local/bin/get-certificates.sh
RUN chmod +x /usr/local/bin/get-certificates.sh

# SSL sertifikatlarini olish (manual skriptni ishga tushurish)
CMD ["/usr/local/bin/get-certificates.sh"]

# Nginx konfiguratsiyasini nusxalash
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443 80
