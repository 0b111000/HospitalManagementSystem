const OPD = require("../models/opd");

exports.getAllOPD = async (req, res) => {
  try {
    const data = await OPD.find({});
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
exports.postOPD = async (req, res) => {
  try {
    const data = req.body;
    const newOPD = new OPD(data);
    const opd = await newOPD.save();
    if (opd) return res.status(200).json({ status: "Success", data: opd });
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
exports.getOPD = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await OPD.findById(id);
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
exports.editOPD = async (req, res) => {
  try {
    const id = req.params.id;
    const data = req.body;
    const opd = await OPD.findByIdAndUpdate(id, data);
    if (opd) return res.status(200).json({ status: "Success", data: opd });
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
exports.deleteOPD = async (req, res) => {
  try {
    const id = req.params.id;
    const opd = OPD.findById(id);
    if (!opd)
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });

    await OPD.findByIdAndRemove(id);
    return res
      .status(200)
      .json({ status: "Success", message: "Successfully Deleted" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
