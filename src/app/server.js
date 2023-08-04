const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(bodyParser.json());
app.use(cors());

// Configurazione di MySQL
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '3892978507Gs@',
  database: 'Ecommerce'
});

// Connettersi al database
db.connect((err) => {
  if (err) throw err;
  console.log('Connesso al database MySQL!');
});

// Endpoint per ottenere dati
app.get('/registrazione', (req, res) => {
  let sql = 'SELECT * FROM registrazione';
  db.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server in esecuzione sulla porta ${PORT}`);
});
