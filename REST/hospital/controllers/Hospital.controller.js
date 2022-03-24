const Hospital = require("../models/hospital");
const getAllHospital = async (req, res) => {
  try {
    const hospitals = await hospitals.findAll({});
    return res.json(hospitals);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const postNewHospital = async (req, res) => {
  try {
    const {
      name,
      mobile_number,
      address_line_1,
      address_line_2,
      city,
      pincode,
      license_number,
      doctors,
    } = req.body;
    const errors = [];
    if (
      !name ||
      !mobile_number ||
      !address_line_1 ||
      !city ||
      !pincode ||
      !license_number
    ) {
      errors.push({ message: "Incomplete Information" });
    }

    const hospital = await Hospital.findAll({
      where: {
        license_number,
      },
    });

    if (hospital.length > 0) {
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

    const newHospital = await Hospital.create({
      name,
      mobile_number,
      address_line_1,
      address_line_2,
      city,
      pincode,
      license_number,
      doctors,
    });
    console.log(newHospital);
    return res.json({
      success: true,
      newHospital,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const getHospital = async (req, res) => {
  try {
    const { id } = req.body;
    const hospital = await Hospital.findOne({
      where: {
        id,
      },
    });

    return res.json(hospital);
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const editHospital = async (req, res) => {
  try {
    const {
      name,
      mobile_number,
      address_line_1,
      address_line_2,
      city,
      pincode,
      license_number,
      doctors,
    } = req.body;

    const editedHospital = await Hospital.update(
      {
        name,
        mobile_number,
        address_line_1,
        address_line_2,
        city,
        pincode,
        license_number,
        doctors,
      },
      {
        where: {
          id: req.body.id,
        },
      }
    );
    return res.json({
      success: true,
      editedHospital,
    });
  } catch (error) {
    console.log(error.message);
    return res.send(error);
  }
};
const deleteHospital = async (req, res) => {
  try {
    await Hospital.destroy({
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
  getAllHospital,
  postNewHospital,
  getHospital,
  editHospital,
  deleteHospital,
};
