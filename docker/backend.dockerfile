FROM node:18-alpine

RUN apk update && apk upgrade --no-cache
WORKDIR /app

COPY app/backend/package*.json ./
RUN npm ci --omit=dev

COPY app/backend .

EXPOSE 3000

CMD ["npm","start"]
