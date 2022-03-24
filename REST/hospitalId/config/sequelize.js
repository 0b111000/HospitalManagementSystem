const { Sequelize } = require("sequelize");

const { DB_HOST, DB_USER, DB_PASS, DB_DATABASE, DB_PORT } = process.env;

const sequelize = new Sequelize(DB_DATABASE, DB_USER, DB_PASS, {
  host: DB_HOST,
  dialect: "mysql",
  port: DB_PORT,
});

module.exports = sequelize;
