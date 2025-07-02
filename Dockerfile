FROM node:12.10-alpine

# Instala curl y docker
RUN apk add --no-cache curl docker

# Comando por defecto al iniciar el contenedor
CMD ["node"]