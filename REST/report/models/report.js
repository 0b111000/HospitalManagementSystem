const mongoose = require("mongoose");

const reportSchema = new mongoose.Schema({
  prescription_id: { type: Number, required: true },
  report: { type: Array, default: [] },
});

module.exports = mongoose.model("Report", reportSchema);
