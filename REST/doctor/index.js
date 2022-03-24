const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const Sequelize = require("sequelize");
const bodyParser = require("body-parser");
const serverless = require("serverless-http");
require("dotenv").config();
const app = express();

const PORT = process.env.PORT || 8000;
const methodOverride = require("method-override");
app.use(methodOverride("_method"));

const sequelize = require("./config/sequelize");

const corsOptions = {
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

app.use(morgan("dev"));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
sequelize
  .sync({
    force: true,
  })
  .then((result) => {
    console.log("Sync Done");
  })
  .catch((err) => {
    console.log(err.message);
  });

const Routes = require("./routes/doctor.routes");
app.use("/doctor", Routes);

app.listen(PORT, () => {
  console.log(`Server started on http://localhost:${PORT}/`);
});

module.exports.handler = serverless(app);
