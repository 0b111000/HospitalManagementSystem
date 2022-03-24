const Prescription = require("../models/prescription");

exports.getAllPrescriptions = async (req, res) => {
  try {
    const data = await Prescription.find({});
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
exports.postPrescription = async (req, res) => {
  try {
    const data = req.body;
    const newPrescription = new Prescription(data);
    const prescription = await newPrescription.save();
    if (prescription)
      return res.status(200).json({ status: "Success", data: prescription });
    else
      return res
        .status(424)
        .json({ status: "Failed", message: "Invalid Data" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
exports.getPrescription = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await Prescription.findById(id);
    if (data) return res.status(200).json({ status: "Success", data: data });
    else
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
exports.editPrescription = async (req, res) => {
  try {
    const id = req.params.id;
    const data = req.body;
    const prescription = await Prescription.findByIdAndUpdate(id, data);
    if (prescription)
      return res.status(200).json({ status: "Success", data: prescription });
    else
      return res
        .status(424)
        .json({ status: "Failed", message: "Invalid Data" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
exports.deletePrescription = async (req, res) => {
  try {
    const id = req.params.id;
    const prescription = Prescription.findById(id);
    if (!prescription)
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });

    await Prescription.findByIdAndRemove(id);
    return res
      .status(200)
      .json({ status: "Success", message: "Successfully Deleted" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};

exports.getPrescriptionById = async (req, res) => {
  try {
    const prescription_id = req.params.prescription_id;
    const data = await Prescription.findOne({
      prescription_id: prescription_id,
    });
    if (!data) {
      return res
        .status(424)
        .json({ status: "Failure", message: "Data Does Not Exist" });
    }
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(404)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
