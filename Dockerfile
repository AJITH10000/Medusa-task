FROM node:16-alpine

WORKDIR /app

# Copy only the package files first to install dependencies
COPY app/backend/package*.json ./

RUN npm install

# Copy the rest of the code
COPY app/backend/ .

EXPOSE 3000
CMD ["npm", "start"]