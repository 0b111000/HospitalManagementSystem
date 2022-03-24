const Report = require("../models/report");
const { route } = require("../routes/report.routes");

exports.getAllReport = async (req, res) => {
  try {
    const data = await Report.find({});
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
exports.postReport = async (req, res) => {
  try {
    const data = req.body;
    const newReport = new Report(data);
    const report = await newReport.save();
    if (report)
      return res.status(200).json({ status: "Success", data: report });
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
exports.getReport = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await Report.findById(id);
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
exports.editReport = async (req, res) => {
  try {
    const id = req.params.id;
    const data = req.body;
    const report = await Report.findByIdAndUpdate(id, data);
    if (report)
      return res.status(200).json({ status: "Success", data: report });
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
exports.deleteReport = async (req, res) => {
  try {
    const id = req.params.id;
    const report = Report.findById(id);
    if (!report)
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });

    await Report.findByIdAndRemove(id);
    return res
      .status(200)
      .json({ status: "Success", message: "Successfully Deleted" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};

exports.getReportByPrescriptionId = async (req, res) => {
  try {
    const prescription_id = req.params.prescription_id;
    const data = await Report.findOne({ prescription_id: prescription_id });
    if (!data) {
      return res
        .status(424)
        .json({ status: "Failure", message: "Data Does Not Exist" });
    }
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res.status(404).json({ status: "Failure", message: error.message });
  }
};
