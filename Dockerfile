FROM node:alpine

# make source folder available in the docker image
ADD src/ /src
WORKDIR /src

# install dependencies from package.json
RUN npm install

# make port 80 available outside of the image
EXPOSE 80

# start node with index.js
CMD ["node", "index.js"]
