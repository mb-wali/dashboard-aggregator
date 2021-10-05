FROM node:12-alpine

COPY . /src
WORKDIR /src

RUN npm install
RUN npm run build

EXPOSE 3001

CMD ["npm", "start"]

LABEL org.label-schema.vcs-url="https://github.com/cyverse-de/dashboard-aggregator"

# build 
# docker build -t mbwali/dashboard-aggregator:latest .

# run
# docker run -it -p 3001:3001 mbwali/dashboard-aggregator:latest

# config
# /config/default.yml
