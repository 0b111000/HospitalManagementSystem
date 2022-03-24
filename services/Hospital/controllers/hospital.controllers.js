const axios = require("axios");

exports.getHospital = (req, res) => {
  try {
    const id = req.params.id;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/hospital/${id}`
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

exports.getBillDetails = (req, res) => {
  try {
    const prescription_id = req.params.prescription_id;
    axios
      .get(
        `https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/bill/${prescription_id}`
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

exports.addHospital = async (req, res) => {
  try {
    const {
      name,
      id,
      doctors,
      contact_number,
      timings,
      address,
      is_multi_chain,
      chain_name,
    } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/hospital/",
        {
          name,
          id,
          doctors,
          contact_number,
          timings,
          address,
          is_multi_chain,
          chain_name,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "New Hospital Added",
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

exports.HospitalLogin = (req, res) => {
  try {
    const { hospital_id, secret_phase, hospital_name } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/hospitalid/",
        {
          hospital_id,
          secret_phase,
          hospital_name,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "Hospital Login",
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

exports.addBillDetails = (req, res) => {
  try {
    const {
      prescription_id,
      bill_id,
      patient_name,
      patient_contact,
      bill_items,
    } = req.body;
    axios
      .post(
        "https://5s017in2z5.execute-api.ap-south-1.amazonaws.com/dev/bill/",
        {
          prescription_id,
          bill_id,
          patient_name,
          patient_contact,
          bill_items,
        }
      )
      .then((response) => {
        res.status(200).json({
          status: "Success",
          message: "New Bill Added",
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
