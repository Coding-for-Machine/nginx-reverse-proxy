#!/bin/bash

# Certbot yordamida SSL sertifikatlarini olish
certbot --nginx -d frontend.example.com -d api.example.com -d go-api.example.com --non-interactive --agree-tos --email your-email@example.com

# Nginxni qayta ishga tushurish
nginx -s reload
