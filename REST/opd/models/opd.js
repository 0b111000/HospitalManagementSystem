const mongoose = require("mongoose");

const opdSchema = new mongoose.Schema({
  appointment_id: { type: Number, required: true },
  NHID: { type: Number, require: true },
  name: { type: String, required: true },
  timestamp: { type: Date, default: Date.now() },
  hospital: { type: Number, required: true },
  docid: { type: Number, required: true },
  opd_status: { type: String, default: "Registered" },
  diagnosis_details: { type: String },
  medical_inferences: { type: String },
  prescription: { type: Array, default: [] },
  lab_reports: { type: Array, default: [] },
  referal: { type: Array, default: [] },
});

module.exports = mongoose.model("OPD", opdSchema);
