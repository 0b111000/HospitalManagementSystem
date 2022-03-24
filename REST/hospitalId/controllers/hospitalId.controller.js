const HospitalId = require("../models/hospitalId");
const getAllHospitalId = async (req, res) => {
  try {
    const hospitalid = await HospitalId.findAll({});
    return res.json(hospitalid);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const postNewHospitalId = async (req, res) => {
  try {
    const { id, secret, name } = req.body;
    const errors = [];
    if (!id || !secret) {
      errors.push({ message: "Incomplete Information" });
    }

    const hospitalid = await HospitalId.findAll({
      where: {
        id,
      },
    });
    if (hospitalid.length > 0) {
      errors.push({
        msg: "ID already exists",
      });
    }
    if (errors.length >= 1) {
      return res.json({
        Success: false,
        errors,
      });
    }
    const newHospitalId = await HospitalId.create({
      id,
      secret,
      name,
    });
    return res.json({
      success: true,
      newHospitalId,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const getHospitalId = async (req, res) => {
  try {
    const { id } = req.body;
    const hospitalId = await HospitalId.findOne({
      where: {
        id,
      },
    });
    return res.json(hospitalId);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const editHospitalId = async (req, res) => {
  try {
    const { secret, name, id } = req.body;
    const editedHospitalId = await HospitalId.update(
      {
        secret,
        name,
      },
      {
        where: {
          id,
        },
      }
    );
    return res.json({
      Success: true,
      editedHospitalId,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const deleteHospitalId = async (req, res) => {
  try {
    await HospitalId.destroy({
      where: {
        id: req.body.id,
      },
    });
    return res.json({
      success: true,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
module.exports = {
  getAllHospitalId,
  postNewHospitalId,
  getHospitalId,
  editHospitalId,
  deleteHospitalId,
};
