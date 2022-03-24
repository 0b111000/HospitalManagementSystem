const { Sequelize, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const Hospital = sequelize.define(
  "Hospital",
  {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
    },
    mobile_number: {
      type: DataTypes.STRING,
    },
    address_line_1: {
      type: DataTypes.STRING,
    },
    address_line_2: {
      type: DataTypes.STRING,
    },
    city: {
      type: DataTypes.STRING,
    },
    pincode: {
      type: DataTypes.STRING,
    },
    license_number: {
      type: DataTypes.STRING,
      unique: true,
    },
    doctors: {
      // type: DataTypes.ARRAY(DataTypes.JSON),
      type: DataTypes.JSON,
    },
    isMultiChain: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
    },
    chain: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

module.exports = Hospital;
