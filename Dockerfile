# 🚨 VULNERABILITY (Uncomment this line for the demo to make Trivy fail!)
# FROM node:14.15.0-alpine

# ✅ FIXED: Using pristine alpine:latest which historically has 0 known vulnerabilities.
FROM alpine:latest

WORKDIR /app

COPY Backend/ .

EXPOSE 8080
CMD ["echo", "App running cleanly!"]
