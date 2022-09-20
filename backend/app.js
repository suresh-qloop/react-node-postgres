const express = require("express");
const cors = require("cors");

const articlesRoutes = require("./src/article/routes");

const app = express();
const port = 3001;

app.use(cors());
app.use(express.json());

app.use(articlesRoutes);

app.listen(port, () => {
  console.log(`app listening on port ${port}`);
});
