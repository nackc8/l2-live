FROM node:18 AS base

WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY frontend/package*.json .
RUN npm install

RUN mkdir /tmp/env_files
COPY .env* /tmp/env_files/

# Copy the rest of the application code
COPY frontend/ .

# Rewrite the .env files with prefix REACT_APP_ so that they can
# be used in the React app
RUN scripts/update_env /tmp/env_files/ ./ && rm -r /tmp/env_files/


CMD ["npm", "start"]
