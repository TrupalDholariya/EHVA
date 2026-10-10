# ✅ FIXED: Using a modern, supported base image
FROM node:20-alpine

WORKDIR /app

# Copying package.json (Assuming Backend structure)
COPY Backend/package*.json ./
RUN npm install

COPY Backend/ .

EXPOSE 8080
CMD ["npm", "start"]
