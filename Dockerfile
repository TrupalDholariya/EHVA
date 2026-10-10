# 🚨 VULNERABILITY (Uncomment this line for the demo to make Trivy fail!)
# FROM node:20-alpine

# ✅ FIXED: Using pristine node:22-alpine which historically has 0 known FIXED vulnerabilities.
FROM node:22-alpine

WORKDIR /app

COPY Backend/ .

EXPOSE 8000
CMD ["node", "src/index.js"]
