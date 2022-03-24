const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
require("dotenv").config();
const mongoose = require("mongoose");
const PORT = process.env.PORT || 8000;
const app = express();
const { MONGO_URL } = process.env;
const routes = require("./routes/report.routes");
const methodOverride = require("method-override");
const serverless = require("serverless-http");

var corsOptions = {
  origin: "*",
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  credentials: true,
};
app.use(cors(corsOptions));
app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*"); //Change this later to restrict it to react app only
  res.setHeader(
    "Access-Control-Allow-Methods",
    "GET, POST, PATCH, PUT, DELETE"
  );
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Content-Type, Authorization, x-auth-token, Origin, Accept"
  );
  next();
});
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
app.use(methodOverride("_method"));
//Database Connection
mongoose
  .connect(MONGO_URL, {
    useUnifiedTopology: true,
    useNewUrlParser: true,
  })
  .then(() => console.log("Successful DB connection"))
  .catch((err) => console.error("DB Connection Failed"));

// parse application/json
app.use(bodyParser.json());
app.use("/report", routes);

app.listen(PORT, (req, res) => {
  console.log(`Server is running on Port ${PORT}`);
});
module.exports.handler = serverless(app);
