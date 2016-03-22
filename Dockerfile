FROM node:4.4.0
WORKDIR /app
ADD package.json /app/package.json
RUN npm install
ADD tsd.json /app/tsd.json
RUN npm run-script load-declarations
ADD . /app
RUN npm run-script compile
CMD npm test