# ---------- Etapa 1: API con Node.js ----------
    FROM node:14 AS api

    WORKDIR /usr/src/app
    
    # Copiar solo package.json y lock para instalar dependencias
    COPY api/package*.json ./
    RUN npm install
    
    # Copiar el resto de los archivos de la API
    COPY api .
    
    # ---------- Etapa 2: Nginx + Node.js ----------
    FROM nginx:alpine
    
    # ① Instalar Node.js en la imagen de nginx:alpine
    RUN apk add --no-cache nodejs npm
    
    # ② Copiar archivos HTML de las islas
    COPY isla1 /usr/share/nginx/html/isla1
    COPY isla2 /usr/share/nginx/html/isla2
    COPY isla3 /usr/share/nginx/html/isla3
    COPY isla4 /usr/share/nginx/html/isla4
    COPY isla5 /usr/share/nginx/html/isla5
    
    # ③ Copiar configuración de nginx corregida
    COPY nginx.conf /etc/nginx/nginx.conf
    
    # ④ Copiar la API construida desde la etapa anterior
    COPY --from=api /usr/src/app /usr/src/app
    
    # ⑤ Exponer puertos
    EXPOSE 80
    EXPOSE 3000

    # Instalar Node.js en nginx:alpine
    RUN apk add --no-cache nodejs npm

    # Instalar pm2 globalmente
    RUN npm install -g pm2
    
    # ⑥ Ejecutar la API y Nginx juntos
    CMD ["sh", "-c", "pm2 start /usr/src/app/server.js && nginx -g 'daemon off;'"]    