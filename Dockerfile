# Usar una imagen de Node.js como base
FROM node:latest

# Establecer el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app

# Copiar los archivos package.json y package-lock.json (si existe) al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Exponer el puerto en el que la aplicación se ejecuta (si es necesario)
# EXPOSE 3000

# Comando por defecto que se ejecutará al iniciar el contenedor
CMD ["make", "server"]
