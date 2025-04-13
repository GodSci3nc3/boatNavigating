const express = require('express');
const cors = require('cors');  // Agregar esta línea
const app = express();
const port = 3000;

// Habilitar CORS para todas las solicitudes
app.use(cors());

app.use(express.json());

let currentIsland = "isla1"; // El barco comienza en la Isla 1

// Ruta para mover el barco
app.post('/move-boat', (req, res) => {
  const { destination } = req.body;
  
  if (!destination) {
    return res.status(400).send("Debe especificar la isla de destino.");
  }

  // Simula el movimiento del barco con un delay
  setTimeout(() => {
    currentIsland = destination;
    console.log(`El barco ha llegado a ${destination}`);
    res.send({ status: "movido", newIsland: destination });
  }, 10000); // 10 segundos de delay

});

app.get('/current-island', (req, res) => {
  res.send({ currentIsland });
});

app.listen(port, () => {
  console.log(`API escuchando en el puerto ${port}`);
});
