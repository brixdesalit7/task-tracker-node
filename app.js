const express = require("express");
const db = require("./config/db.js");
const cors = require("cors");
const app = express();

const indexRoute = require("./routes/index.js");

app.use(cors());
app.use(express.json());

app.use("/api", indexRoute);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});