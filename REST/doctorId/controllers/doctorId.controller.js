const DoctorId = require("../models/doctorId");

const getAllDoctorId = async (req, res) => {
  try {
    const doctorid = await DoctorId.findAll({});
    return res.json(doctorid);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};

const postNewDoctorId = async (req, res) => {
  try {
    const { id, secret, name } = req.body;
    const errors = [];
    if (!id || !secret) {
      errors.push({ message: "Incomplete Information" });
    }
    const doctorid = await DoctorId.findAll({
      where: {
        id,
      },
    });

    if (doctorid.length > 0) {
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
    const newDoctorId = await DoctorId.create({
      id,
      secret,
      name,
    });
    console.log(newDoctorId);
    return res.json({
      success: true,
      newDoctorId,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};

const getDoctorId = async (req, res) => {
  try {
    const { id } = req.body;
    const doctorId = await DoctorId.findOne({
      where: {
        id,
      },
    });

    return res.json(doctorId);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};

const editDoctorId = async (req, res) => {
  try {
    const { secret, name } = req.body;

    const editedDoctorId = await DoctorId.update(
      {
        secret,
        name,
      },
      {
        where: {
          id: req.body.id,
        },
      }
    );

    console.log(editedDoctorId);

    return res.json({
      Success: true,
      editedDoctorId,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};

const deleteDoctorId = async (req, res) => {
  try {
    await DoctorId.destroy({
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
  getAllDoctorId,
  postNewDoctorId,
  getDoctorId,
  editDoctorId,
  deleteDoctorId,
};
