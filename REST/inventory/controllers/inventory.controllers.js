const Inventory = require("../models/inventory");

exports.getAllInventory = async (req, res) => {
  try {
    const data = await Inventory.find({});
    return res.status(200).json({ status: "Success", data: data });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request Failed" });
  }
};
exports.postInventory = async (req, res) => {
  try {
    const data = req.body;
    const newInventory = new Inventory(data);
    const inventory = await newInventory.save();
    if (inventory)
      return res.status(200).json({ status: "Success", data: inventory });
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
exports.getInventory = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await Inventory.findById(id);
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
exports.editInventory = async (req, res) => {
  try {
    const id = req.params.id;
    const data = req.body;
    const inventory = await Inventory.findByIdAndUpdate(id, data);
    if (inventory)
      return res.status(200).json({ status: "Success", data: inventory });
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
exports.deleteInventory = async (req, res) => {
  try {
    const id = req.params.id;
    const inventory = Inventory.findById(id);
    if (!inventory)
      return res
        .status(424)
        .json({ status: "Failed", message: "Does Not Exist" });

    await Inventory.findByIdAndRemove(id);
    return res
      .status(200)
      .json({ status: "Success", message: "Successfully Deleted" });
  } catch (error) {
    return res
      .status(424)
      .json({ status: "Failed", message: "Request failed" });
  }
};
