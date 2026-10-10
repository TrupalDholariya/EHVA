# ✅ FIXED: Using a Debian-based slim image to avoid unpatched Alpine CVEs
FROM node:22-slim

WORKDIR /app

# Copying package.json (Assuming Backend structure)
COPY Backend/package*.json ./
RUN npm install

COPY Backend/ .

EXPOSE 8080
CMD ["npm", "start"]
