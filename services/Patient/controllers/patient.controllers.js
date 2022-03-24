const axios = require("axios");

exports.addPatient = async (req, res) => {
  try {
    const {
      NHID,
      name,
      gender,
      height,
      weight,
      dob,
      mobile_number,
      aadhar_number,
      blood_group,
      address,
      emergency_contact_name,
      emergency_contact_number,
      dependant,
      dependee,
    } = req.body;
    console.log(req.body);
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/patient/",
        {
          NHID,
          name,
          gender,
          height,
          weight,
          dob,
          mobile_number,
          aadhar_number,
          blood_group,
          address,
          emergency_contact_name,
          emergency_contact_number,
          dependant,
          dependee,
        }
      )
      .then((response) => {
        console.log(response);
        res.status(200).json({
          status: "Success",
          message: "New Patient Added",
        });
      })
      .catch((error) => {
        res.status(404).json({ status: "Failure", message: "Not Saved" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.getPatientDetails = async (req, res) => {
  try {
    const NHID = req.params.NHID;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/patient/${NHID}`
      )
      .then((response) => {
        res.status(200).json({ status: "Success", data: response });
      })
      .catch((error) => {
        res.status(424).json({ status: "Failed", message: error });
      });
  } catch (error) {
    return res.status(424).json({ status: "Failed", message: error });
  }
};

exports.getPatientMedicalHistory = async (req, res) => {
  try {
    const NHID = req.params.NHID;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/opd?NHID=${NHID}`
      )
      .then((response) => {
        res.status(200).json({ status: "Success", data: response });
      })
      .catch((error) => {
        res.status(424).json({ status: "Failed", message: "Request Failed" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.getPatientMedicinePrescription = async (req, res) => {
  try {
    const prescription_id = req.params.prescriptionID;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/prescription/${prescription_id}`
      )
      .then((response) => {
        res.status(200).json({ status: "Success", data: response });
      })
      .catch((error) => {
        res.status(424).json({ status: "Failed", message: "Request Failed" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.getPatientLabReports = async (req, res) => {
  try {
    const prescription_id = req.params.prescription_id;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/report/${prescription_id}`
      )
      .then((response) => {
        res.status(200).json({ status: "Success", data: response });
      })
      .catch((error) => {
        res.status(424).json({ status: "Failed", message: "Request Failed" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
