FROM dnorange/prisma-cli:1.34.7

COPY . .

CMD ["/bin/sh", "migrations.sh"]