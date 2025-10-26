# Базовый образ
FROM node:alpine

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы приложения
COPY . .

# Порт для слушания
EXPOSE 3000

# Команда для старта приложения
CMD ["node", "index.js"]