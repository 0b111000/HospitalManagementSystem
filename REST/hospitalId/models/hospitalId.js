const { Sequelize, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const HospitalId = sequelize.define(
  "HospitalId",
  {
    id: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
    secret: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    name: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

module.exports = HospitalId;
