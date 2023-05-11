FROM node:14-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install 

EXPOSE 3000

COPY rdicidr-0.1.0/public /usr/src/app/public 
COPY rdicidr-0.1.0/src /usr/src/app/src

CMD ["npm", "start"]