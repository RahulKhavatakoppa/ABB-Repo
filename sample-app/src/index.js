const http = require('http');

const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify({
    app: 'devops-assessment-app',
    version: process.env.APP_VERSION || '1.0.0',
    env: process.env.NODE_ENV || 'development',
    timestamp: new Date().toISOString()
  }));
});

server.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
