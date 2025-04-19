FROM node
WORKDIR /app

COPY . .
EXPOSE 3000

COPY package*.json ./

ENTRYPOINT start npm


FROM node
WORKDIR /app 
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]