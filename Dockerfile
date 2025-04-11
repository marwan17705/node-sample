FROM node:20-alpine

WORKDIR /app

# Create a simple Node.js app directly inside Dockerfile
RUN echo 'const http = require("http");' \
         'const server = http.createServer((req, res) => {' \
         '  res.writeHead(200, { "Content-Type": "text/plain" });' \
         '  res.end("Hello from a single Dockerfile!\\n");' \
         '});' \
         'server.listen(3000);' \
         'console.log("Server running at http://localhost:3000");' \
     > index.js

CMD ["node", "index.js"]

EXPOSE 3000
