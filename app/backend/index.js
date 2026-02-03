const express = require('express');
const app = express();

app.get('/health', (req, res) => {
  res.status(200).send({ status: 'ok' });
});

app.get('/', (req, res) => {
  res.send('Hello from Kubernetes DevOps app!');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`App running on port ${PORT}`);
});
