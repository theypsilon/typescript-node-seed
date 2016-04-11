FROM node:4.4.2
WORKDIR /app
ADD package.json /app/package.json
RUN npm install
ADD typings.json /app/typings.json
RUN npm run-script load-declarations
ADD . /app
RUN npm run-script compile
CMD npm start
