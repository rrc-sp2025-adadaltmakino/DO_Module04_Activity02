FROM node:20-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 3000
RUN useradd -m appuser
USER appuser
CMD ["npm", "start"]
