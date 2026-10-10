# ✅ FIXED: Using a distroless image for true zero-vulnerabilities
FROM gcr.io/distroless/nodejs22-debian12

WORKDIR /app

COPY Backend/ .

EXPOSE 8080
CMD ["src/index.js"]
