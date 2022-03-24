const mongoose = require("mongoose");

const billSchema = new mongoose.Schema({
  prescription_id: { type: String, required: true },
  bill_id: { type: String, required: true },
  patient_name: { type: String, required: true },
  patient_contact: { type: String, required: true },
  bill_items: { type: Array, default: [] },
});

module.exports = mongoose.model("Bill", billSchema);
