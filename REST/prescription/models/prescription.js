const mongoose = require("mongoose");

const prescriptionSchema = new mongoose.Schema({
  prescription_id: { type: Number, required: true },
  timestamp: { type: Date, default: Date.now() },
  medicines: { type: Array, default: [] },
  lab_tests: { type: Array, default: [] },
  follow_up: { type: Date },
});

module.exports = mongoose.model("Prescription", prescriptionSchema);
