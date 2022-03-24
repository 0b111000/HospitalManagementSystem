const { Sequelize, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const Patient = sequelize.define(
  "Patient",
  {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    nhid: {
      type: DataTypes.STRING,
      unique: true,
    },
    name: {
      type: DataTypes.STRING,
    },
    gender: {
      type: DataTypes.STRING,
    },
    weight: {
      type: DataTypes.STRING,
    },
    height: {
      type: DataTypes.STRING,
    },
    dob: {
      type: DataTypes.STRING,
    },
    mobile_number: {
      type: DataTypes.STRING,
    },
    aadhaar: {
      type: DataTypes.STRING,
    },
    blood_group: {
      type: DataTypes.STRING,
    },
    address: {
      type: DataTypes.STRING,
    },
    pincode: {
      type: DataTypes.INTEGER,
    },
    emergency_contact_name: {
      type: DataTypes.STRING,
    },
    emergency_contact_number: {
      type: DataTypes.STRING,
    },
    dependant: {
      type: DataTypes.BOOLEAN,
    },
    dependee: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

module.exports = Patient;
