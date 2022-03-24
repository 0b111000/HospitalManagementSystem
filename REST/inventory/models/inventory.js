const mongoose = require("mongoose");

const inventorySchema = new mongoose.Schema({
  name: { type: String, required: true },
  quantity: { type: Number, default: 0 },
  consumable: { type: Boolean, default: false },
  hospital_id: { type: String, required: true },
});

module.exports = mongoose.model("Inventory", inventorySchema);
