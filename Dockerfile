FROM ubuntu:latest 

RUN apt-get update && apt-get install -y nodejs npm curl

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["npm", "start"]

