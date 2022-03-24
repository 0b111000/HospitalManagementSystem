const { Sequelize, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const Doctor = sequelize.define(
  "Doctor",
  {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    license: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false,
    },
    name: {
      type: DataTypes.STRING,
    },
    education: {
      type: DataTypes.STRING,
    },
    years_of_experience: {
      type: DataTypes.INTEGER,
    },
    hospital: {
      type: DataTypes.JSON,
    },
    contact_number: {
      type: DataTypes.NUMBER,
    },
    contact_mailid: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

module.exports = Doctor;
