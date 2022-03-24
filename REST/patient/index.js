const serverless = require("serverless-http");
const sequelize = require("./config/sequelize");
require("dotenv").config();
const PORT = process.env.PORT || 4500;
const app = require("./app");
sequelize
  .sync()
  .then((result) => {
    console.log("Sync Done");
  })
  .catch((err) => {
    console.log(err.message);
  });

app.listen(PORT, () => {
  console.log(`Server started on http://localhost:${PORT}/`);
});
// module.exports.handler = serverless(app);
