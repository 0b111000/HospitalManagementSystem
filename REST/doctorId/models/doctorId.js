// const { Sequelize, DataTypes } = require("sequelize");
// const sequelize = require("../config/sequelize");

// const DoctorId = sequelize.define(
//   "DoctorId",
//   {
//     id: {
//       type: String,
//       primaryKey: true,
//     },
//     secret: {
//       type: String,
//       allowNull: false,
//     },
//     name: {
//       type: String,
//     },
//   },
//   { freezeTableName: true }
// );

// module.exports = DoctorId;

const { Sequelize, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const DoctorId = sequelize.define(
  "DoctorId",
  {
    id: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false,
      primaryKey: true,
    },

    secret: {
      type: DataTypes.STRING,
    },

    name: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);
