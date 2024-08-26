FROM node:8.16.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 5000
COPY . /app
CMD node index.js

#COPY package.json /app added to do the build faster because is a file is not going to change in time

#ENTRYPOINT ["node", "index.js"]
#COPY package.json /app
