# Usa una imagen base oficial de Node.js (elige la versión que necesites)
FROM node:12.10-alpine

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el package.json y package-lock.json primero (para cachear las dependencias)
COPY package*.json ./

# Instala las dependencias (npm install)
RUN npm install

# Copia el resto del código de la app al contenedor
COPY . .

# Expone el puerto 3000 (el que usas en tu app)
EXPOSE 3000

# Comando para arrancar la app
CMD ["npm", "start"]