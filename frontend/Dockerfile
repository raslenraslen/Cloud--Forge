# === Dockerfile Simple avec ng serve (POUR DÉVELOPPEMENT) ===


FROM node:18-alpine


WORKDIR /app


COPY ./package.json ./package-lock.json ./



RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 4200

CMD ["npx", "ng", "serve", "--host", "0.0.0.0"]
