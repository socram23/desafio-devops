const express = require('express')
const app = express()
const port = 3000;

app.listen(port);
console.log(`Service Node JS running on http://localhost: ${port}`);
app.get('/', (req, res) => {
  const name = process.env.NAME || 'candidate';
  res.send(`Hello ${name}!`);
});
