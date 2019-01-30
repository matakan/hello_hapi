# use the latest node LTS release
FROM warroommaster.azurecr.io/node:9-slim
WORKDIR /usr/src/app

RUN id
USER root

# copy package.json and package-lock.json and install packages. we do this
# separate from the application code to better use docker's caching
# `npm install` will be cached on future builds if only the app code changed
COPY package*.json ./
RUN npm install
RUN env

# copy the app
COPY . .

# expose port 3000 and start the app
EXPOSE 3000
CMD [ "npm", "start" ]

