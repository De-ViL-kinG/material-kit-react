# frontend/Dockerfile
FROM node:18-alpine

WORKDIR /app

# Копируем package.json и yarn.lock (или package-lock.json)
COPY package.json package-lock.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальной код приложения
COPY . .

EXPOSE 3000

# Запуск Next.js в режиме production (при необходимости сначала сборка, например: yarn build)
CMD ["npm", "run", "dev"]