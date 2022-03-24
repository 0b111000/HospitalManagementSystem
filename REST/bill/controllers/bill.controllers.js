const Bill = require("../models/bill");

exports.getAllBill = async (req, res) => {
  try {
    const data = await Bill.find({});
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
exports.postBill = async (req, res) => {
  try {
    const data = req.body;
    const newBill = new Bill(data);
    const bill = await newBill.save();
    if (bill) return res.status(200).json({ status: "Success", data: bill });
    
      return res
        .status(424)
        .json({ status: "Failed", message: "Invalid Data" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
exports.getBill = async (req, res) => {
  try {
    const prescription_id = req.params.prescription_id;
    const data = await Bill.findOne({ prescription_id: prescription_id });
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
exports.editBill = async (req, res) => {
  try {
    const id = req.params.id;
    const data = req.body;
    const bill = await Bill.findAndUpdate({prescription_id: id, data});
    if (bill) return res.status(200).json({ status: "Success", data: bill });
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
exports.deleteBill = async (req, res) => {
  try {
    const id = req.params.id;
    const bill = Bill.findById(id);
    if (!bill)
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });

    await Bill.findByIdAndRemove(id);
    return res
      .status(200)
      .json({ status: "Success", message: "Successfully Deleted" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
