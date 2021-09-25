FROM node:alpine

WORKDIR /usr/app

# RUN npm install -g yarn

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

CMD ["yarn", "dev"]