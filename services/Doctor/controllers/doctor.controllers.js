const axios = require("axios");

exports.getDoctor = (req, res) => {
  try {
    const docid = req.params.docid;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/doctor/${docid}`
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

exports.addDoctor = async (req, res) => {
  try {
    const {
      id,
      license,
      name,
      education,
      years_of_experience,
      hospital,
      contact_number,
    } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/doctor/",
        {
          id,
          license,
          name,
          education,
          years_of_experience,
          hospital,
          contact_number,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "New Doctor Added",
          data: response,
        });
      })
      .catch((error) => {
        res
          .status(404)
          .json({ status: "Failure", message: "Error in Saving data" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.DoctorLogin = (req, res) => {
  try {
    const { docid, secret_phase, name } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/doctorid/",
        {
          docid,
          secret_phase,
          name,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "Doctor Login",
          data: response,
        });
      })
      .catch((error) => {
        res
          .status(404)
          .json({ status: "Failure", message: "Error in Saving data" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.prescribe = (req, res) => {
  try {
    var NHID = req.params.NHID;
    const { timestamp, medicines, lab_tests, followup } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/prescription/",
        {
          NHID,
          timestamp,
          medicines,
          lab_tests,
          followup,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "New Prescription Added",
          data: response,
        });
      })
      .catch((error) => {
        res
          .status(404)
          .json({ status: "Failure", message: "Error in Saving data" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};

exports.labtest = (req, res) => {
  try {
    var NHID = req.params.NHID;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/report/",
        {
          NHID,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "New Lab Report Added",
          data: response,
        });
      })
      .catch((error) => {
        res
          .status(404)
          .json({ status: "Failure", message: "Error in Saving data" });
      });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
