FROM node:16-alpine
WORKDIR /radar
COPY package.json ./
COPY package-lock.json ./
RUN npm ci
COPY . ./
# CMD ["npm","run","dev"]
CMD ["npm","run","build"]
