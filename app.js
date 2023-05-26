const express = require('express');
const path = require('path');
const frontendDir = path.join(__dirname, 'frontend');

const app = express();

app.use(express.static(frontendDir));
app.use('/api', require('./backend/server'));

const port = 8000;
app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
