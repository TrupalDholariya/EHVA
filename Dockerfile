# 🚨 VULNERABILITY: Using an outdated base image with known CVEs (catches container-trivy)
FROM node:14.15.0-alpine

WORKDIR /app

# Copying package.json (Assuming Backend structure)
COPY Backend/package*.json ./
RUN npm install

COPY Backend/ .

EXPOSE 8080
CMD ["npm", "start"]
