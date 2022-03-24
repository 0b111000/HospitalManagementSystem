const Doctor = require("../models/doctor");
const getAllDoctor = async (req, res) => {
  try {
    const doctors = await Doctor.findAll({});
    return res.json(doctors);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const postNewDoctor = async (req, res) => {
  try {
    const { license, name, education, years_of_experience, hospital, contact } =
      req.body;
    const errors = [];
    if (
      !license ||
      !name ||
      !education ||
      !years_of_experience ||
      !hospital ||
      !contact
    ) {
      errors.push({ message: "Incomplete Information" });
    }

    const doctor = await Doctor.findAll({
      where: {
        license,
      },
    });

    if (doctor.length > 0) {
      errors.push({
        msg: "License Number Already exists",
      });
    }

    if (errors.length >= 1) {
      return res.json({
        Success: false,
        errors,
      });
    }

    const newDoctor = await Doctor.create({
      license,
      name,
      education,
      years_of_experience,
      hospital,
      contact,
    });
    return res.json({
      success: true,
      newDoctor,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const getDoctor = async (req, res) => {
  try {
    const { id } = req.params.id;
    const doctor = await Doctor.findOne({
      where: {
        id,
      },
    });
    return res.json(doctor);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const editDoctor = async (req, res) => {
  try {
    const { license, name, education, years_of_experience, hospital, contact } =
      req.body;

    const editedDoctor = await Doctor.update(
      {
        license,
        name,
        education,
        years_of_experience,
        hospital,
        contact,
      },
      {
        where: {
          id: req.body.id,
        },
      }
    );

    return res.json({
      success: true,
      editedDoctor,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const deleteDoctor = async (req, res) => {
  try {
    await Doctor.destroy({
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

getDoctorByDocID = async (req, res) => {
  try {
    const { id } = req.params.docid;
    const doctor = await Doctor.findOne({
      where: {
        id,
      },
    });
    return res.json(doctor);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
module.exports = {
  getAllDoctor,
  postNewDoctor,
  getDoctor,
  editDoctor,
  deleteDoctor,
  getDoctorByDocID,
};
